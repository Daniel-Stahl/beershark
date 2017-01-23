class BarKeepController < ApplicationController
  # before_action :set_member

  def new
    @bar_keep = current_member.build_bar_keep
  end

  def create
    @bar_keep = current_member.build_bar_keep(profile_params)
    
    respond_to do |format|
      if @bar_keep.save
        format.html { redirect_to root_path, notice: 'Barkeep profile was successfully created.' }
      else
        format.html { render :new }
        format.json { render json: @bar_keep.errors, status: :unprocessable_entity }
      end
    end
  end

  private

    def profile_params
      params.require(:bar_keep).permit(:bio, :member_id)
    end

    # def set_member
    #   @member = Member.find(params[:member_id])
    # end

end
