class DressageTestsController < ApplicationController
  autocomplete :dressage_tests, :name, :extra_data => [:year, :level, :org_name]
   before_action :authenticate_user!, except: [:show, :index ]

def index
  # respond_to do |format|
  #   if params[:term]
  #     @dressage_tests = DressageTest.search_by_test(params[:term]).with_pg_search_highlight
  #   else
  #     @dressage_tests = DressageTest.all
  #   end
  # format.json
  # format.html
  # end


    # Initialize filterrific with the following params:
    # * `Student` is the ActiveRecord based model class.
    # * `params[:filterrific]` are any params submitted via web request.
    #   If they are blank, filterrific will try params persisted in the session
    #   next. If those are blank, too, filterrific will use the model's default
    #   filter settings.
    # * Options:
    #     * select_options: You can store any options for `<select>` inputs in
    #       the filterrific form here. In this example, the `#options_for_...`
    #       methods return arrays that can be passed as options to `f.select`
    #       These methods are defined in the model.
    #     * persistence_id: optional, defaults to "<controller>#<action>" string
    #       to isolate session persistence of multiple filterrific instances.
    #       Override this to share session persisted filter params between
    #       multiple filterrific instances. Set to `false` to disable session
    #       persistence.
    #     * default_filter_params: optional, to override model defaults
    #     * available_filters: optional, to further restrict which filters are
    #       in this filterrific instance.
    #     * sanitize_params: optional, defaults to `true`. If true, all filterrific
    #       params will be sanitized to prevent reflected XSS attacks.
    # This method also persists the params in the session and handles resetting
    # the filterrific params.
    # In order for reset_filterrific to work, it's important that you add the
    # `or return` bit after the call to `initialize_filterrific`. Otherwise the
    # redirect will not work.
    @filterrific = initialize_filterrific(
      DressageTest,
      params[:filterrific],
      select_options: {
        sorted_by: DressageTest.options_for_sorted_by,
        filter_by_level: DressageTest.options_for_filter_by_level,
        filter_by_org_name: DressageTest.options_for_filter_by_org_name,
        filter_by_year: DressageTest.options_for_filter_by_year,
        current_filter: DressageTest.options_for_current_filter
      },
      persistence_id: false,
      default_filter_params: {},
      # available_filters: [:sorted_by],
      sanitize_params: true
    ) or return
    # Get an ActiveRecord::Relation for all students that match the filter settings.
    # You can paginate with will_paginate or kaminari.
    # Note: filterrific_find returns an ActiveRecord Relation that can be
    # chained with other scopes to further narrow down the scope of the list,
    # e.g., to apply permissions or to hard coded exclude certain types of records.
    @dressage_tests = @filterrific.find.page(params[:page])

    # Respond to html for initial page load and to js for AJAX filter updates.
    respond_to do |format|
      format.html
      format.js
    end

  # Recover from invalid param sets, e.g., when a filter refers to the
  # database id of a record that doesn’t exist any more.
  # In this case we reset filterrific and discard all filter params.
  rescue ActiveRecord::RecordNotFound => e
    # There is an issue with the persisted param_set. Reset it.
    puts "Had to reset filterrific params: #{ e.message }"
    redirect_to(reset_filterrific_url(format: :html)) and return
end

def new
find_test
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
end


def test_params
  params.require(:dressage_test).permit(:notes, :name, :org_name, :level, :year, :subtitle, moves_attributes: [:id, :letter, :move, :_destroy], links_attributes: [:id, :url, :linkname, :_destroy])
end

  def find_test
    @dressage_test = DressageTest.find params[:id]
  end


end
