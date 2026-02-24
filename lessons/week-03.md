# Week 3 — Data Meets Web (Intro to R)

## Lesson 7: Hello, R Chunks

**Goal:** Introduce computational elements in Quarto pages.

**Activity:**
- Insert first R chunk:
  - basic arithmetic
  - simple variables
- Render and verify calculated output appears.

**Teacher checks:**
- Students can identify chunk boundaries.
- At least one successful calculated output per student.

---

## Lesson 8: Loading a Dataset

**Goal:** Bring external data into the website.

**Activity:**
- Students load a CSV using R (`read.csv`).
- Use local dataset (preferably `data/environment_nz.csv` or `data/waste_recycling_nz.csv`).
- Preview with `head()`.

**Teacher checks:**
- Correct file path usage.
- Students can explain what each column represents.

---

## Lesson 9: Displaying Data Tables

**Goal:** Present data cleanly on a page.

**Activity:**
- Print dataframe preview or use `knitr::kable()`.
- Place output on Data page with short interpretation sentence.

**Teacher checks:**
- Table renders in HTML.
- Interpretation sentence matches displayed data.
