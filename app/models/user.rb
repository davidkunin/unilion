class User < ActiveRecord::Base
  acts_as_follower
  acts_as_followable
  has_many :comments
  has_one :profile, dependent: :destroy
  has_many :articles
  has_many :likes
  has_many :l_articles, through: :likes, source: :article

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
