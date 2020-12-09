class CvsController < ApplicationController

  before_action :set_cv, only: [:show, :edit, :update, :destroy]

  def index
  	@cvs = Cv.all
  end

  def show
  end

  def new
    @cv = Cv.new
  end

  def create
    @cv = Cv.new(cv_params)
    if @cv.save
      redirect_to @cv
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @cv.update_attributes(cv_params)
      redirect_to @cv
    else
  	  render :edit
    end
  end

  def destroy
    @cv.destroy
    redirect_to cvs_path
  end

  def yulia_cv
  	@yulia_cv = Cv.find(1)
  end

  private

  def set_cv
  	@cv = Cv.find(params[:id])
  end

  def cv_params
    params.require(:cv).permit(:user_name, :user_email, :position, :education, :experience, :about)
  end

end