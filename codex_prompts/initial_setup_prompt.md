# Initial Setup Prompt for Codex

Use this prompt once after copying this package into your Software Lab IBRA project repository.

```text
Please initialize the Software Lab IBRA project progress system.

Read:
- project_progress/README.md
- project_progress/project_config.yaml
- project_progress/task_tree.yaml
- project_progress/weekly_cycle.yaml
- .agents/skills/ibra-progress-manager/SKILL.md

Then:
1. Confirm that the two-workstream structure is valid.
2. Inspect the repository and compare existing files with the current task tree.
3. Update task_tree.yaml only if there is clear evidence.
4. Generate an initial project_progress/meeting_report.md.
5. Generate an initial project_progress/next_week_plan.md.
6. List missing information that I should provide.

Rules:
- Do not invent completed work.
- Do not create additional top-level workstreams.
- Keep changes small and reviewable.
```
