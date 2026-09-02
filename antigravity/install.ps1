<#
.SYNOPSIS
    Installs and synchronizes Antigravity rules, skills, and workflows.

.DESCRIPTION
    Deploys the configuration files from this repository to either:
    1. Global Antigravity Config directory (~/.gemini/config/)
    2. Local Workspace project (.agents/)

.PARAMETER Target
    Destination: 'Global' (default) or 'Workspace'

.PARAMETER Mode
    Sync method: 'Copy' (default) or 'Symlink'

.EXAMPLE
    .\install.ps1 -Target Global
    .\install.ps1 -Target Workspace -Path "C:\path\to\project"
#>

[CmdletBinding()]
param (
    [ValidateSet("Global", "Workspace")]
    [string]$Target = "Global",

    [ValidateSet("Copy", "Symlink")]
    [string]$Mode = "Copy",

    [string]$Path = ""
)

$ErrorActionPreference = "Stop"
$ScriptDir = Split-Path -Parent $MyInvocation.MyCommand.Path

Write-Host "=========================================" -ForegroundColor Cyan
Write-Host " Antigravity IDE Configuration Installer " -ForegroundColor Cyan
Write-Host "=========================================" -ForegroundColor Cyan

# Determine Destination Directory
if ($Target -eq "Global") {
    $DestRoot = Join-Path -Path $env:USERPROFILE -ChildPath ".gemini\config"
} else {
    if ([string]::IsNullOrWhiteSpace($Path)) {
        $DestRoot = Join-Path -Path (Get-Location) -ChildPath ".agents"
    } else {
        $DestRoot = Join-Path -Path $Path -ChildPath ".agents"
    }
}

Write-Host "`nSource:      $ScriptDir" -ForegroundColor Gray
Write-Host "Target:      $Target" -ForegroundColor Gray
Write-Host "Destination: $DestRoot" -ForegroundColor Yellow
Write-Host "Mode:        $Mode`n" -ForegroundColor Gray

if (-not (Test-Path $DestRoot)) {
    Write-Host "Creating destination directory: $DestRoot" -ForegroundColor DarkCyan
    New-Item -ItemType Directory -Path $DestRoot -Force | Out-Null
}

$FoldersToSync = @("rules", "skills", "workflows", "plugins")

foreach ($Folder in $FoldersToSync) {
    $SrcFolder = Join-Path -Path $ScriptDir -ChildPath $Folder
    $DstFolder = Join-Path -Path $DestRoot -ChildPath $Folder

    if (-not (Test-Path $SrcFolder)) {
        Write-Warning "Source folder '$Folder' not found, skipping..."
        continue
    }

    if ($Mode -eq "Symlink") {
        if (Test-Path $DstFolder) {
            Write-Host "Removing existing destination folder before linking: $DstFolder" -ForegroundColor DarkGray
            Remove-Item -Path $DstFolder -Recurse -Force
        }
        Write-Host "Creating symbolic link: $DstFolder -> $SrcFolder" -ForegroundColor Green
        New-Item -ItemType SymbolicLink -Path $DstFolder -Target $SrcFolder | Out-Null
    } else {
        if (-not (Test-Path $DstFolder)) {
            New-Item -ItemType Directory -Path $DstFolder -Force | Out-Null
        }
        Write-Host "Syncing $Folder..." -ForegroundColor Green
        Copy-Item -Path "$SrcFolder\*" -Destination $DstFolder -Recurse -Force
    }
}

Write-Host "`n[SUCCESS] Antigravity settings successfully installed to: $DestRoot" -ForegroundColor Green
Write-Host "Restart or open Antigravity IDE to load the updated rules, skills, and slash workflows.`n" -ForegroundColor Cyan
