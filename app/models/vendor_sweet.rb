class VendorSweet < ApplicationRecord
  belongs_to :vendor
  belongs_to :sweet 

  validates :price, presence: true
  # exclusion: { in: %w(www us ca jp) }
end
