class RegistrationsController < Devise::RegistrationsController
  protected

  def after_sign_up_path_for(resource)
    choose_profile_index_path
  end
end