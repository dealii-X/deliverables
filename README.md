# dealii-X Deliverables

This repository contains a LaTeX template for dealii-X project deliverables, and the deliverables themselves. The template ensures all deliverables have a consistent format that complies with EU funding requirements.

## Creating a New Deliverable

Follow these steps to create a new deliverable document:

1. Create a new directory for your deliverable:

   ```bash
   mkdir DX.Y
   ```

2. Copy the template files to your new directory:

   ```bash
   cp ./D0.0_template/D0.0_template.tex DX.Y/DX.Y_short_title.tex
   ```

3. (Optionally) create a figures directory for your images:

   ```bash
   mkdir -p DX.Y/figures
   ```

4. Edit the new .tex file, updating at minimum:
   - The deliverable number using `\setdeliverableNumber{X.Y}`
   - The deliverable title using `\maketitlepage{Your Deliverable Title}`
   - The deliverable metadata table (dates, etc.)

## Template Structure

The template uses a common style file (`deliverable.sty`) located in the `common` directory which defines the project formatting and provides specialized commands for deliverable documents.

## Available Commands and Environments

### Basic Setup Commands

| Command | Description | Usage |
|---------|-------------|-------|
| `\setdeliverableNumber{X.Y}` | Sets the deliverable number (without D prefix) | `\setdeliverableNumber{1.2}` |
| `\maketitlepage{Title}` | Creates the title page with the given title | `\maketitlepage{Implementation Report}` |

### Deliverable Tables

| Command/Environment | Description | Usage |
|---------------------|-------------|-------|
| `\begin{deliverableTable}` | Begins a formatted table for deliverable metadata | See template for examples |
| `\tableEntry{Label}{Content}` | Creates a row in the deliverable table | `\tableEntry{Deliverable title}{Final Implementation Report}` |

### Document Control

| Command/Environment | Description | Usage |
|---------------------|-------------|-------|
| `\begin{documentControl}` | Begins the document control table | See template |
| `\addVersion{Ver}{Date}{Author}{Changes}` | Adds a version entry to the document control table | `\addVersion{0.1}{2024-05-15}{John Doe}{Initial draft}` |

### Other Commands

| Command | Description | Usage |
|---------|-------------|-------|
| `\disclaimer` | Inserts the standard EU funding disclaimer text | `\disclaimer` |
| `\Num` | Formats a number with the superscript "o" | `\Num 101172493` |

## Page Setup and Styling

The template automatically applies the following styling:

- EU blue color for headers and section titles
- Standard header with project name, deliverable number, and page count
- Footer with project logo
- Properly formatted title page with EU funding information
- Consistent font (Arial/Helvetica family)
- 1.5 line spacing
- Standard margins

## Full Example

See the template file `D0.0_template.tex` for a complete example of how to structure a deliverable document.

## Tips for Writing Deliverables

1. Always keep section numbering consistent with the template
2. Reference other sections using `\ref{sec:sectionname}` to maintain proper hyperlinks
3. Place all figures in the `figures` directory and reference them with relative paths
4. Use the `\label{MyLastPage}` command at the end of the document to enable correct page counting
5. Use the predefined environments for consistent formatting across all project deliverables
