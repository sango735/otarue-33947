class UserOrder
  include ActiveModel::Model
  attr_accessor :token, :name, :postal_code, :area_id, :prefecture, :city, :building_name, :phone_number, :user_id, :item_id

  with_options presence: true do
    validates :token
    validates :postal_code, format: { with: /\A[0-9]{3}-[0-9]{4}\z/ }
    validates :area_id, numericality: { other_than: 1, message: 'Select' }
    validates :prefecture
    validates :city
    validates :phone_number, numericality: { only_integer: true },length: {maximum: 11}
    validates :user_id
    validates :item_id
  end
end