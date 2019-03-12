class LogsController < ApplicationController
  before_action :authenticate_user!
  def index
    @title = "Logs"
  end
end
