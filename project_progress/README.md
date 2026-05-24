# Project Progress System Rules

This folder is the project progress management module for the Software Lab IBRA project.

## 1. Two top-level workstreams only

The project has only two main workstreams:

- `WS1`: STEP file reading and conversion
- `WS2`: KRATOS format alignment and KRATOS analysis

Do not create a third top-level workstream unless the user explicitly asks.

## 2. Task ID rules

Use the following ID format:

- `WS1-T001`, `WS1-T002`, ...
- `WS2-T001`, `WS2-T002`, ...

Subtasks may use:

- `WS1-T001-S1`
- `WS2-T002-S1`

## 3. Allowed status labels

Use only these labels:

- `not_started`
- `in_progress`
- `blocked`
- `needs_review`
- `done`
- `deferred`

## 4. Evidence-based status update

A task can only be marked as `done` when its `definition_of_done` is satisfied and there is evidence.

Evidence may include:

- source code files
- test outputs
- generated JSON files
- screenshots
- report sections
- meeting notes

If evidence is missing, use `in_progress`, `needs_review`, or `blocked` rather than `done`.

## 5. Natural language updates

When `natural_language_inbox.md` contains updates, Codex should:

1. Parse the update.
2. Identify affected workstream and task.
3. Update `task_tree.yaml`.
4. Append to `progress_log.md`.
5. Add blockers to `risk_and_blockers.md` if needed.
6. Add unresolved questions to `meeting_report.md` or `next_week_plan.md`.
7. Record important decisions in `change_log.md`.

## 6. Weekly cycle

Every Tuesday:

- summarize previous week's progress,
- prepare group meeting report,
- update task arrangement for next week.

Every Saturday:

- check current week progress,
- remind the team of unfinished tasks,
- identify at-risk tasks before next Tuesday.

## 7. No invented progress

Codex must not invent completed work.

If a task update is ambiguous, Codex should record the ambiguity in the appropriate file rather than silently assuming completion.
