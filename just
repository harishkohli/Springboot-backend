created new file
Another time to just try
next try
hello world
hello next try
hello
hello hiiiiiiiiiiiiiiiiiiiiiiiii!!!!!!!!!!!!
rajuuuuuuuuuuuuuuuuuuuuuu
hellooooooooooooooooooooooooooooooooooooooooooooooo
new changes
next one
hellooooooooooooooooooooohaiiiiiiiiiiiiii
ramuuuuuuuuuuuuuuuuuuu
helloooooo
Hiiiiiiiiiiiii
Hiiiiiiiiiiiiiiiiiii
helloooooo reyyyyy
rannnnnnnnnnnnnnnnnnnn
lappppppppppppppppp
newwwwwwwwwwwwwwwwwwwwwwww
just helloooooooooooooooooooooo
hello hello

def solve_n_queens(n):
    """
    Solves the N-Queens problem and returns all distinct solutions.
    A solution is represented as a list of strings, where each string
    represents a row of the chessboard.
    """
    solutions = []
    board = [['.' for _ in range(n)] for _ in range(n)]

    def is_safe(row, col):
        # Check column
        for i in range(row):
            if board[i][col] == 'Q':
                return False

        # Check upper-left diagonal
        r, c = row - 1, col - 1
        while r >= 0 and c >= 0:
            if board[r][c] == 'Q':
                return False
            r -= 1
            c -= 1

        # Check upper-right diagonal
        r, c = row - 1, col + 1
        while r >= 0 and c < n:
            if board[r][c] == 'Q':
                return False
            r -= 1
            c += 1
        return True

    def backtrack(row):
        if row == n:
            # Found a solution
            current_solution = ["".join(row_list) for row_list in board]
            solutions.append(current_solution)
            return

        for col in range(n):
            if is_safe(row, col):
                board[row][col] = 'Q'
                backtrack(row + 1)
                board[row][col] = '.'  # Backtrack: remove the queen

    backtrack(0)
    return solutions

# Example usage:
# solutions_4_queens = solve_n_queens(4)
# for sol in solutions_4_queens:
#     for row in sol:
#         print(row)
#     print("-" * 10)


    public static boolean checkPowersOfThree(int n) {
        int[] nums = {1, 3, 9, 27, 81, 243, 729, 2187, 6561, 19683, 59049, 177147, 531441, 1594323, 4782969};
        int idx = nums.length - 1;
        while (idx >= 0 && n > 0) {
            while (idx >= 0 && nums[idx] > n) {
                idx--;
            }

            if (nums[idx] == n) {
                return true;
            }

            n -= nums[idx];
            idx--;
        }

        return false;
    }
