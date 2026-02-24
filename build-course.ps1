$ErrorActionPreference = "Stop"

New-Item -ItemType Directory -Force -Path "resources/printables" | Out-Null
New-Item -ItemType Directory -Force -Path "resources/templates" | Out-Null
New-Item -ItemType Directory -Force -Path "resources/notes" | Out-Null

Write-Host "Rendering website to docs..."
quarto render --no-execute
if ($LASTEXITCODE -ne 0) {
  throw "Quarto website render failed."
}

if (-not (Test-Path "docs/index.html")) {
  throw "docs/index.html was not generated."
}

Write-Host "Rendering printable PDFs to resources/printables..."
$printables = @(
  "student-self-check-print.qmd",
  "teacher-rubric.qmd"
)

foreach ($file in $printables) {
  quarto render $file --to pdf --output-dir resources/printables
  if ($LASTEXITCODE -ne 0) {
    throw "PDF render failed for $file"
  }
}

Write-Host "Syncing printable HTML pages to resources/printables..."
Copy-Item "docs/student-self-check-print.html" "resources/printables/student-self-check-print.html" -Force
Copy-Item "docs/teacher-rubric.html" "resources/printables/teacher-rubric.html" -Force

Write-Host "Build complete. Website is in docs/, printables are in resources/printables/."
