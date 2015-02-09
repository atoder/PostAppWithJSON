class Image < ActiveRecord::Base
  belongs_to :post
  mount_uploader :attachment, AttachmentUploader
  validates :user_id, presence: true
end
