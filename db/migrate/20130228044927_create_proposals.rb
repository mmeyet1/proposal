class CreateProposals < ActiveRecord::Migration
  def change
    create_table :proposals do |t|
      t.string :title
      t.string :pi_name
      t.string :pi_inst
      t.string :pi_email
      t.string :coi_name
      t.string :coi_inst
      t.string :coi_email
      t.string :prop_category
      t.string :sci_category
      t.string :keyword1
      t.text :keyword2
      t.string :keyword3
      t.string :instrument
      t.integer :prop_period
      t.integer :prime_orb
      t.integer :par_orb
      t.integer :cycle
      t.text :abstract
      t.string :target
      t.string :ra
      t.string :dec
      t.string :magnitude
      t.string :observe_target
      t.string :config
      t.string :flags
      t.integer :observe_orb
      t.text :sci_justify
      t.text :description
      t.text :special_req
      t.text :coord_obs
      t.text :justify_dup
      t.text :past_usage

      t.timestamps
    end
  end
end
