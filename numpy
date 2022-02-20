import numpy as np
import random

COL = 11
ROW = 11

def create_board():
    global COl, ROW
    board = np.zeros((COL, ROW), str)
    for i in range(0, COL):
        for j in range(0, ROW):
            board[i][j] = "x"
    print(board)
    return board

def create_lines(board):
    global ROW, COL
    for i in range(0, COL):
        board[i][3] = "|"
        board[i][7] = "|"
        for j in range(0, ROW):
            board[3][j] = "_"
            board[7][j] = "_"

def check_number(board, chislo, i, j):
    global ROW, COL
    for broi in range(0, ROW):
        if chislo == board[i][broi] or chislo == board[broi][j] and broi != j and broi != i:
            return False
    return True


def generate_board(board):
    global COL, ROW
    for i in range(0, COL):
        for j in range(0, ROW):
            if i != 3 and i != 7 and j != 3 and j != 7:
                chislo = random.randrange(1, 10)
                while not check_number(board, chislo, i, j):
                    chislo = random.randrange(1, 10)
                board[i][j] = chislo
    create_lines(board)
    return board


board = create_board()

#print("\n", board)

print("\n", generate_board(board))

