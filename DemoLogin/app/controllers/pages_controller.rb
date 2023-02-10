class PagesController < ApplicationController
  before_action :authenticate_user!, only: %i[edit update show destroy]

  def index
    p "#############################"
    p current_user
  end
  def new; end
end
