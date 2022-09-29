class SudokuController < ApplicationController
  def index
    @sudokus = Sudoku.all
  end

  def show
    @sudoku = Sudoku.find(params[:id])
  end

end
