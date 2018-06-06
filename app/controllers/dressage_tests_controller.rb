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
  params.require(:dressage_test).permit(:move, :letter, :notes, :org_name, :level, :year)
end

end
