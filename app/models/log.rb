# == Schema Information
#
# Table name: logs
#
#  id          :bigint(8)        not null, primary key
#  exercise_id :integer          not null
#  user_id     :integer          not null
#  weighted    :boolean          not null
#  weight      :decimal(, )      not null
#  reps        :integer          not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Log < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable


end
