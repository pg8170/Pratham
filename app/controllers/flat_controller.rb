class FlatController < ApplicationController
  def phone
  	#@computers = Computer.all
	@tasks_grid = initialize_grid(FlatOwner)
  end

  def sqfeet
  	@tasks_grid = initialize_grid(Flatsq)
  end
end
