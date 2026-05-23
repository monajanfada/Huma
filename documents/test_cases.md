# Tic-Tac-Toe Test Cases
> Note: You can also see all the test cases in Google Sheet with the link below:  
> https://docs.google.com/spreadsheets/d/1meFbhPJ9aOsmhOm9odjEIaFFm1V9uq3d1KEgO4J6AoE/edit?usp=sharing

**Total Test Cases:** 57

---
## TC01 - Verify the application loads successfully with the Main header and login form.

### Preconditions
Browser is opened
 and index.html is
 available.

### Test Steps
1. Launch the app.
2. Check the page title.
3. Verify the login/register
 form is visible.

### Test Data
Local HTML file

### Expected Result
App should load without
 console error and
 login form should
 be visible.

### Actual Result
Same as expected

### Status
Passed

### Remarks
Check initial page stability.

### Browser
Chrome

---

## TC02 - Verify user can create/login with a valid username.

### Preconditions
User is on login page.

### Test Steps
1. Enter valid username.
2. Click login/start button.
3. Observe Main game
 page.

### Test Data
Username: Mona

### Expected Result
User should be redirected
 to game screen and 
username should be
 displayed.

### Actual Result
Same as expected

### Status
Passed

### Remarks
Main happy path.

### Browser
Chrome

---

## TC03 - Verify empty username is rejected.

### Preconditions
User is on login page.

### Test Steps
1. Leave username empty.
2. Click login/start button.

### Test Data
Empty value

### Expected Result
Validation error should
 be shown and user 
should stay on login
 page.

### Actual Result
Same as expected

### Status
Passed

### Remarks
Basic validation.

### Browser
Chrome

---

## TC04 - Verify whitespace username is rejected.

### Preconditions
Login page is
 displayed.

### Test Steps
1. Enter spaces only.
2. Submit form.

### Test Data
" "

### Expected Result
App should not accept
 blank/space-only 
username.

### Actual Result
Same as expected

### Status
Passed

### Remarks
Trim validation should
 be checked.

### Browser
Firefox

---

## TC05 - Verify duplicate username validation.

### Preconditions
A username already
 exists in app
 storage/session.

### Test Steps
1. Register with username.
2. Log out if needed.
3. Try same username 
again.

### Test Data
Username: Sara

### Expected Result
Clear duplicate username
 error should be displayed.

### Actual Result
Same as expected

### Status
Passed

### Remarks
Important negative
 login scenario.

### Browser
Chrome

---

## TC06 - Verify invalid username error changes language correctly.

### Preconditions
Login page is open
 and invalid username
 error is already displayed.

### Test Steps
1. Trigger invalid username
 error.
2. Change language to
 Persian.
3. Change language back
 to English.
4. Observe error text.

### Test Data
Invalid username

### Expected Result
Error message should
 update to selected
 language every time.

### Actual Result
Error remains in
 previous language.

### Status
Failed

### Remarks
Bug: localisation
 state is not refreshed.

### Browser
Chrome

---

## TC07 - Verify duplicate username error changes language correctly.

### Preconditions
Duplicate username
 error is visible on
 login page.

### Test Steps
1. Trigger duplicate username
 error.
2. Switch language
 to Persian.
3. Switch back to English.

### Test Data
Existing username

### Expected Result
Duplicate username
 message should follow
 selected language.

### Actual Result
Error remains in
 last selected language.

### Status
Failed

### Remarks
Bug: same issue as
 invalid login error.

### Browser
Chrome

---

## TC08 - Verify app subtitle is translated when language changes to Persian.

### Preconditions
Application is
 loaded in English.

### Test Steps
1. Change language to
 Persian.
2. Check subtitle under title.

### Test Data
Language: Persian

### Expected Result
Subtitle should be
 translated to Persian.

### Actual Result
“A small game for
 test automation”
 remains English.

### Status
Failed

### Remarks
Bug: static subtitle
 is not localised.

### Browser
Chrome

---

## TC09 - Verify language switch changes layout direction.

### Preconditions
App is loaded.

### Test Steps
1. Select Persian.
2. Check page 
alignment/direction.
3. Select English again.

