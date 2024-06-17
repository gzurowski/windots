param (
    [string]$task = $args[0]
)

function Invoke-WinGet {
    Write-Host "Running WinGet..."
    & .\winget\run.ps1
}

switch ($task) {
    "winget" { Invoke-WinGet }
    default { Write-Host "No task specified or task does not exist." }
}
