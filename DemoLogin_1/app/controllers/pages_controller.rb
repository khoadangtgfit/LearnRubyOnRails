class PagesController < ApplicationController
  before_action :authenticate_user!
  # before_action :get_users
  def index
    @timesheets = Timesheet.all
    # @users = User.order(created_at: :desc)
    # @users = @users.where('email ILIKE ?', "%#{params[:search]}%") if params[:search].present?
    # @pagy, @users = pagy(@users, items: 5)

    # respond_to do |format|
    #   format.html
    #   format.json { render json: { html: render_html_table } }
    # end
    # if params[:search]
    #   @pagy, @users = pagy(User.where('email LIKE ?', "%#{params[:search]}%"), items: 5)
    # else
    #   @pagy, @users = pagy(User.all, items: 5)
    # end
  end

  def get_users
    @users = User.all
  end

  # def search
  #   @users = User.where('username like ?', "%#{params[:q]}%")
  # end

  private ##

  def render_html_table
    render_to_string(partial: 'pages/form1', layout: false, locals: { users: @users })
  end
end
