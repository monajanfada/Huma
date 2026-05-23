# Tic-Tac-Toe Automation Project

This repository has been created for Huma company's technical assessment task.

## Project Overview

The repository contains two main folders:

- `auto-tests`
- `documents`

The `documents` folder includes:
- Test Plan
- Test Cases
- Bug findings
- Exploratory testing notes

The `auto-tests` folder includes:
- UI automation tests
- Robot Framework test suites
- Python helper keywords
- SeleniumLibrary configuration
- Page Object Model (POM) structure

---

## Tech Stack

- Robot Framework
- SeleniumLibrary
- Python
- Chrome Browser

I chose Robot Framework because I am more familiar with it and have previous experience using it for UI and API automation testing.

However, I am also willing to switch to Playwright in future projects, as it is more modern, simpler to maintain, and currently more up to date for web automation.

---

## Automation Scope

The automated tests cover critical regression scenarios including:

- User registration
- Authentication
- Logout
- Gameplay
- Reset functionality
- Localization
- Profile functionality

---

## Running Tests

Run all tests:

```bash
robot --pythonpath pages -d reports tests/
```

Run tests by tag:

```bash
robot -i critical tests/
```

---

## Reports

After execution, reports are generated inside:

```text
reports/
```

Including:
- `log.html`
- `report.html`
- `output.xml`
- screenshots

---

## Additional Notes

Test cases are also available in Google Sheets:

https://docs.google.com/spreadsheets/d/1meFbhPJ9aOsmhOm9odjEIaFFm1V9uq3d1KEgO4J6AoE/edit?usp=sharing
