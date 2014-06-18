class Pic < ActiveRecord::Base

	mount_uploader :image, ImageUploader

	belongs_to :category

	validates :title, presence: true
	validates :title, uniqueness: true

	def self.search(search)
    if search
      find(:all, :conditions => ['title ILIKE ? OR author ILIKE ?', "%#{search}%", "%#{search}%"])
    else
      find(:all)
    end
  end


end