### Test Data
EN / FA

### Expected Result
Persian should use
 RTL and English 
should use LTR.

### Actual Result
Same as expected

### Status
Passed

### Remarks
Visual localisation check.

### Browser
Firefox

---

## TC10 - Verify theme can be changed from light to dark.

### Preconditions
App is loaded.

### Test Steps
1. Click theme button.
2. Observe page colours.
3. Click again.

### Test Data
Theme toggle

### Expected Result
Theme should switch 
correctly and remain
 readable.

### Actual Result
Same as expected

### Status
Passed

### Remarks
UI configuration check.

### Browser
Chrome

---

## TC11 - Verify game board shows nine cells after login.

### Preconditions
User is logged in.

### Test Steps
1. Go to Play page.
2. Count board cells.
3. Check cells are empty.

### Test Data
Logged-in user

### Expected Result
Board should display
 9 empty cells.

### Actual Result
Same as expected

### Status
Passed

### Remarks
Core game rendering.

### Browser
Chrome

---

## TC12 - Verify player can place X on an empty cell.

### Preconditions
User is logged in and game is new.

### Test Steps
1. Click first empty cell.
2. Check symbol in
 selected cell.

### Test Data
Cell 1

### Expected Result
Selected cell
 should show X.

### Actual Result
Same as expected

### Status
Passed

### Remarks
First move validation.

### Browser
Chrome

---

## TC13 - Verify computer responds with O after player move.

### Preconditions
New game is active.

### Test Steps
1. Player clicks an empty cell.
2. wait for computer move.
3. Count X and O values.

### Test Data
Any first move

### Expected Result
Computer should place 
one O in an empty cell.

### Actual Result
Same as expected

### Status
Passed

### Remarks
Use 3s wait.

### Browser
Chrome

---

## TC14 - Verify occupied cell cannot be selected again.

### Preconditions
At least one cell 
X or O.

### Test Steps
1. Click an occupied cell.
2. Observe the symbol.
3. Check move count.

### Test Data
Occupied cell

### Expected Result
Existing symbol
 should not change.

### Actual Result
Same as expected

### Status
Passed

### Remarks
Prevent overwrite.

### Browser
Firefox

---

## TC15 - Verify computer never changes player X to O on Easy level.

### Preconditions
Easy level is selected.

### Test Steps
1. Start new game.
2. Place X.
3. Let computer move.
4. Check original X cell.

### Test Data
Difficulty: Easy

### Expected Result
Player X should
 remain unchanged.

### Actual Result
Same as expected

### Status
Passed

### Remarks
Computer legality check.

### Browser
Chrome

---

## TC16 - Verify computer never changes player X to O on Medium level.

### Preconditions
Medium level is selected.

### Test Steps
1. Start game.
2. Make a player move.
3. wait for computer.
4. Validate previous X cells.

### Test Data
Difficulty: Medium

### Expected Result
Computer should only
 use empty cells.

### Actual Result
Same as expected

### Status
Passed

### Remarks
Regression check for 
computer.

### Browser
Edge

---

## TC17 - Verify Hard level does not overwrite player moves.

### Preconditions
Hard level is selected.

### Test Steps
1. Start hard game.
2. Click a cell first.
3. Continue playing several 
turns.
4. Observe if X changes to O.

### Test Data
Difficulty: Hard

### Expected Result
Computer should
 never replace X with O.

### Actual Result
Computer changes
 player X to O.

### Status
Failed

### Remarks
Critical bug: board state
 corruption.

### Browser
Chrome

---

## TC18 - Verify Hard level Computer does not repeat identical moves every game.

### Preconditions
Hard level is selected 
and several new 
games can be started.

### Test Steps
1. Start hard game.
2. Make same first move.
3. Restart game.
4. Repeat and compare
 computer behaviour.

### Test Data
First move:
 corner/centre

### Expected Result
computer should make
 valid strategic moves 
and not corrupt board.

### Actual Result
Computer moves are 
always same and 
overwrite issue appears.

### Status
Failed

### Remarks
Bug affects computer 
credibility.

### Browser
Chrome

---

