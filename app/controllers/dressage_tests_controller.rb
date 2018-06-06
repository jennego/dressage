class DressageTestsController < ApplicationController
def index
end

def new
  @dressage_test = DressageTest.new
  @moves = Move.new
  @moves.dressage_test_id = @dressage_test.id
end

def edit
end

def create
end

def show
end


def test_params
  params.require(:dressage_test).permit(:notes, :org_name, :level, :year, :subtitle, move_attributes: [:id, :letter, :move, :_destroy])
end

end
