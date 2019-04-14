# == Schema Information
#
# Table name: workouts
#
#  id             :bigint(8)        not null, primary key
#  log_id         :integer
#  user_id        :integer
#  workout_number :integer
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#

class Workout < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable


end