## TC19 - Verify Hint highlights an empty cell.

### Preconditions
Game is active and
 empty cells exist.

### Test Steps
1. Click Hint.
2. Check highlighted cell.
3. Confirm it is empty.

### Test Data
Active board

### Expected Result
Hint should point to
 a playable empty cell.

### Actual Result
Same as expected

### Status
Passed

### Remarks
Functional hint check.

### Browser
Chrome

---

## TC20 - Verify hinted cell is clickable on first attempt in Hard mode.

### Preconditions
Hard mode is active
 and Hint button is available.

### Test Steps
1. Start game in Hard mode.
2. Click Hint.
3. Immediately click 
highlighted cell.

### Test Data
Difficulty: Hard

### Expected Result
Highlighted cell should 
be clickable first time.

### Actual Result
Sometimes first click
 does not work.

### Status
Failed

### Remarks
Intermittent bug, should 
be automated with retry
 evidence.

### Browser
Chrome

---

## TC21 - Verify changing level during active game shows confirmation popup.

### Preconditions
A game is already
 in progress.

### Test Steps
1. Make at least one move.
2. Change level to Hard.
3. Observe browser popup.

### Test Data
New level: Hard

### Expected Result
Popup should say “Change 
difficulty and start a 
new game?”
 with OK and Cancel.

### Actual Result
Same as expected

### Status
Passed

### Remarks
Important state transition.

### Browser
Chrome

---

## TC22 - Verify Cancel on difficulty popup keeps current game.

### Preconditions
Difficulty change
 popup is displayed.

### Test Steps
1. Click Cancel.
2. Check board state.
3. Continue playing.

### Test Data
Popup: Cancel

### Expected Result
Current game should
 continue and moves 
should remain.

### Actual Result
Same as expected

### Status
Passed

### Remarks
Prevent accidental reset.

### Browser
Chrome

---

## TC23 - Verify OK on difficulty popup starts a new game.

### Preconditions
Difficulty change
 popup is displayed.

### Test Steps
1. Click OK.
2. Observe board.
3. Check selected difficulty.

### Test Data
Popup: OK

### Expected Result
Board should reset
 and new difficulty should 
apply.

### Actual Result
Same as expected

### Status
Passed

### Remarks
Confirmed destructive
 action.

### Browser
Chrome

---

## TC24 - Verify New Game clears the board.

### Preconditions
User has
 already made moves.

### Test Steps
1. Click New Game.
2. Check all cells.
3. Check game status.

### Test Data
Active game

### Expected Result
Board should be
 cleared and game
 should restart.

### Actual Result
Same as expected

### Status
Passed

### Remarks
Reset game state.

### Browser
Firefox

---

## TC25 - Verify Reset button asks for confirmation.

### Preconditions
Current board has moves.

### Test Steps
1. Click Reset.
2. Observe confirmation.

### Test Data
Existing moves

### Expected Result
User should be 
asked before board is
 cleared.

### Actual Result
Game Restarts without 
asking user

### Status
Failed

### Remarks
Bug creates accidental
 data loss.

### Browser
Chrome

---

## TC26 - Verify player win is detected.

### Preconditions
Game state allows
 player to complete a line.

### Test Steps
1. Play moves to create
 winning line.
2. Place final X.
3. Observe status.

### Test Data
Winning line

### Expected Result
Status should show
 player win and
 board should lock.

### Actual Result
Same as expected

### Status
Passed

### Remarks
Can be controlled with 
mocked state if needed.

### Browser
Chrome

---

## TC27 - Verify computer win is detected.

### Preconditions
Computer can 
complete a winning line.

### Test Steps
1. Play moves allowing
 computer win.
2. wait for computer move.
3. Observe result.

### Test Data
Computer win setup

### Expected Result
Status should show 
computer win.

### Actual Result
Same as expected

### Status
Passed

### Remarks
computer result validation.

### Browser
Chrome

---

## TC28 - Verify draw is detected.

### Preconditions
Board can be filled without
 winner.

### Test Steps
1. Play until all cells are filled.
2. Check final status.

### Test Data
Draw sequence

