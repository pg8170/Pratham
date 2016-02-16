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
      redirect_to electricalexpenses_path, notice: "The expense has been uploaded."
    else
      render "new"
    end
  end

def destroy
    @expenses = Electricalexpense.find(params[:id])
    @expenses.destroy
    redirect_to electricalexpenses_path, notice:  "The expense has been deleted."
 end

 private
  def expenses_params
    params.require(:expenses).permit(:name, :description, :amount, :month)
  end


end
