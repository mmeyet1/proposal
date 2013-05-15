class Addedtargetdetail < ActiveRecord::Base
  attr_accessible :addconfig, :addflags, :addobserve_orb, :addobserve_target, :proposal_id
  
  belongs_to :proposals
end
