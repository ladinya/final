class Park < ActiveRecord::Base
  belongs_to :airport
  has_many :park_features
  has_many :features, through: :park_features
end
