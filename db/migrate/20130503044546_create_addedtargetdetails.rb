class CreateAddedtargetdetails < ActiveRecord::Migration
  def change
    create_table :addedtargetdetails do |t|
      t.string :addobserve_target
      t.string :addconfig
      t.string :addflags
      t.string :addobserve_orb
      t.integer :proposal_id

      t.timestamps
    end
  end
end