### Expected Result
Status should show draw and
 no more moves should be
 accepted.

### Actual Result
Same as expected

### Status
Passed

### Remarks
End-state scenario.

### Browser
Firefox

---

## TC29 - Verify no move is allowed after game ends.

### Preconditions
Game is already
 won/lost/drawn.

### Test Steps
1. Try to click empty cell after
 result.
2. Observe board.

### Test Data
Finished game

### Expected Result
Board should be locked.

### Actual Result
Same as expected

### Status
Passed

### Remarks
Prevent invalid
 post-result moves.

### Browser
Chrome

---

## TC30 - Verify History records completed game.

### Preconditions
User completes a game.

### Test Steps
1. Finish a game.
2. Open History.
3. Check latest record.

### Test Data
Result: Win/Loss/Draw

### Expected Result
Finished result 
should appear in history.

### Actual Result
Same as expected

### Status
Passed

### Remarks
Data persistence check.

### Browser
Chrome

---

## TC31 - Verify abandoned game is not added to history.

### Preconditions
Game has moves
 but no result.

### Test Steps
1. Make one move.
2. Click New Game.
3. Open History.

### Test Data
Incomplete game

### Expected Result
No completed result 
should be recorded.

### Actual Result
Same as expected

### Status
Passed

### Remarks
Prevent false 
history entries.

### Browser
Chrome

---

## TC32 - Verify Clear History requires confirmation.

### Preconditions
History has at least
 one record.

### Test Steps
1. Open History.
2. Click Clear History.

### Test Data
Existing history

### Expected Result
Confirmation should 
appear before clearing.

### Actual Result
Same as expected

### Status
Passed

### Remarks
Destructive action check.

### Browser
Firefox

---

## TC33 - Verify cancelling Clear History keeps records.

### Preconditions
Clear history popup is open.

### Test Steps
1. Click Cancel.
2. Check history table.

### Test Data
Cancel clear

### Expected Result
Previous records 
should remain visible.

### Actual Result
Same as expected

### Status
Passed

### Remarks
Negative confirmation path.

### Browser
Chrome

---

## TC34 - Verify accepting Clear History removes records.

### Preconditions
History contains records.

### Test Steps
1. Click Clear History.
2. Confirm action.
3. Check empty state.

### Test Data
Confirm clear

### Expected Result
History should be empty.

### Actual Result
Same as expected

### Status
Passed

### Remarks
Data cleanup check.

### Browser
Chrome

---

## TC35 - Verify Profile displays correct username.

### Preconditions
User is logged in.

### Test Steps
1. Open Profile.
2. Check displayed name.

### Test Data
Username: Mona

### Expected Result
Profile should show
 current username.

### Actual Result
Same as expected

### Status
Passed

### Remarks
Profile identity check.

### Browser
Chrome

---

## TC36 - Verify profile statistics match history.

### Preconditions
User has completed 
several games.

### Test Steps
1. Open History and count
 results.
2. Open Profile.
3. Compare stats.

### Test Data
Multiple games

### Expected Result
Profile totals should match 
history records.

### Actual Result
Same as expected

### Status
Passed

### Remarks
Data consistency.

### Browser
Edge

---

## TC37 - Verify user can log out.

### Preconditions
User is logged in.

### Test Steps
1. Click Log Out.
2. Observe page.

### Test Data
Active session

### Expected Result
User should return
 to login page.

### Actual Result
Same as expected

### Status
Passed

### Remarks
Session flow.

### Browser
Chrome

---

## TC38 - Verify logged-out user cannot access game board.

### Preconditions
User has logged out.

### Test Steps
1. Log out.
2. Check visible controls.

### Test Data
Logged out state

### Expected Result
Game board should
 not be accessible.

### Actual Result
Same as expected

### Status
Passed

### Remarks
Access control.

### Browser
Chrome

---

## TC39 - Verify page refresh keeps expected user/session state.

### Preconditions
User is logged in.

### Test Steps
1. Refresh browser.
2. Observe whether user
 remains logged in.
3. Check board/history state.

### Test Data
Refresh page

### Expected Result
App should behave
 consistently according to
 storage design.

