class Item < ApplicationRecord
  belongs_to :user, optional: true

  def self.shared_total
    where(shared: true).sum(:price)
  end

  def self.shared_per_person #割り勘の合計とその人数と一人当たりの割り勘の金額
    total = shared_total
    count = User.count
    count > 0 ? total / count : 0
  end
end
