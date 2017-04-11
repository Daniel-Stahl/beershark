class PatronController < ApplicationController
  before_action :authenticate_member!
  before_action :find_patron, only: [:edit, :update]
  
  def new
    @patron = current_member.build_patron
  end

  def create
    @patron = current_member.build_patron(profile_params)
    
    respond_to do |format|
      if @patron.save
        format.html { redirect_to root_path, notice: 'Patron was successfully created.' }
      else
        format.html { render :new }
        format.json { render json: @patron.errors, status: :unprocessable_entity }
      end
    end
  end

  def edit
  end

  def update
  end

  private

    def find_patron
      @patron = Patron.find(params[:id])
    end

    def profile_params
      params.require(:patron).permit(member_id, :bio, :first_name, :last_name)
    end
end