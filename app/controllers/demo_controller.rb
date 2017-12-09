class DemoController < ApplicationController
  def index
    render('index')
  end

  def hello
    @user = User.all

    respond_to do |format|
      format.html
      format.json {render json: @user}
    end

  end

  def other_hello
    redirect_to(:action => 'index')
  end
end
