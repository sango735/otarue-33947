class Contact < ApplicationRecord
  with_options presence: true do
    validates :opinion
  end
end