### Actual Result
Same as expected

### Status
Passed

### Remarks
Persistence should be documented.

### Browser
Chrome

---

## TC40 - Verify corrupted local storage does not crash app.

### Preconditions
Browser dev
 tools/local storage
 can be edited.

### Test Steps
1. Add invalid app state to 
local storage.
2. Refresh page.

### Test Data
Invalid JSON/state

### Expected Result
App should recover 
safely or reset to login.

### Actual Result
Same as expected

### Status
Passed

### Remarks
Robustness check.

### Browser
Chrome

---

## TC41 - Verify rapid double click on same cell does not create two moves.

### Preconditions
New game is active.

### Test Steps
1. Double-click one cell 
quickly.
2. wait for computer.
3. Count symbols.

### Test Data
Rapid clicks

### Expected Result
Only one X should be placed.

### Actual Result
Same as expected

### Status
Passed

### Remarks
Race condition check.

### Browser
Chrome

---

## TC42 - Verify logout redirects user to Login page instead of Create Account page.

### Preconditions
User is logged into
 the application and
 game page is accessible.

### Test Steps
1. Login with valid username.
2. Navigate through the 
application.
3. Click Log Out button.
4. Observe redirected
 screen and available 
form labels/buttons.

### Test Data
Valid logged-in user

### Expected Result
User should be redirected to
 Login page with login form 
and existing-user flow.

### Actual Result
Application redirects user
 to Create Account
 page instead of Login page.

### Status
Failed

### Remarks
Bug: logout navigation
 flow is incorrect and may 
confuse returning users.

### Browser
Chrome

---

## TC43 - Verify username field enforces maximum character limit.

### Preconditions
User is on
 login/create 
account page.

### Test Steps
1. Enter an extremely long
 username.
2. Submit the form.
3. Observe validation 
behavior and UI layout.
4. Check profile/header
 rendering after login if
 accepted.

### Test Data
Username with
 200+ characters

### Expected Result
Application should prevent
 usernames exceeding 
defined maximum length 
or show validation message.

### Actual Result
Application accepts 
unlimited-length usernames
 without validation.

### Status
Failed

### Remarks
Bug: no upper boundary 
validation exists for 
username field; 
may cause UI, 
storage or security issues.

### Browser
Chrome

---

## TC44 - Verify user cannot click another cell while computer is thinking.

### Preconditions
Computer response
 has delay.

### Test Steps
1. Make a move.
2. Quickly click second cell.
3. Observe board.

### Test Data
Two quick clicks

### Expected Result
Second human move
 should not be accepted
 before computer turn.

### Actual Result
Same as expected

### Status
Passed

### Remarks
Turn-control validation.

### Browser
Chrome

---

## TC45 - Verify navigation during active game preserves board.

### Preconditions
User has started a game.

### Test Steps
1. Make a move.
2. Go to Profile.
3. Return to Play.

### Test Data
Active board

### Expected Result
Board should 
remain unchanged.

### Actual Result
Same as expected

### Status
Passed

### Remarks
State preservation.

### Browser
Firefox

---

## TC46 - Verify language switch during active game preserves board.

### Preconditions
Game has at least 
one move.

### Test Steps
1. Make move.
2. Change language.
3. Check board symbols.

### Test Data
EN to FA

### Expected Result
Game state should not reset.

### Actual Result
Game Board changes from
 right to left or reverse.

### Status
Failed

### Remarks
Regression around
 localisation.

### Browser
Chrome

---

## TC47 - Verify theme switch during active game preserves board.

### Preconditions
Game is active.

### Test Steps
1. Make move.
2. Toggle theme.
3. Continue playing.

### Test Data
Light/Dark

### Expected Result
Only theme should
 change; 
game should continue.

### Actual Result
Same as expected

### Status
Passed

### Remarks
UI state regression.

### Browser
Chrome

---

## TC48 - Verify mobile layout remains usable.

### Preconditions
Browser/device
 emulator is available.

### Test Steps
1. Resize to mobile.
2. Login.
3. Play a move.
4. Check controls.

### Test Data
390x844

### Expected Result
Board and buttons should
 be usable without overlap.

