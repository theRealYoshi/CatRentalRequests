# == Schema Information
#
# Table name: cats
#
#  id          :integer          not null, primary key
#  birth_date  :datetime         not null
#  color       :string           not null
#  name        :string           not null
#  sex         :string(1)        not null
#  description :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Cat < ActiveRecord::Base
  validates :color, presence: true
  validates :sex, presence: true,
    inclusion: { in: %w(M F),
    message: "%{value} is not a valid sex" },
    length: { is: 1 }
  validates :birth_date, :name, presence: true

  def age
    Time.now.year - birth_date.year
  end

  has_many :requests, class_name: "CatRentalRequest", foreign_key: :cat_id, primary_key: :id, dependent: :destroy
end
