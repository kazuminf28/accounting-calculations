class User < ApplicationRecord
    has_many :items, dependent: :destroy

    def personal_total
        items.where(shared: false).sum(:price)
    end

    def total_payment
        personal_total + Item.shared_per_person
    end
end
