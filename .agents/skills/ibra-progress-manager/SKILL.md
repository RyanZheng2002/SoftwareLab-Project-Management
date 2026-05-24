---
name: ibra-progress-manager
description: Use this skill when managing the Software Lab IBRA project progress, parsing natural language updates, updating task status, preparing Tuesday group meeting reports, arranging next week's tasks, or generating Saturday progress push reminders.
---

# Purpose

Manage the Software Lab IBRA project progress system.

The project has two top-level workstreams only:

1. `WS1`: STEP file reading and conversion
2. `WS2`: KRATOS format alignment and KRATOS analysis

Do not create additional top-level workstreams unless explicitly requested.

# Required Files

Always inspect when available:

- `project_progress/project_config.yaml`
- `project_progress/task_tree.yaml`
- `project_progress/weekly_cycle.yaml`
- `project_progress/natural_language_inbox.md`
- `project_progress/progress_log.md`
- `project_progress/risk_and_blockers.md`
- `project_progress/meeting_report.md`
- `project_progress/next_week_plan.md`
- `project_progress/change_log.md`
- `project_progress/saturday_push.md`

# Core Responsibilities

1. Maintain the task tree.
2. Parse natural language updates.
3. Update task status based on evidence.
4. Generate Tuesday meeting reports.
5. Generate next-week task arrangements.
6. Generate Saturday progress push reports.
7. Track blockers and risks.
8. Preserve project history.

# Status Rules

Use only these status labels:

- `not_started`
- `in_progress`
- `blocked`
- `needs_review`
- `done`
- `deferred`

A task can only be marked as `done` when:

1. Its `definition_of_done` is satisfied.
2. Evidence exists in the repository or project notes.
3. There is no unresolved blocker directly preventing completion.

If uncertain, use `needs_review` or `in_progress` instead of `done`.

# Natural Language Update Workflow

When `natural_language_inbox.md` contains new updates:

1. Identify update type:
   - `progress_update`
   - `new_task`
   - `task_change`
   - `blocker`
   - `meeting_notes`
   - `decision`
   - `question`

2. Identify affected workstream:
   - `WS1` for STEP reading/conversion
   - `WS2` for KRATOS format alignment/analysis

3. Identify affected task ID if possible.

4. Apply updates to `task_tree.yaml`:
   - update status,
   - add notes,
   - add blockers,
   - add evidence,
   - create new task if requested,
   - modify due date or priority if requested.

5. Append an entry to `progress_log.md`.

6. Append important decisions to `change_log.md`.

7. Add unresolved blockers or questions to `risk_and_blockers.md`.

# Tuesday Meeting Workflow

For Tuesday pre-meeting preparation:

1. Summarize previous week's progress.
2. Summarize progress separately for WS1 and WS2.
3. Identify unfinished planned tasks.
4. Identify blockers.
5. Prepare questions for the group meeting.
6. Generate `meeting_report.md`.
7. Generate a short English spoken update.
8. Generate a short Chinese internal planning summary if useful.

For Tuesday post-meeting arrangement:

1. Parse meeting notes.
2. Update `next_week_plan.md`.
3. Add or modify tasks.
4. Update due dates and priorities.
5. Record decisions in `change_log.md`.

# Saturday Push Workflow

For Saturday progress push:

1. Check tasks planned for the current week.
2. Identify tasks with no evidence of progress.
3. Identify tasks at risk before next Tuesday.
4. Recommend the next smallest useful actions.
5. Generate `saturday_push.md`.
6. Avoid blaming language; focus on actionable project recovery.

# Output Style

Be concise, evidence-based, and project-management oriented.

Always separate:

1. Completed work
2. In-progress work
3. Blocked work
4. Next actions
5. Missing information

Never invent progress.
Never silently delete tasks.
Never create a new top-level workstream unless explicitly requested.
