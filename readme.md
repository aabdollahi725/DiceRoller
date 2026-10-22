# DiceRoller

A simple dice rolling app for iPhone and iPad, built with SwiftUI. Add up to five dice and tap each one to roll it independently.

## Features

- Roll six-sided dice with random values from 1 to 6.
- Add or remove dice, keeping between one and five on screen.
- Tap any die to roll just that die.
- Display dice faces using SF Symbols.
- Animate changes to the number of dice.
- Run without third-party dependencies.

## Requirements

- Xcode with the iOS 27 SDK. The project was created with Xcode 27.1.
- An iPhone or iPad simulator, or a device running iOS/iPadOS 27.0 or later, matching the current deployment target.

## Getting Started

1. Clone or download this repository.
2. Open `DiceRoller.xcodeproj` in Xcode.
3. Select the `DiceRoller` scheme and an iPhone or iPad simulator.
4. Press **Command-R** to build and run.

To run on a physical device, select your development team in the app target's **Signing & Capabilities** settings and choose the connected device as the run destination.

## Usage

The app starts with one die showing a value of 1.

- Tap a die to generate a new value. A roll can produce the same value again.
Tap **+** to add a die, up to a maximum of five.
- Tap **−** to remove a die, down to a minimum of one.

Each newly added die starts at 1. Dice values are held in view state and are not saved between launches.

## Project Structure

| File or folder | Purpose |
| --- | --- |
| `DiceRoller/DiceRollerApp.swift` | SwiftUI app entry point. |
| `DiceRoller/ContentView.swift` | Main screen, dice layout, and add/remove controls. |
| `DiceRoller/DiceView.swift` | Individual die, local state, and random roll action. |
| `DiceRoller/Assets.xcassets` | App assets and background color. |
| `DiceRollerTests/` | Unit test target. |
| `DiceRollerUITests/` | UI test target. |

## Contributing

Issues and pull requests are welcome. When reporting a bug, include your Xcode version, device or simulator, and steps to reproduce it. For interface changes, include a screenshot and describe the expected behavior.
