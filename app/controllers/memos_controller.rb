class MemosController < ApplicationController
  def index
    @memos = Memo.all
  end
  def new
    @memo = Memo.new
  end

  def create
    @memo = Memo.new(memo_params)
    if @memo.save
      redirect_to root_path
    else
      render :new
    end
  end

    private

  def memo_params
    params.require(:memo).permit(:title, :content, :start_time).merge(user_id: current_user.id)
  end
end
