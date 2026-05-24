# Codex Automation Prompts

Copy these prompts into Codex Automations after this package has been placed in the project repository.

## Automation 1: Tuesday Pre-Meeting Report

Recommended schedule: every Tuesday at 12:00 Europe/Berlin.

```text
Use $ibra-progress-manager.

This is the Tuesday pre-meeting progress submission for the Software Lab IBRA project.

Read:
- project_progress/task_tree.yaml
- project_progress/weekly_cycle.yaml
- project_progress/natural_language_inbox.md
- project_progress/progress_log.md
- project_progress/risk_and_blockers.md
- source code and documentation evidence in the repository

Tasks:
1. Parse all new natural language updates.
2. Update task_tree.yaml based on evidence and user updates.
3. Generate project_progress/meeting_report.md for this afternoon's group meeting.
4. Summarize last week's progress under the two main workstreams:
   - WS1: STEP file reading and conversion
   - WS2: KRATOS format alignment and KRATOS analysis
5. Identify blocked, delayed, or unclear tasks.
6. Generate questions that should be raised in the group meeting.
7. Do not mark tasks as done unless definition_of_done and evidence are both satisfied.

Output requirements:
- Keep the meeting report concise and suitable for a weekly Software Lab group meeting.
- Include a short English spoken update.
- Include a Chinese internal planning summary.
- Write all file changes in a worktree for review.
```

## Automation 2: Tuesday Post-Meeting Planning

Recommended schedule: every Tuesday at 18:30 Europe/Berlin.

Before this automation runs, add the meeting notes to `project_progress/natural_language_inbox.md`.

```text
Use $ibra-progress-manager.

This is the Tuesday post-meeting task arrangement update for the Software Lab IBRA project.

Read:
- project_progress/natural_language_inbox.md
- project_progress/meeting_report.md
- project_progress/task_tree.yaml
- project_progress/risk_and_blockers.md

Tasks:
1. Parse the latest meeting notes from natural_language_inbox.md.
2. Update next week's task arrangement in project_progress/next_week_plan.md.
3. Update task_tree.yaml:
   - add new tasks if needed,
   - modify due dates if needed,
   - update blockers,
   - update priorities,
   - keep all changes within WS1 or WS2.
4. Append important decisions to project_progress/change_log.md.
5. Add unresolved supervisor questions to risk_and_blockers.md or next_week_plan.md.

Rules:
- Preserve the two-workstream structure.
- Do not delete old tasks unless explicitly requested.
- If a task is no longer relevant, mark it as deferred and explain why.
- Do not invent meeting decisions.
```

## Automation 3: Saturday Progress Push

Recommended schedule: every Saturday at 10:00 Europe/Berlin.

```text
Use $ibra-progress-manager.

This is the Saturday progress push for the Software Lab IBRA project.

Read:
- project_progress/task_tree.yaml
- project_progress/next_week_plan.md
- project_progress/progress_log.md
- project_progress/natural_language_inbox.md
- project_progress/risk_and_blockers.md

Tasks:
1. Check the tasks planned for the current week.
2. Identify tasks with no meaningful progress since Tuesday.
3. Identify tasks that are at risk before next Tuesday's group meeting.
4. Generate project_progress/saturday_push.md.
5. Recommend concrete weekend actions for each workstream:
   - WS1: STEP file reading and conversion
   - WS2: KRATOS format alignment and KRATOS analysis
6. If natural_language_inbox.md contains new updates, parse them and update task_tree.yaml.
7. Add newly discovered blockers to risk_and_blockers.md.

Output requirements:
- Be direct and action-oriented.
- Separate urgent tasks from optional improvements.
- Do not create guilt-based reminders.
- Focus on the next smallest useful action.
```
