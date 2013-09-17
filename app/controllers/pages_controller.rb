class PagesController < ApplicationController
  def home
  end

  def statistic
  	@cdrs = Cdr.all
  end
end
