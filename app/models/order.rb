class Order < ApplicationRecord
  belongs_to :user
  belongs_to :service
  monetize :amount_cents

end
