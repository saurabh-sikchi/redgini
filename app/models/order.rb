# == Schema Information
#
# Table name: orders
#
#  id            :integer          not null, primary key
#  delivery_date :date
#  delivery_type :string
#  delivery_time :string
#  status        :string
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  user_id       :integer
#

class Order < ActiveRecord::Base
    has_one :shopping_cart
    belongs_to :user
    has_one :address, through: :user
end
