import 'dart:io';

void main() {
  print('Welcome to Tic Tac Toe!\n');
  print('Player 1 (X) - Player 2 (O)\n');

  List<String> board =
      List.filled(9, ' '); // Initialize the board with empty spaces
  bool isPlayer1Turn = true; // Flag to track player's turn
  int moves = 0; // Counter to track moves made

  while (true) {
    printBoard(board); // Print the current state of the board
    print(
        '\n${isPlayer1Turn ? "Player 1" : "Player 2"}, enter your move (1-9): ');

    String? input = stdin.readLineSync(); // Read user input
    if (input == null) {
      print('Invalid input. Please try again.');
      continue;
    }

    try {
      int move = int.parse(input); // Convert input to an integer
      if (move < 1 || move > 9 || board[move - 1] != ' ') {
        print('Invalid move. Try again.');
        continue;
      }

      // Update the board with the player's move
      board[move - 1] = isPlayer1Turn ? 'X' : 'O';
      moves++;

      // Check for a winner or draw
      if (checkWin(board)) {
        printBoard(board);
        print('${isPlayer1Turn ? "Player 1" : "Player 2"} wins!');
        break;
      } else if (moves == 9) {
        printBoard(board);
        print("It's a draw!");
        break;
      }

      isPlayer1Turn = !isPlayer1Turn; // Switch turns between players
    } catch (e) {
      print('Invalid input. Please enter a number (1-9).');
    }
  }
}

void printBoard(List<String> board) {
  print('');
  print(
      ' ${board[0]} | ${board[1]} | ${board[2]} '); // Print the first row of the board
  print('-----------');
  print(
      ' ${board[3]} | ${board[4]} | ${board[5]} '); // Print the second row of the board
  print('-----------');
  print(
      ' ${board[6]} | ${board[7]} | ${board[8]} '); // Print the third row of the board
  print('');
}

bool checkWin(List<String> board) {
  // Check rows
  for (int i = 0; i < 9; i += 3) {
    if (board[i] != ' ' &&
        board[i] == board[i + 1] &&
        board[i] == board[i + 2]) {
      return true;
    }
  }

  // Check columns
  for (int i = 0; i < 3; i++) {
    if (board[i] != ' ' &&
        board[i] == board[i + 3] &&
        board[i] == board[i + 6]) {
      return true;
    }
  }

  // Check diagonals
  if (board[0] != ' ' && board[0] == board[4] && board[0] == board[8]) {
    return true;
  }
  if (board[2] != ' ' && board[2] == board[4] && board[2] == board[6]) {
    return true;
  }

  return false;
}
