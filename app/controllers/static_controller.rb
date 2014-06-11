class StaticController < ApplicationController
	#layout 'layouts/sample'
  def home
  end

  def about
  end

  def contact
  end

  def sample
  	 @districts = District.all
  	 @mandals  = Mandal.all
  end

end
