class PagesController < ApplicationController
  def home
  end

  def statistic
  	#@cdrs = Cdr.all
  	@cdrs = Cdr.order("calldate ASC")
  end
end