### Actual Result
Same as expected

### Status
Passed

### Remarks
Responsive check.

### Browser
Chrome

---

## TC49 - Verify Save Changes button is disabled when no profile changes are made.

### Preconditions
User is logged in and 
Profile page is opened.

### Test Steps
1. Navigate to Profile page.
2. Do not modify any field.
3. Observe Save Changes
 button state.
4. Click Save Changes
 button if enabled.
5. Observe toast message
 behavior

### Test Data
No profile changes

### Expected Result
Save Changes button 
should remain disabled
 until user modifies
 profile information.
 No success toast
 should appear without
 actual changes.

### Actual Result
Save Changes button is
 enabled all the time and
 clicking it displays 
“Saved” toast even
 when no changes were 
made.

### Status
Failed

### Remarks
Bug: incorrect form
 state management and
 misleading success
 feedback.

### Browser
Chrome

---

## TC50 - Verify keyboard navigation reaches Main controls.

### Preconditions
App is loaded.

### Test Steps
1. Use Tab key.
2. Move across fields/buttons.
3. Press Enter/Space.

### Test Data
Keyboard only

### Expected Result
Main controls should
 be reachable and usable.

### Actual Result
Same as expected

### Status
Passed

### Remarks
Accessibility check.

### Browser
Chrome

---

## TC51 - Verify focus indicator is visible on buttons and cells.

### Preconditions
User is on game page.

### Test Steps
1. Navigate using keyboard.
2. Observe focus style on 
controls.

### Test Data
Keyboard focus

### Expected Result
Focus should be visible.

### Actual Result
Same as expected

### Status
Passed

### Remarks
Accessibility usability.

### Browser
Firefox

---

## TC52 - Verify app loads within acceptable time.

### Preconditions
App file is available locally.

### Test Steps
1. Start timer.
2. Open app.
3. wait until login form appears.

### Test Data
Threshold: 3s

### Expected Result
Login form should
 appear within 3 seconds.

### Actual Result
Same as expected

### Status
Passed

### Remarks
Performance smoke check.

### Browser
Chrome

---

## TC53 - Verify computer move completes within timeout.

### Preconditions
User is on game board.

### Test Steps
1. Make player move.
2. wait for computer move.
3. Measure response.

### Test Data
Timeout: 3s

### Expected Result
Computer should
 respond within 3 seconds.

### Actual Result
Same as expected

### Status
Passed

### Remarks
Useful automation assertion.

### Browser
Chrome

---

## TC54 - Verify long username does not break layout.

### Preconditions
Login page is displayed.

### Test Steps
1. Enter long username.
2. Submit.
3. Check header/profile layout.

### Test Data
Long text username

### Expected Result
App should validate
 or display safely without 
breaking UI.

### Actual Result
UI breaks

### Status
Failed

### Remarks
Bug: Boundary/UI check.

### Browser
Chrome

---

## TC55 - Verify special characters in username are handled safely.

### Preconditions
Login page is displayed.

### Test Steps
1. Enter special character 
username.
2. Submit.
3. Check displayed name.

### Test Data
Mona-O'QA

### Expected Result
Name should
 be accepted or safely 
validated.

### Actual Result
Same as expected

### Status
Passed

### Remarks
Security and display check.

### Browser
Firefox

---

## TC56 - Verify script text in username does not execute.

### Preconditions
Login page is displayed.

### Test Steps
1. Enter script-like text.
2. Submit
.
3. Observe page.

### Test Data
<script>alert(1)</script>

### Expected Result
Script must not 
execute; 
value should be rejected
 or escaped.

### Actual Result
Same as expected

### Status
Passed

### Remarks
Basic XSS check.

### Browser
Chrome

---

## TC57 - Verify repeated game cycles remain stable.

### Preconditions
User is logged in.

### Test Steps
1. Start new game.
2. Make one move.
3. Restart game.
4. Repeat several times.

### Test Data
5 cycles

### Expected Result
App should remain stable
 and no false history
 should be created.

### Actual Result
Same as expected

### Status
Passed

### Remarks
Stability regression.

### Browser
Chrome

---

