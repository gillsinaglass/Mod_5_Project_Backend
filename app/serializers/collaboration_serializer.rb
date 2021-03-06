class CollaborationSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :git_hub, :pitch, :status, :image_one, :image_two, :image_three, :video, :works, :user, :users_uniq
  has_many :works, serializer: WorkSerializer

end
