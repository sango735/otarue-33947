class User < ApplicationRecord
  has_one     :order
  belongs_to  :item
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :area
end
