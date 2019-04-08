# == Schema Information
#
# Table name: muscles
#
#  id           :bigint(8)        not null, primary key
#  muscle_name  :string
#  muscle_group :string
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class Muscle < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable


end
