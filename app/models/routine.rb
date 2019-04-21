# == Schema Information
#
# Table name: routines
#
#  id         :bigint(8)        not null, primary key
#  name       :string
#  muscle_1   :integer
#  muscle_2   :integer
#  muscle_3   :integer
#  muscle_4   :integer
#  muscle_5   :integer
#  muscle_6   :integer
#  muscle_7   :integer
#  muscle_8   :integer
#  muscle_9   :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Routine < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable


end
