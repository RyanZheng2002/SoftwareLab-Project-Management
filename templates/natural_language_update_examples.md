# Natural Language Update Examples

You can paste examples like these into `project_progress/natural_language_inbox.md`.

## Progress update example

Date: 2026-06-02
Type: progress_update

Content:
WS1 this week can successfully read plate_w_hole.stp and output Face and Edge counts. However, the Vertex ID mapping is not stable yet. Next step is to write Face surface type and Edge orientation into the intermediate JSON.

## New task example

Date: 2026-06-02
Type: new_task

Content:
Add a task under WS2 to check the minimal .cad.json input structure from KRATOS examples and summarize which fields are required for IBRA analysis.

## Meeting notes example

Date: 2026-06-02
Type: meeting_notes

Content:
The supervisor suggested that we should not aim for full KRATOS analysis this week. The priority should be stabilizing STEP to intermediate JSON conversion. For next week, WS1-T002 should become the highest-priority task, while WS2 should focus only on format research.

## Blocker example

Date: 2026-06-02
Type: blocker

Content:
WS1-T002 is blocked because we are not sure whether trimming curves should be stored in 2D parameter space, 3D physical space, or both.
