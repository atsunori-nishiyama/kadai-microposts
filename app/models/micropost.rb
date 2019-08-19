class Micropost < ApplicationRecord
  belongs_to :user
  
  validates :content, presence: true, length: { maximum: 255 }
  
  # has many :favoritesでmicropostモデルは複数のfavoriteモデルに関連づけられる事を定義
  # has many :users, through: :favoritesで、micropostモデルはFavoriteモデルを介して
  # 複数のUserモデルに関連づけられる事を定義
  has_many :favorites, foreign_key: 'micropost_id', dependent: :destroy
  has_many :users, through: :favorites
end
