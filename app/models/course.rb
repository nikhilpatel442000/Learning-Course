class Course < ApplicationRecord
  has_one_attached :thumbnail

  def self.ransackable_attributes(auth_object = nil)
    super
  end

  def self.ransackable_associations(auth_object = nil)
    # ['thumbnail_attachment', 'thumbnail_blob', "blob_id", "created_at", "id", "name", "record_id", "record_type"]
  end
end
