class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string      :name,          null: false
      t.string      :postal_code,   null: false
      t.integer     :area_id,       null: false
      t.string      :prefecture,    null: false
      t.string      :city,          null: false
      t.string      :building_name
      t.string      :phone_number,  null: false
      t.references  :item,          foreign_key: true
      t.timestamps
    end
  end
end
