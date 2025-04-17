#include "llvm/IR/PassManager.h"
#include "llvm/IR/Instructions.h"
#include "llvm/Support/raw_ostream.h"
#include "llvm/Passes/PassPlugin.h"
#include "llvm/Passes/PassBuilder.h"
#include <map>
#include <string>

using namespace llvm;

namespace {
class ConstantPropagationPass : public PassInfoMixin<ConstantPropagationPass> {
public:
    PreservedAnalyses run(Function &F, FunctionAnalysisManager &AM) {
        llvm::errs() << "Constant Propagation Pass running on Function: " << F.getName() << "\n";

        // Variable map to track values (in a simple form, no analysis)
        std::map<std::string, Constant*> varValues;

        // Initialize the variables with undefined values
        varValues["a"] = nullptr;
        varValues["b"] = nullptr;
        varValues["c"] = nullptr;
        varValues["d"] = nullptr;

        bool changed;
        do {
            changed = false;

            // Iterate through the basic blocks
            for (auto &BB : F) {
                // Print IN set (variables before the block)
                llvm::errs() << "Basic Block #" << BB.getName() << " (IN): { ";
                for (const auto &var : varValues) {
                    llvm::errs() << var.first << " = ";
                    if (var.second) {
                        var.second->print(llvm::errs());
                    } else {
                        llvm::errs() << "UNDEFINED";
                    }
                    llvm::errs() << ", ";
                }
                llvm::errs() << "}\n";

                // Create OUT set (copy from IN set)
                std::map<std::string, Constant*> outSet = varValues;

                // Iterate over instructions in the block
                for (auto &I : BB) {
                    if (auto *allocaInst = dyn_cast<AllocaInst>(&I)) {
                        // Ignore alloca instructions
                        continue;
                    }

                    if (auto *storeInst = dyn_cast<StoreInst>(&I)) {
                        // Handle store instruction (variable assignment)
                        if (auto *storedVal = dyn_cast<Constant>(storeInst->getValueOperand())) {
                            if (auto *allDest = dyn_cast<AllocaInst>(storeInst->getPointerOperand())) {
                                std::string varName = allDest->getName().str();
                                outSet[varName] = storedVal;
                                changed = true; // Mark as changed
                            }
                        }
                    }

                    if (auto *loadInst = dyn_cast<LoadInst>(&I)) {
                        // Handle load instruction (variable read)
                        if (auto *allDest = dyn_cast<AllocaInst>(loadInst->getPointerOperand())) {
                            std::string varName = allDest->getName().str();
                            if (outSet.find(varName) != outSet.end()) {
                                // Use the stored value from IN set if present
                                outSet[varName] = outSet[varName];
                                changed = true; // Mark as changed
                            }
                        }
                    }
                }

                // Print OUT set (variables after the block)
                llvm::errs() << "Basic Block #" << BB.getName() << " (OUT): { ";
                for (const auto &var : outSet) {
                    llvm::errs() << var.first << " = ";
                    if (var.second) {
                        var.second->print(llvm::errs());
                    } else {
                        llvm::errs() << "UNDEFINED";
                    }
                    llvm::errs() << ", ";
                }
                llvm::errs() << "}\n";

                varValues = outSet;  // Update OUT set for the block
            }

        } while (changed);  // Continue until no changes occur

        llvm::errs() << "Constant propagation analysis complete for function: " << F.getName() << "\n";
        return PreservedAnalyses::all();
    }
};
} // namespace

// Register the pass with the LLVM framework
extern "C" LLVM_ATTRIBUTE_WEAK PassPluginLibraryInfo llvmGetPassPluginInfo() {
    return {LLVM_PLUGIN_API_VERSION, "ConstantPropagationPass", LLVM_VERSION_STRING,
            [](PassBuilder &PB) {
                PB.registerPipelineParsingCallback(
                    [](StringRef Name, FunctionPassManager &FPM,
                       ArrayRef<PassBuilder::PipelineElement>) {
                        if (Name == "constant-propagation-pass") {
                            FPM.addPass(ConstantPropagationPass());
                            return true;
                        }
                        return false;
                    });
            }};
}
