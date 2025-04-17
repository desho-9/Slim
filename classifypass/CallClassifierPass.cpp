#include "llvm/IR/PassManager.h"
#include "llvm/IR/Module.h"
#include "llvm/IR/Function.h"
#include "llvm/IR/Instructions.h"
#include "llvm/Support/raw_ostream.h"
#include "llvm/Passes/PassBuilder.h"
#include "llvm/Passes/PassPlugin.h"

using namespace llvm;

namespace {
struct CallClassifierPass : public PassInfoMixin<CallClassifierPass> {
    PreservedAnalyses run(Module &M, ModuleAnalysisManager &) {
        int directCalls = 0;
        int indirectCalls = 0;

        for (Function &F : M) {
            for (BasicBlock &BB : F) {
                for (Instruction &I : BB) {
                    if (auto *call = dyn_cast<CallBase>(&I)) {
                        if (call->getCalledFunction()) {
                            directCalls++;
                        } else {
                            indirectCalls++;
                        }
                    }
                }
            }
        }

        // Output table format
        std::string moduleName = M.getName().str();
        if (moduleName.empty())
            moduleName = "(anonymous)";

        outs() << "Program Name       #Direct Calls    #Indirect Calls\n";
        outs() << "---------------------------------------------------\n";
        outs() << moduleName;
        outs().indent(std::max(1, 20 - (int)moduleName.length()));
        outs() << directCalls;
        outs().indent(18) << indirectCalls << "\n";

        return PreservedAnalyses::all();
    }
};
} // namespace

// Register for 'opt' via new pass manager plugin
extern "C" LLVM_ATTRIBUTE_WEAK ::llvm::PassPluginLibraryInfo llvmGetPassPluginInfo() {
    return {
        LLVM_PLUGIN_API_VERSION,
        "CallClassifierPass",
        LLVM_VERSION_STRING,
        [](PassBuilder &PB) {
            PB.registerPipelineParsingCallback(
                [](StringRef Name, ModulePassManager &MPM,
                   ArrayRef<PassBuilder::PipelineElement>) {
                    if (Name == "classify-calls") {
                        MPM.addPass(CallClassifierPass());
                        return true;
                    }
                    return false;
                });
        }};
}
