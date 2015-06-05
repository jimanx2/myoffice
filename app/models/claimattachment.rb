class Claimattachment < ActiveRecord::Base
    belongs_to :claim
    mount_uploader :filename, ImageUploader
end
