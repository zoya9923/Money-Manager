class ExpensesSerializer < ActiveModel::Serializer
  attributes :id ,:category, :amount, :user_reference, :date
end
