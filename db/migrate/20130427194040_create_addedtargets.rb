class CreateAddedtargets < ActiveRecord::Migration
  def change
    create_table :addedtargets do |t|
      t.string :addtarget
      t.string :addra
      t.string :adddec
      t.string :addmagnitude
      t.integer :proposal_id

      t.timestamps
    end
  end
end
