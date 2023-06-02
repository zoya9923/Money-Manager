class User < ApplicationRecord

   # Relationship
        has_many :expenses
        # has_many :income
        has_many :transactions

    #validations
        validates_presence_of :name
        validates_presence_of :email
        validates_presence_of :password
        validates_presence_of :token
end
