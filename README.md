# AS92005 Quarto Website Exemplar

This repository contains a complete example website for a Year 11 AS92005 assessment context using Quarto and R.

Theme: **environmental data investigation** (rainfall, PM2.5, and river nitrate).

## Quick start

1. Install Quarto: <https://quarto.org/docs/get-started/>
2. (Optional) Install R and RStudio for R code chunk execution.
3. In this folder, run:

```powershell
quarto preview
```

## Build command (website + printables)

```powershell
./build-course.ps1
```

If PowerShell blocks local scripts, use:

```powershell
Set-ExecutionPolicy -Scope Process -ExecutionPolicy Bypass; ./build-course.ps1
```

## Included pages

- Home overview (`index.qmd`)
- 10-week unit plan (`unit-plan.qmd`)
- Student assessment brief (`project-brief.qmd`)
- Dataset choice guide (`dataset-options.qmd`)
- R integration example (`data-demo.qmd`)
- Achieved/Merit/Excellence evidence examples (`ame-evidence.qmd`)
- Student self-assessment checklist (`student-self-check.qmd`)
- Printable student self-assessment (`student-self-check-print.qmd`)
- Development log template (`development-log.qmd`)
- Evaluation prompts (`evaluation.qmd`)
- Teacher implementation guide (`teacher-guide.qmd`)
- Teacher rubric matrix (`teacher-rubric.qmd`)
- Milestone checklist (`milestone-checklist.qmd`)

## Included starter data

- `data/environment_nz.csv` (12-month environmental sample dataset)
- `data/waste_recycling_nz.csv` (12-month waste and recycling sample dataset)

## Suggested use

- Use as a model solution and scaffold.
- Adapt content/topics for your class.
- Ask students to replace sample data work with their own context.

## GitHub Pages (docs folder)

This project is configured to render into `docs/`.

This project uses a **local render workflow only** (no GitHub Actions).

1. Run `quarto render --no-execute` (or `quarto render` if executing R chunks).
2. Commit and push the generated `docs/` folder.
3. In GitHub repository settings, set Pages source to **Deploy from a branch** → `main` branch → `/docs` folder.

## Pre-push checklist

- [ ] Run `./build-course.ps1` (or `quarto render --no-execute`).
- [ ] Confirm [docs/index.html](docs/index.html) exists and opens correctly.
- [ ] Spot-check key pages in [docs](docs) (navigation, charts, links).
- [ ] Confirm printable files are present in [resources/printables](resources/printables).
- [ ] Commit and push source files plus updated [docs](docs).

## Course resources folder

Reusable assets and printable handouts are kept in `resources/`.

- `resources/printables/` for generated PDF/HTML handouts
- `resources/templates/` for reusable teaching templates (includes `weekly-checkin-template.md`)
- `resources/notes/` for planning and moderation notes
