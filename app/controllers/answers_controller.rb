class AnswersController < ApplicationController
    # 質問回答の登録
    def create
        @question = Question.find(params[:question_id])
        # createメソッドにより、questionに紐づいたanswerについて、新しいレコードが1つ追加され、DBに保存される
        @question.answers.create(answer_params)
        redirect_to question_path(@question)
    end

    # 回答の削除
    def destroy
        @question = Question.find(params[:question_id])
        @answer = @question.answers.find(params[:id])
        @answer.destroy
        redirect_to @question, status: :see_other
    end

    private 
    def answer_params
        # answerモデルのnameカラムとcontentカラムのみDBへ保存される
        params.require(:answer).permit(:name, :contet)
    end
end
