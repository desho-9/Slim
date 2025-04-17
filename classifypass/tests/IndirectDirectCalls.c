#include <stdio.h>
#include <stdlib.h>
#include <string.h>

void log_message(const char *msg) {
    printf("Log: %s\n", msg);
}

void error_message(const char *msg) {
    printf("Error: %s\n", msg);
}

int compute_sum(int a, int b) {
    return a + b;
}

int compute_product(int a, int b) {
    return a * b;
}

typedef int (*operation_func)(int, int); // function pointer type

struct Task {
    char name[20];
    operation_func op;
    int arg1;
    int arg2;
};

int main() {
    // Direct calls
    log_message("Program started");

    struct Task *tasks = malloc(3 * sizeof(struct Task)); // direct
    if (!tasks) {
        error_message("Memory allocation failed");
        return 1;
    }

    strcpy(tasks[0].name, "Addition");
    tasks[0].op = compute_sum;
    tasks[0].arg1 = 5;
    tasks[0].arg2 = 3;

    strcpy(tasks[1].name, "Multiplication");
    tasks[1].op = compute_product;
    tasks[1].arg1 = 4;
    tasks[1].arg2 = 6;

    strcpy(tasks[2].name, "Error");
    tasks[2].op = NULL;

    for (int i = 0; i < 3; i++) {
        printf("Task: %s\n", tasks[i].name);

        // Indirect call via function pointer
        if (tasks[i].op) {
            int result = tasks[i].op(tasks[i].arg1, tasks[i].arg2);
            printf("Result: %d\n", result);
        } else {
            error_message("Null function pointer");
        }

        // Direct call in loop
        log_message("Task processed");
    }

    free(tasks); // direct

    log_message("Program ended"); // direct
    return 0;
}
