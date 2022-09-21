class Sudoku < ApplicationRecord

  def validSolution(board)
    board.each do |line|
      count = 0
      line_num = 2
      el_check = []
      board.each { |li| el_check << li[line_num] }
      line_num += 1
      return false if el_check.uniq != el_check

      line.each do |el|
        return false if line.uniq != line

        count += 1
      end
      test = (0..8)

      test.each do |num|
        cat = []
        board.each { |y| cat << y[num] }
        return false if cat.uniq != cat

        p cat
      end
    end

    i = 0
    while i < 9
      i += 3
      base_one = []
      base_two = []
      base_three = []
      arr = (i - 2..i).to_a
      arr.each do |count|
        base_one << board[count - 1][0]
        base_one << board[count - 1][1]
        base_one << board[count - 1][2]
        base_two << board[count - 1][3]
        base_two << board[count - 1][4]
        base_two << board[count - 1][5]
        base_three << board[count - 1][6]
        base_three << board[count - 1][7]
        base_three << board[count - 1][8]
      end
      return false if base_one.uniq != base_one
      return false if base_two.uniq != base_two
      return false if base_three.uniq != base_three
    end
    return true
  end

end
