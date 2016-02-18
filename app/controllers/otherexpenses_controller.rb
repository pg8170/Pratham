class OtherexpensesController < ApplicationController

def index
    @expenses = Otherexpense.all
  end

def new
    @expenses= Otherexpense.new
end

def show
  
end


def create
    @expenses = Otherexpense.new(expenses_params)

    if @expenses.save
    flash[:success] = "Otherexpense has been successfully updated"
     redirect_to otherexpenses_path
    else
      render "new"
    end
  end

def destroy
    @expenses = Otherexpense.find(params[:id])
    @expenses.destroy
    redirect_to otherexpenses_path
    flash[:success] =  "The expense has been deleted."
 end

 private
  def expenses_params
    params.require(:otherexpenses).permit(:name, :description, :amount, :month)
  end


end
