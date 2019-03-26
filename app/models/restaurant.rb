class Restaurant < ApplicationRecord
     mount_uploader :image, ImageUploader

     has_many :reviews
     
     validates :name, :adress, :phone, :website, :image, presence: true
     validates :phone, format: { with: /\d{3}/,
    message: "must be in the format 000 000 000" }
    validates :website, format: { with: /\Ahttps?:\/\/.*\z/,
    message: "must start with http:// or https//:" }
    validates :adress, format: { with: /\A\d+[^,]+,[^,]+, [A-Z]{2} \d{5}\z/,
    message: "must be in the formate 350 fifth avenue, New York, NT 10015" }
end
 