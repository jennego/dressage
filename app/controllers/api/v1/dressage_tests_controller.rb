class Api::V1::DressageTestsController < Api::BaseController

  def index
    # @dressage_tests = DressageTest.order(created_at: :desc).limit(20)
    @dressage_tests = DressageTest.order_by_level
    # this will render views/api/v1/index.json.jbuilder
  end

  def show
    @test = DressageTest.find params[:id]
    # Because we installed ActiveModel Serializer then the default behaviour is
    # to use the serializer instead of the default `to_json` method that comes
    # with ActiveRecrod
  end

#   def create
#     question = Question.new question_params
#     question.user = current_user
#     if question.save
#       render json: question
#     else
#       render json: { errors: question.errors.full_messages }
#     end
#   end

#   def update
#     question = Question.find params[:id]
#     if question.update question_params
#       render json: { success: true }
#     else
#       render json: { errors: question.errors.full_messages }
#     end
#   end

#   def destroy
#     question = Question.find_by_id params[:id]
#     if question
#       question.destroy
#       render json: { success: true }
#     else
#       render json: { errors: ['Question doesn\'t exist'] }
#     end
#   end

#   private

#   def question_params
#     params.require(:question).permit(:title, :body, {tag_ids: []})
#   end

end
