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


--------------------------------


import java.util.HashSet;

class GfG {

    static int removeDuplicates(int[] arr) {
        
        // To track seen elements
        HashSet<Integer> s = new HashSet<>();
        
        // To maintain the new size of the array
        int idx = 0;  

        for (int i = 0; i < arr.length; i++) {
            if (!s.contains(arr[i])) { 
                s.add(arr[i]);  
                arr[idx++] = arr[i];  
            }
        }

        // Return the size of the array 
        // with unique elements
        return idx;
    }

    public static void main(String[] args) {
        int[] arr = {1, 2, 2, 3, 4, 4, 4, 5, 5};
        int newSize = removeDuplicates(arr);

        for (int i = 0; i < newSize; i++) {
            System.out.print(arr[i] + " ");
        }
    }
}

------------------------------------------------

class GfG{
    static int subarraySum(int[] arr) {
        
        int n = arr.length;
        int result = 0, temp = 0;

        // pick starting point
        for (int i = 0; i < n; i++) {

            // pick ending point
            temp = 0;
            for (int j = i; j < n; j++) {

                // sum subarray between current starting 
                // and ending points
                temp += arr[j];
                result += temp;
            }
        }
        return result;
    }

    public static void main(String[] args) {
        int[] arr = {1, 4, 5, 3, 2};
        System.out.println(subarraySum(arr));
    }
}
