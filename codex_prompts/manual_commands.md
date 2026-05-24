# Manual Codex Commands

Use these commands in Codex when you want to manually update or inspect the project without waiting for automation.

## 1. Parse new natural language updates

```text
Use $ibra-progress-manager.

Please parse the latest entries in project_progress/natural_language_inbox.md and update the project progress system.

Update:
- project_progress/task_tree.yaml
- project_progress/progress_log.md
- project_progress/risk_and_blockers.md
- project_progress/change_log.md if needed

Do not invent progress. Do not create a third top-level workstream.
```

## 2. Generate Tuesday meeting report manually

```text
Use $ibra-progress-manager.

Generate the Tuesday group meeting report for the Software Lab IBRA project.

Read project_progress/task_tree.yaml, progress_log.md, risk_and_blockers.md, and natural_language_inbox.md.
Update project_progress/meeting_report.md.

The report should summarize:
1. Progress since last Tuesday.
2. WS1 progress.
3. WS2 progress.
4. Blockers.
5. Questions for the group meeting.
6. Next-week task suggestions.
7. A one-minute English spoken update.
```

## 3. Generate next-week plan manually

```text
Use $ibra-progress-manager.

Based on the latest meeting notes in project_progress/natural_language_inbox.md, update project_progress/next_week_plan.md and task_tree.yaml.

Keep the two-workstream structure:
- WS1: STEP file reading and conversion
- WS2: KRATOS format alignment and KRATOS analysis

Record important decisions in change_log.md.
```

## 4. Generate Saturday progress push manually

```text
Use $ibra-progress-manager.

Generate the Saturday progress push report for the Software Lab IBRA project.

Check current-week tasks, identify tasks at risk before next Tuesday, and update project_progress/saturday_push.md.
```

## 5. Add a new task using natural language

```text
Use $ibra-progress-manager.

Add the following new task to the project progress system:

[Write your task here.]

Please decide whether it belongs to WS1 or WS2, assign a task ID, set status to not_started, propose a priority, and add definition_of_done.
```

## 6. Update task progress using natural language

```text
Use $ibra-progress-manager.

Update project progress:

[Write your progress update here.]

Please update the relevant task status, blockers, evidence, and progress log. Do not mark anything as done unless the definition_of_done is satisfied.
```
