class CreateTargets < ActiveRecord::Migration
  def change
    create_table :targets do |t|
      t.string :adddec
      t.string :addmagnitude
      t.string :addra
      t.string :addtarget

      t.timestamps
    end
  end
end
