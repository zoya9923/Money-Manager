class Transaction < ApplicationRecord

    # polymorfic relation with income and expenses
        belongs_to :transactable, polymorphic: true
end
