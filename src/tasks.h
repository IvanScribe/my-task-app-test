// tasks.h - This defines what a task is
#if !defined TASK_H
#define TASKS_H

#include <time.h>


struct Task {
    int id;
    char description[256];
    int completed;
    time_t due_date;
    int has_due_date;
};

// Function declarations (what program "can do")
void add_task(const char* description);
void list_tasks();
void complete_task(int id);
void save_tasks_to_file();
void load_tasks_from_file();

#endif