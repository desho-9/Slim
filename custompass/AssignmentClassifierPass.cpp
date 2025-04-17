#include "llvm/IR/Function.h"
#include "llvm/IR/Instructions.h"
#include "llvm/Pass.h"
#include "llvm/Support/raw_ostream.h"
#include "llvm/Passes/PassBuilder.h"
#include "llvm/Passes/PassPlugin.h"

using namespace llvm;

namespace {

// Define the pass for the new pass manager
class AssignmentClassifierPass : public PassInfoMixin<AssignmentClassifierPass> {
public:
    PreservedAnalyses run(Function &F, FunctionAnalysisManager &FAM) {
    if (F.hasFnAttribute(Attribute::OptimizeNone)) {
        F.removeFnAttr(Attribute::OptimizeNone);
    }
    errs() << "Assignment Classifier Pass running on Function: " << F.getName() << "\n";


        errs() << "Assignment Classifier Pass (New PM) running on Function: " << F.getName() << "\n";
        errs().flush();

        for (auto &BB : F) {
            for (auto &I : BB) {
                if (isAssignmentInstruction(I)) {
                    errs() << "Assignment instruction found: " << I << "\n";
                } else {
                    errs() << "Non-assignment instruction found: " << I << "\n";
                }
                errs().flush();
            }
        }
        return PreservedAnalyses::none();
    }

private:
    bool isAssignmentInstruction(Instruction &I) {
        return isa<StoreInst>(I) || isa<AllocaInst>(I) || isa<BinaryOperator>(I);
    }
};

} // namespace

// Register the pass with the new pass manager
llvm::PassPluginLibraryInfo getAssignmentClassifierPassPluginInfo() {
    return {
        LLVM_PLUGIN_API_VERSION,       // LLVM Plugin API Version
        "AssignmentClassifierPass",    // Plugin name
        LLVM_VERSION_STRING,           // LLVM version
        [](PassBuilder &PB) {
            PB.registerPipelineParsingCallback(
                [](StringRef Name, FunctionPassManager &FPM, ArrayRef<PassBuilder::PipelineElement>) {
                    if (Name == "assignment-classifier-pass") {
                        FPM.addPass(AssignmentClassifierPass());
                        return true;
                    }
                    return false;
                });
        }
    };
}

// Entry point for the pass plugin
extern "C" LLVM_ATTRIBUTE_WEAK ::llvm::PassPluginLibraryInfo llvmGetPassPluginInfo() {
    return getAssignmentClassifierPassPluginInfo();
}
