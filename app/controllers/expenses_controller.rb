class ExpensesController < ApplicationController
    def create
        expense = Expense.new(expense_params)
            if expense.save
            render json: expense
            else
            render json: {error: 'Expense not inserted'}
            end
    end
    def index
        expense = Expense.all
         render json: expense
    end
    def show
        if expense.present?
        render json: ExpenseSerializer.new(expense).serializable_hash, status:200
        else
        render json: {error: 'expense not found'}
        end
    end
    def update
        expense = Expense.find_by(id: params[:id])
        if expense.present?
            expense.update(expense_params)
            render json: {message: 'expense updated successful'}
        else
            render json: {error: 'expense not updated'}
        end
    end
    def destroy
        expense = Expense.find_by(id: params[:id])
        if expense.present?
            expense.destroy
            render json: {message: 'record deleted'}
        else
            render json: {message: 'error'}
        end
    end

    

    private
        def expense_params
            params.require(:expenses).permit(:category, :amount, :user_reference, :date)
        end
        
        


end
