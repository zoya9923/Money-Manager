class Category < ApplicationRecord

    # polymorfic relation with income and expenses
        belongs_to :categorizable, polymorphic: true
end
