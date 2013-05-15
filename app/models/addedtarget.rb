class Addedtarget < ActiveRecord::Base
  attr_accessible :adddec, :addmagnitude, :addra, :addtarget, :proposal_id
  
  belongs_to :proposals
end
