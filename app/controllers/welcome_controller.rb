class WelcomeController < ApplicationController

  def index
    @blogs = Blog.order('created_at ASC')
  end

end
