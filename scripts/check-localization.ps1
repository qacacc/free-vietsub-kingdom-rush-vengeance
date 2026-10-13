param(
    [Parameter(Mandatory=$true)]
    [string]$GamePath
)

$ErrorActionPreference = 'Stop'
$file = Join-Path $GamePath 'KR4_PC\\Localization\\Localized_sp'
if (-not (Test-Path -LiteralPath $file)) {
    throw "Không tìm thấy file: $file"
}

$lines = Get-Content -LiteralPath $file -Encoding UTF8
$keys = @($lines | Where-Object { $_ -match '^\s*\S+\s*=' })
$invalid = @($lines | Where-Object {
    $_.Trim() -ne '' -and $_ -notmatch '^\s*\S+\s*=\s*"(?:[^"\\]|\\.)*"\s*$'
})

[PSCustomObject]@{
    File = $file
    Lines = $lines.Count
    Keys = $keys.Count
    InvalidLines = $invalid.Count
}
