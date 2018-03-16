class Invite < ApplicationRecord
  belongs_to :user
  def to_param
    id.to_s(36)
  end

  extend FriendlyId
  friendly_id :token, use: [:slugged, :finders]
end
