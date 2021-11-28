class MicropostsController < ApplicationController
  def create
    @micropost = current_user.microposts.build(micropost_param)
    if @micropost.save
      flash[:success] = "Micropost created!"
      redirect_to root_url
    else
      render 'static_pages/home'
    end
  end

  def destroy
  end

  private


  def micropost_params
    params.require(:micropost).permit(:content)
  end
end