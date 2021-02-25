class CreateContacts < ActiveRecord::Migration[6.0]
  def change
    create_table :contacts do |t|
      t.string      :title
      t.text        :opinion, null: false
      t.timestamps
    end
  end
end
