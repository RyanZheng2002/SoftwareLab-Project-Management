# Software Lab IBRA Codex Progress System

This package is designed to be copied into the root directory of your Software Lab IBRA project repository.

It provides:

1. A lightweight project progress module under `project_progress/`
2. A Codex Skill under `.agents/skills/ibra-progress-manager/`
3. Ready-to-use Codex prompts for Tuesday group meeting reports, Tuesday post-meeting planning, and Saturday progress push
4. A natural-language update interface so that project progress and task changes can be entered without manually editing YAML every time

## Recommended project structure after installation

```text
your-ibra-project/
  project_progress/
  .agents/
    skills/
      ibra-progress-manager/
  codex_prompts/
  templates/
  src/
  docs/
  examples/
  tests/
```

## How to install

1. Unzip this package.
2. Copy all folders into the root of your Software Lab IBRA project repository.
3. Open the repository in Codex.
4. Ask Codex to read `project_progress/README.md` and use `$ibra-progress-manager`.
5. For automations, copy the prompts from `codex_prompts/automation_prompts.md` into Codex Automations.

## Core project model

The project intentionally has only two top-level workstreams:

- `WS1`: STEP file reading and conversion
- `WS2`: KRATOS format alignment and KRATOS analysis

Do not create a third top-level workstream unless you explicitly decide to expand the project scope.

## Main workflow

Every week:

- Tuesday before group meeting: generate progress report and questions
- Tuesday after group meeting: update next-week plan from meeting notes
- Saturday: check whether the current week has meaningful progress and identify tasks at risk before next Tuesday

## Natural language update interface

Use:

```text
project_progress/natural_language_inbox.md
```

Write progress updates, new tasks, meeting notes, blockers, and decisions there in normal language. Codex should parse that file and update the project progress system.
