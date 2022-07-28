class QuestionsController < ApplicationController
  # 質問一覧表示
  def index
    @questions = Question.all
  end
  
  # 質問詳細ページ表示
  def show
    #idを指定して、questionsテーブルからレコードを取得
    @question = Question.find(params[:id])
    # p @question
  end
  
  # 質問の作成
  def new
    @question = Question.new
    
  end
  
  # 質問の登録
  def create
    # Questionモデルを初期化
    @question = Question.new(question_params)
    # QuestionモデルをDBへ保存
    @question.save
    # showへリダイレクト
    redirect_to @question
  end
  
  # 質問の編集
  def edit
  end
  
  # 質問の更新
  def update
    
  end
  
  # 質問の削除
  def delete
  end
  
  private
  def question_params
    # requireメソッドで、データのオブジェクト名を指定し、permitメソッドで、DB保存処理時のカラムを指定
    # permitメソッドで許可していない項目に関しては、DBの値の変更には使われなくなるため、安全にデータを扱える
    params.require(:question).permit(:title, :name, :content)
  end
end

