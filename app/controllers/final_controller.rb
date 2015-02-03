class FinalController < ApplicationController

  def index
     @park = Park.all
  end

  def show
     @park = Park.find_by(id:params["id"])
     @park_features = Park_feature.where(park_id: @park.id)
     @features = []
     @park_features.each do |park_feature|
     @features << Feature.find_by(id: park_feature.feature_id)
  end
end

  
end