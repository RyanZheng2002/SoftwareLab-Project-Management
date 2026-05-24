# Natural Language Update Inbox

Use this file to record task updates, new tasks, meeting notes, blockers, decisions, and questions in natural language.

Codex should parse this file and update:

- `task_tree.yaml`
- `progress_log.md`
- `risk_and_blockers.md`
- `meeting_report.md`
- `next_week_plan.md`
- `change_log.md`

---

## Input Format Examples

### Progress Update

Date: 2026-05-26
Type: progress_update

Content:
WS1-T001 has made progress. The STEP file can now be loaded successfully with pythonocc, and the code can print the number of faces and edges. However, shell traversal is not stable yet.

Expected Codex Action:
- Update WS1-T001 status if appropriate.
- Add evidence if related files exist.
- Add unstable shell traversal as a blocker or note.
- Append this to progress_log.md.

---

### New Task

Date: 2026-05-26
Type: new_task

Content:
Add a task under WS1: compare the topology hierarchy exported from OCCT with the B-Rep structure needed by the intermediate JSON.

Expected Codex Action:
- Add a new task under WS1.
- Assign a new task ID.
- Set status to not_started.
- Set priority based on dependency and urgency.
- Add a clear definition_of_done.

---

### Task Modification

Date: 2026-05-26
Type: task_change

Content:
WS2-T001 should also include checking examples from KRATOS repository related to IBRA and .cad.json input.

Expected Codex Action:
- Update WS2-T001 definition_of_done.
- Add a note explaining the change.
- Add entry to change_log.md.

---

### Blocker

Date: 2026-05-26
Type: blocker

Content:
WS1-T002 is blocked because we are not sure whether trimming curves should be stored in 2D parameter space, 3D physical space, or both.

Expected Codex Action:
- Add blocker to WS1-T002.
- Add or update risk_and_blockers.md.
- Suggest a clarification question for the next meeting.

---

### Meeting Notes

Date: 2026-06-02
Type: meeting_notes

Content:
The supervisor suggested that we should first focus on the intermediate JSON rather than full KRATOS analysis. Next week, Ryan should finish Face and Edge extraction, and another teammate should check KRATOS .cad.json examples.

Expected Codex Action:
- Update next_week_plan.md.
- Adjust task priorities.
- Record the decision in change_log.md.
- Keep all changes inside WS1 or WS2.

---

## New Updates

Paste new updates below this line.

---
