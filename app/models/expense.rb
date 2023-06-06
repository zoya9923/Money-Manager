class Expense < ApplicationRecord
    validates_presence_of :category
    validates_presence_of :amount 
    validates_presence_of :user_reference
    validates_presence_of :date

     
end
