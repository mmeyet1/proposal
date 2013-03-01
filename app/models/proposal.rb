class Proposal < ActiveRecord::Base
  attr_accessible :abstract, :coi_country, :coi_email, :coi_inst, :coi_name, :config, :coord_obs, :cycle, :dec, :description, :flags, :instrument, :justify_dup, :keyword1, :keyword2, :keyword3, :magnitude, :observe_orb, :observe_target, :par_orb, :past_usage, :pi_country, :pi_email, :pi_inst, :pi_name, :prime_orb, :prop_category, :prop_pdf, :prop_period, :ra, :sci_category, :sci_justify, :special_req, :target, :title
end
