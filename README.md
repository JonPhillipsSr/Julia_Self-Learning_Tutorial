# Julia Multi-File Calculator & Database Project

## Overview

This project is a personal learning project created as part of my journey learning the Julia programming language.

The goal of this application is not only to create a functional calculator program, but also to explore larger software engineering concepts such as:

* Multi-file project organization
* Modular architecture using Julia modules
* Reusable helper functions
* Database integration with SQLite
* Input validation and error handling
* Persistent storage
* Scientific and mathematical calculations
* Terminal UI styling
* Application scalability and extensibility

This project is being developed incrementally as I continue learning Julia, software design, and scientific computing concepts.

---

# Current Features

The application currently supports:

* Addition calculations
* Multiplication calculations
* Area of a circle calculations
* SQLite database integration
* Persistent calculation history
* Viewing saved calculation history
* Clearing calculation history with confirmation prompts
* Overflow detection for invalid or infinite results
* Colored terminal output and styled warning/error messages

---

# Technologies Used

* Julia
* SQLite
* DBInterface.jl

---

# Project Structure

```text
main.jl
math_tools.jl
helpers.jl
calculator_operations.jl
menu.jl
database_helpers.jl
calculator_history.db
```

## Module Responsibilities

| File                       | Purpose                                |
| -------------------------- | -------------------------------------- |
| `main.jl`                  | Main application loop and menu routing |
| `math_tools.jl`            | Mathematical calculation functions     |
| `helpers.jl`               | Input validation and output formatting |
| `calculator_operations.jl` | User workflow orchestration            |
| `menu.jl`                  | Main menu display                      |
| `database_helpers.jl`      | SQLite database management             |

---

# Installation & Setup

## 1. Install Julia

Download and install Julia from:

[https://julialang.org/downloads/](https://julialang.org/downloads/)

---

## 2. Clone the Repository

```bash
git clone <YOUR_REPOSITORY_URL>
cd <YOUR_PROJECT_FOLDER>
```

---

## 3. Install Required Packages

Open the Julia REPL and run:

```julia
using Pkg
Pkg.add("SQLite")
Pkg.add("DBInterface")
```

---

# Running the Program

From the project directory:

```bash
julia main.jl
```

---

# Database Information

The application automatically creates a local SQLite database file:

```text
calculator_history.db
```

This database stores:

* Calculation type
* User inputs
* Results
* Calculation history

The database is created automatically the first time the application runs.

---

# Future Plans

Planned future additions may include:

* Additional mathematical operations
* Scientific calculations
* Orbital mechanics calculations
* Planetary distance calculations
* More advanced database functionality
* Improved terminal UI
* Graphical user interface experiments
* Web frontend experiments using Vue and Julia backends
* Statistical and simulation tools
* More advanced scientific computing demonstrations

---

# Purpose of This Project

This project serves as both:

1. A practical Julia learning environment
2. A portfolio project demonstrating progressive software engineering concepts

The repository will continue evolving over time as I expand my Julia knowledge and experiment with more advanced concepts.

---

# Author

Jon Phillips

Computer Programming Student
Central New Mexico Community College
