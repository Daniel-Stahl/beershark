class BarKeepController < ApplicationController
  before_action :authenticate_member!
  before_action :require_permission, only: [:edit, :update, :dashboard]
  before_action :find_barkeep, only: [:show, :edit, :update, :dashboard]


  def new
    @bar_keep = current_member.build_bar_keep
  end

  def create
    @bar_keep = current_member.build_bar_keep(profile_params)
    
    respond_to do |format|
      if @bar_keep.save
        format.html { redirect_to dashboard_bar_keep_path(@bar_keep), notice: 'Barkeep profile was successfully created.' }
      else
        format.html { render :new }
        format.json { render json: @bar_keep.errors, status: :unprocessable_entity }
      end
    end
  end

  def show
  end

  def edit

  end

  def update
    if @bar_keep.update(profile_params)
      redirect_to dashboard_bar_keep_path(@bar_keep), notice: "Your profile was succesfully updated!"
    else
      render 'edit'
    end
  end

  def dashboard
  end

  private

    def find_barkeep
      @bar_keep = BarKeep.find(params[:id])
    end

    def require_permission
      find_barkeep
      unless @bar_keep == current_member.bar_keep
        redirect_to root_path, notice: "Access Denied!"
      end
    end

    def profile_params
      params.require(:bar_keep).permit(:member_id, :bio, :profile_pic, :company_name)
    end
end