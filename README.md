# Ruby Tic Tac Toe

## Objectives

1. Build a CLI Tic Tac Toe game!
2. Encapsulate Tic Tac Toe in a `main.rb`.

## Overview

We build a 2 player CLI version of Tic Tac Toe. The game play will be very similar to other versions of TicTacToe.

### Your Object Oriented Tic Tac Toe

We're going to be building a very well encapsulated object for Tic Tac Toe where each instance method will represent a discrete, single responsibility or functionality of a Tic Tac Toe game.

We'll be following the Tic Tac Toe conventions of representing the board as an array with 9 elements where `" "` represents an empty cell in the board.

We'll be getting user input via `gets` and a player will choose a position by entering 1-9. Our program will then fill out the appropriate position on the board with the player's token.

We will keep track of which player's turn it is and how many turns have been played. We will check to see, at every turn, if there is a winner. If there is a winner, we'll congratulate them. If there is a tie, we will inform our players.

### Project Structure

```bash

├── bin
│   └── main
├── lib
    └── board.rb
    └── player.rb

├── .rubocop.yml
├── .stickler.yml
├── README.md

```

## Built With

- Ruby, Rubocop

## Getting Started

Clone directory and run with Ruby. Open terminal inside projects bin folder and type "bin/main.rb" and hit enter.

### Prerequisites

Ruby installed on your computer to be able to run the script in /bin/.

## What it does:

1. Ask the user for their move by specifying a position between 1-9.
2. Receive the user's input.
3. Translate that input into an index value.
4. If the move is valid, make the move and display the board.
5. If the move is invalid, ask for a new move until a valid move is received.

## Authors

👤 **Miguel Angel Enciso Sanchez**

- Github: [@rootDEV2990](https://github.com/rootDEV2990)
- Twitter: [@m29902](https://twitter.com/m29902)
- Linkedin: [linkedin](https://www.linkedin.com/in/miguel-enciso-6474741a1/)
- Medium: [medium](https://medium.com/@website.dev)

👤 **Josue Abraham**

- Github: [Joecleverman](https://github.com/Joecleverman)
- Linkedin: [linkedin](https://www.linkedin.com/in/cleverman1981/)

## 🤝 Contributing

Contributions, issues and feature requests are welcome!

Feel free to check the [issues page](issues/).

## Show your support

Give a ⭐️ if you like this project!

Bitcoin donations accepted ;)
