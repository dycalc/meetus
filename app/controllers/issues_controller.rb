class IssuesController < ApplicationController
  def show
    @issue = Issue.find(params[:id])
  end

  def new
    @issue = Issue.new
  end

  def create
    @issue = Issue.new(issue_params)
    @issue.save
    # 以上两行教程的原文是：Issue.create(issue_params)
    redirect_to :root
    # render plain: params[:issue].inspect测试用
  end

  def destroy
    issue = Issue.find(params[:id])
    issue.destroy
    redirect_to :root
  end

  private
  def issue_params
    params.require(:issue).permit(:title, :content)
  end
end
