# tic_tac_toe

Plays a game of Tic-Tac-Toe between two human opponents.

Crosses and Noughts take turns placing pieces on a 3x3 grid attempting to get three in a row vertically, horizontally or diagonally.

If the board is filled and neither player is able to get three in a row then the game is  draw.

Board: [1,2,3]
       [4,5,6]
       [7.8.9]

On the first players turn they enter a number from 1-9 and a piece will be placed on the board in the place of the number entered, for example: 5.

Board after first turn: [1,2,3]
                        [4,X,6]
                        [7,8,9]

The second player then gets a turn and is able to place a piece on any square not already occupied by a placed piece, for example: 6

Board after second turn: [1,2,3]
                         [4,X,O]
                         [7,8,9]
                        
This pattern continues until one player gets three in a row (a victory) or until the board is filled with neither player getting three in a row (a draw).