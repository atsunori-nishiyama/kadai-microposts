class Favorite < ApplicationRecord
  belongs_to :user
  belongs_to :micropost
  #relationshipと異なり、class＿nameの記載は不要
end
