class Invite < ApplicationRecord
  belongs_to :user
  def to_param
    token
  end
end
