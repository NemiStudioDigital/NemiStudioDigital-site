# Safe presence check only. Never prints, measures, hashes or transmits the secret.
$ErrorActionPreference = 'Stop'

$userValue = [Environment]::GetEnvironmentVariable('KILO_GATEWAY_KEY', 'User')
$processValue = [Environment]::GetEnvironmentVariable('KILO_GATEWAY_KEY', 'Process')
$machineValue = [Environment]::GetEnvironmentVariable('KILO_GATEWAY_KEY', 'Machine')

if ([string]::IsNullOrWhiteSpace($userValue) -and
    [string]::IsNullOrWhiteSpace($machineValue) -and
    [string]::IsNullOrWhiteSpace($processValue)) {
    Write-Output 'KILO_GATEWAY_KEY: ABSENT (no value displayed)'
    exit 2
}

if (-not [string]::IsNullOrWhiteSpace($userValue)) {
    Write-Output 'USER_SCOPE: PRESENT (secret hidden)'
} else {
    Write-Output 'USER_SCOPE: ABSENT'
}

if (-not [string]::IsNullOrWhiteSpace($machineValue)) {
    Write-Output 'MACHINE_SCOPE: PRESENT (secret hidden)'
} else {
    Write-Output 'MACHINE_SCOPE: ABSENT'
}

if (-not [string]::IsNullOrWhiteSpace($processValue)) {
    Write-Output 'CURRENT_PROCESS: PRESENT (secret hidden)'
} else {
    Write-Output 'CURRENT_PROCESS: ABSENT — close and reopen the terminal after setting a User variable'
}

Write-Output 'NOTE: Presence is not proof of key validity or billing route. No network request was made.'
