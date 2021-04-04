class UserCupon < ApplicationRecord
  belongs_to :user
  belongs_to :cupon
  belongs_to :order
end
