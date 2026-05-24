# Optional helper script for Windows PowerShell
# Run this script from inside the unzipped package directory.
# Example:
#   .\install_to_repo.ps1 -RepoPath "D:\path\to\your\software-lab-ibra"

param(
    [Parameter(Mandatory=$true)]
    [string]$RepoPath
)

if (-not (Test-Path $RepoPath)) {
    Write-Error "Repository path does not exist: $RepoPath"
    exit 1
}

$items = @("project_progress", ".agents", "codex_prompts", "templates")

foreach ($item in $items) {
    $src = Join-Path $PSScriptRoot $item
    $dst = Join-Path $RepoPath $item
    if (Test-Path $src) {
        Copy-Item -Path $src -Destination $dst -Recurse -Force
        Write-Host "Copied $item to $dst"
    }
}

Write-Host "Installation complete. Open the repository in Codex and run the initial setup prompt from codex_prompts/initial_setup_prompt.md."
