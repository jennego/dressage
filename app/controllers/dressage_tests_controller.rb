class DressageTestsController < SecuredController

    before_action :admin_logged_in_using_omniauth?
    skip_before_action :admin_logged_in_using_omniauth?, only: [:index, :show]

def index
   @dressage_tests = DressageTest.order_by_level
end

def new
  @dressage_test = DressageTest.new
end

def update 
find_test
  if @dressage_test.update test_params
    redirect_to @dressage_test
  else
    render :edit
  end
end

def destroy
  find_test
  @dressage_test.destroy
  redirect_to root_path
end

def edit
  @dressage_test = DressageTest.find params[:id]
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
  @favourite = @dressage_test.favourites.find_by_user_id find_user_by_auth0_id

end


def test_params
  params.require(:dressage_test).permit(:notes, :name, :org_name, :level, :year, :subtitle, moves_attributes: [:id, :letter, :move, :_destroy], links_attributes: [:id, :url, :linkname, :_destroy], test_links_attributes: [:id, :url, :name, :_destroy])
end

  def find_test
    @dressage_test = DressageTest.find params[:id]
  end


end
