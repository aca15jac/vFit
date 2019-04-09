# == Schema Information
#
# Table name: exercises
#
#  id            :bigint(8)        not null, primary key
#  exercise_name :string
#  muscle_type_1 :string
#  muscle_type_2 :string
#  muscle_type_3 :string
#  description   :string
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

class Exercise < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable


end
