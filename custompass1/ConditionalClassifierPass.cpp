#include "llvm/IR/PassManager.h"
#include "llvm/IR/Function.h"
#include "llvm/IR/Instructions.h"
#include "llvm/Passes/PassPlugin.h"
#include "llvm/Passes/PassBuilder.h"

using namespace llvm;

namespace {
  class ConditionalClassifierPass : public PassInfoMixin<ConditionalClassifierPass> {
  public:
    PreservedAnalyses run(Function &F, FunctionAnalysisManager &) {
      int conditionalCount = 0;
      int nonConditionalCount = 0;

      for (auto &B : F) {
        for (auto &I : B) {
          if (isa<ICmpInst>(I) || isa<BranchInst>(I)) {
            ++conditionalCount;
            errs() << "Conditional instruction found: " << I << "\n";
          } else {
            ++nonConditionalCount;
            errs() << "Non-conditional instruction found: " << I << "\n";
          }
        }
      }

      errs() << "Total conditional instructions: " << conditionalCount << "\n";
      errs() << "Total non-conditional instructions: " << nonConditionalCount << "\n";

      return PreservedAnalyses::all();
    }
  };
}

extern "C" LLVM_ATTRIBUTE_WEAK ::llvm::PassPluginLibraryInfo llvmGetPassPluginInfo() {
  return {
    LLVM_PLUGIN_API_VERSION, "ConditionalClassifierPass", LLVM_VERSION_STRING,
    [](PassBuilder &PB) {
      PB.registerPipelineParsingCallback(
        [](StringRef Name, FunctionPassManager &FPM, ArrayRef<PassBuilder::PipelineElement>) {
          if (Name == "conditional-classifier-pass") {
            FPM.addPass(ConditionalClassifierPass());
            return true;
          }
          return false;
        }
      );
    }
  };
}
