class CreateAddedcois < ActiveRecord::Migration
  def change
    create_table :addedcois do |t|
      t.string :addcoi_name
      t.string :addcoi_email
      t.string :addcoi_inst
      t.string :addcoi_country
      t.integer :proposal_id

      t.timestamps
    end
  end
end
