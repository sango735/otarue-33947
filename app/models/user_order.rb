class UserOrder
  include ActiveModel::Model
  attr_accessor :token, :price, :name, :postal_code, :area_id, :prefecture, :city, :building_name, :phone_number, :user_id, :item_id

  with_options presence: true do
    validates :token
    validates :name
    validates :postal_code, format: { with: /\A[0-9]{3}-[0-9]{4}\z/ }
    validates :area_id, numericality: { other_than: 1, message: 'Select' }
    validates :prefecture
    validates :city
    validates :phone_number, numericality: { only_integer: true },length: {maximum: 11}
    validates :item_id
  end

  def save
    user = User.create(name: name,postal_code: postal_code, area_id: area_id, prefecture: prefecture, city: city, phone_number: phone_number,item_id: item_id)
    Order.create(item_id: item_id, user_id: user.id)
  end 
end