class ElectricalexpensesController < ApplicationController

def index
    @expenses = Electricalexpense.all
  end

def new
    @expenses= Electricalexpense.new
end

def show

end


def create
    @expenses = Electricalexpense.new(expenses_params)

    if @expenses.save
      flash[:success] = "Electricalexpense has been successfully updated"
      redirect_to electricalexpenses_path
    else
      render "new"
    end
  end

def destroy
    @expenses = Electricalexpense.find(params[:id])
    @expenses.destroy
    redirect_to electricalexpense_path, notice:  "The expense has been deleted."
 end

 private
  def expenses_params
    params.require(:expenses).permit(:name, :description, :amount, :month)
  end


end
