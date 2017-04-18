class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :articles
  has_many :likes, dependent: :destroy
  has_many :postings, foreign_key: :poster_id, class_name: Comment
  has_many :receivings, foreign_key: :receiver_id, class_name: Comment
end
