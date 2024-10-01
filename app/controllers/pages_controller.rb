class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]
  # TODO authenticate for all other pages except home

  def home
  end
end
