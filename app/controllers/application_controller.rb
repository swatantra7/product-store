class ApplicationController < ActionController::Base

  before_action :authenticate_user!

  def render_modal(partial)
    render partial: 'shared/modal', locals: { partial: partial }
  end

end
