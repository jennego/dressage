class DressageTestsController < ApplicationController
def index
end

def new
  @dressage_test = DressageTest.new

end

def edit
end

def create
    @dressage_test = DressageTest.new test_params
    if @dressage_test.save
      redirect_to root_path
    else
      render :new
    end
end

def show
  find_test
end


def test_params
  params.require(:dressage_test).permit(:notes, :name, :org_name, :level, :year, :subtitle, moves_attributes: [:id, :letter, :move, :_destroy])
end

  def find_test
    @dressage_test = DressageTest.find params[:id]
  end

end
