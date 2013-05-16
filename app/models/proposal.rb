class Proposal < ActiveRecord::Base
  has_many :addedtarget
  has_many :addedcoi
  has_many :addedtargetdetail
  accepts_nested_attributes_for :addedtarget, :reject_if => :all_blank, :allow_destroy => true
  accepts_nested_attributes_for :addedcoi, :reject_if => :all_blank, :allow_destroy => true
  accepts_nested_attributes_for :addedtargetdetail, :reject_if => :all_blank, :allow_destroy => true

  serialize :keyword1
  attr_accessible :abstract, :coi_email, :coi_inst, :coi_name, :coi_country, :config, :coord_obs, :cycle, :dec, :description, :flags, :instrument, :justify_dup, :keyword1, :keyword2, :keyword3, :magnitude, :observe_orb,
  :observe_target, :par_orb, :past_usage, :pi_country, :pi_email, :pi_inst, :pi_name, :prime_orb, :prop_category, :prop_period, :ra, :sci_category, :sci_justify, :special_req, :target, :title,
  :adddec, :addmagnitude, :addra, :addtarget, :addedtarget_attributes, :addcoi_name, :addcoi_inst, :addcoi_email, :addcoi_country, :addedcoi_attributes, :addobserve_target, :addconfig, :addflags, :addobserve_orb,
  :addedtargetdetail_attributes, :user_id
   
  validates_presence_of :title, :pi_email, :pi_inst, :pi_name, :prop_category, :sci_category, :instrument, :prop_period, :cycle, :prime_orb, :abstract, :target, :ra, :dec, :magnitude, :observe_target, :config, :observe_orb, :sci_justify, :description, :keyword1 
  validates :pi_email, :format => { :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i, :on => :create }
  
  validates :keyword1, :length => {
    :maximum => 4,
    :tokenizer => lambda { |str| str.scan(/\w+/) },
    :too_long => "Please limit your maximum word choice to 3 words"
  }
  validates :sci_justify, :length => {
    :maximum => 2000,
    :tokenizer => lambda { |str| str.scan(/\w+/) },
    :too_long => "Please limit your word count to %{count} words"
  }
  validates :description, :length => {
    :maximum => 1500,
    :tokenizer => lambda { |str| str.scan(/\w+/) },
    :too_long => "Please limit your word count to %{count} words"
  }
  validates :special_req, :length => {
    :maximum => 500,
    :tokenizer => lambda { |str| str.scan(/\w+/) },
    :too_long => "Please limit your word count to %{count} words"
  }
  validates :coord_obs, :length => {
    :maximum => 500,
    :tokenizer => lambda { |str| str.scan(/\w+/) },
    :too_long => "Please limit your word count to %{count} words"
  }
  validates :justify_dup, :length => {
    :maximum => 500,
    :tokenizer => lambda { |str| str.scan(/\w+/) },
    :too_long => "Please limit your word count to %{count} words"
  }
  validates :past_usage, :length => {
    :maximum => 500,
    :tokenizer => lambda { |str| str.scan(/\w+/) },
    :too_long => "Please limit your word count to %{count} words"
  }
  
  def self.search(search)
    if search
      where('instrument LIKE ?', "%#{search}%")
    else
      scoped
    end
  end
end
