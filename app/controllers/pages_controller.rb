class PagesController < ApplicationController
  include Reviews
  before_action :authenticate_user!, only: [:logout]

  def logout
    sign_out(current_user)
    redirect_to root_path
  end

  def test
  end

  # TODO: Unused method
  # def page
  #   @page_key = request.path[1..-1]
  #   render "pages/#{@page_key}"
  # end
end
