class CreateAddresses < ActiveRecord::Migration[7.0]
  def change
    create_table :addresses do |t|
      t.string :address
      t.belongs_to :user, foreign_key: true
      
      t.timestamps
    end
  end
end