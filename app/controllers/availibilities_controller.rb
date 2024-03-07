class AvailibilitiesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:create]

  def create
    @availibility = Availibility.create(availibility_params)
  end

  private

  def availibility_params
    params.require(:availibility).permit(:address)
  end
end
