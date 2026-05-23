# Test Plan — Tic-Tac-Toe Web App

## 1. Scope

Validate the correctness, reliability, and game logic of a browser-based Tic-Tac-Toe game where the user plays against the computer.

## 2. Test objectives

1. Validate that users can register, log in, log out, and continue a session safely.
2. Validate game-state correctness across all critical game flows: legal moves, turn switching, win/loss/draw detection, hint behaviour, reset/new-game behaviour, and history recording.
3. Validate persistence behaviour using browser local storage.
4. Validate profile management, duplicate-name prevention, rename, delete account, and history association.
5. Validate localisation and UI direction changes between English LTR and Persian RTL.
6. Validate accessibility-relevant behaviour such as keyboard focus, aria-live status updates, disabled controls, and semantic board interaction.
7. Validate non-functional expectations within a small time-box: responsiveness, cross-browser smoke coverage, error resilience, and evidence capture.

## 3. Test basis

- Supplied task instructions
- Supplied `index.html` SUT
- Observable UI behaviour 
- ISTQB-style test design techniques: equivalence partitioning, boundary value analysis, decision tables, state transition testing, error guessing, checklist-based exploratory testing, and risk-based prioritisation
- Common Tic-Tac-Toe game rules and computer game strategy expectations

## 4. Test approach

The approach is layered:

### 4.1 Exploratory testing
A first pass is used to discover the flows, controls, state transitions, and risks. Findings are converted into risks and coverage items.

### 4.2 Risk-based test design
Criticality is assigned using likelihood × impact. Highest priority areas are automated first.

### 4.3 Black-box techniques
- Equivalence partitioning for valid/invalid player names and difficulty values.
- Boundary value analysis for name length and empty/whitespace input.
- Decision tables for auth and profile validation outcomes.
- State transition testing for auth → play → profile/history → logout/delete flows and game states.

### 4.4 Experience-based techniques
- Error guessing around rapid clicks, double submit, browser refresh, local storage persistence, and language/theme toggling mid-game.
- Exploratory charters for UI responsiveness and history behaviour.

### 4.5 Automation strategy
Automate stable, business-critical flows using Robot Framework and Python. Keep low-value visual-only cases manual/exploratory. Avoid hard sleeps except when validating asynchronous computer moves; use explicit waits and retry keywords.

## 5. In scope

- Registration, login, logout
- Input validation
- Profile rename and delete
- Game play on easy/medium/hard difficulty
- Hint, reset, new game
- Status messages and board interaction
- History creation and clearing
- Theme and language persistence
- LTR/RTL direction checks
- Local storage persistence and isolation
- Cross-browser smoke where drivers are available
- Screenshots and logs evidence

## 6. Entry criteria

- `index.html` is available in the project root
- Browser and driver are available
- Python dependencies installed from `requirements.txt`
- Test environment can write to `reports/`


## 7. Risk matrix summary

| Risk ID | Area | Risk | Likelihood | Impact | Priority | Mitigation |
|---|---|---|---:|---:|---|---|
| R01 | Game engine | Incorrect winner/draw detection | Medium | High | P0 | State transition and oracle-based tests |
| R02 | Computer turn | User can move while computer is thinking | Medium | High | P0 | Disabled/control-state tests and rapid-click tests |
| R03 | Persistence | History/profile lost after refresh | Medium | Medium | P1 | Local storage persistence tests |
| R04 | Auth | Duplicate/invalid names accepted | High | Medium | P1 | EP/BVA validation tests |
| R05 | Localisation | RTL/Persian breaks UI flow | Medium | Medium | P1 | Language and direction tests |
| R06 | UX/accessibility | Status updates not exposed/readable | Medium | Medium | P2 | aria-live/status tests |
| R07 | Browser compatibility | Behaviour inconsistent across browsers | Low | High | P2 | Chrome smoke + optional Firefox/Edge matrix |

