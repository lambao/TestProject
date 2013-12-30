class Home < ActiveRecord::Base
  require 'carrierwave/orm/activerecord'
  #mount_uploader :avatar, AvatarUploader
  #attr_accessor :avatar, :avatar_cache, :remove_avatar
end
