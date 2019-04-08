# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.where(email:'jacotcher1@sheffield.ac.uk').first_or_create(password:
'pass', password_confirmation: 'pass')

#arms
Muscle.where(muscle_name:'Bicep').first_or_create(muscle_group:'Arms')
Muscle.where(muscle_name:'Tricep').first_or_create(muscle_group:'Arms')
Muscle.where(muscle_name:'Forearm').first_or_create(muscle_group:'Arms')
#back
Muscle.where(muscle_name:'Trapezius').first_or_create(muscle_group:'Back')
Muscle.where(muscle_name:'Latissimus').first_or_create(muscle_group:'Back')
Muscle.where(muscle_name:'Rhomboid').first_or_create(muscle_group:'Back')
#chest
Muscle.where(muscle_name:'Pectoralis Major').first_or_create(muscle_group:'Chest')
Muscle.where(muscle_name:'Pectoralis Minor').first_or_create(muscle_group:'Chest')
#shoulders
Muscle.where(muscle_name:'Anterior deltoids').first_or_create(muscle_group:'Shoulders')
Muscle.where(muscle_name:'Lateral deltoids').first_or_create(muscle_group:'Shoulders')
Muscle.where(muscle_name:'Posterior deltoid').first_or_create(muscle_group:'Shoulders')
#abdominals
Muscle.where(muscle_name:'Rectus abdominis').first_or_create(muscle_group:'Abdominals')
Muscle.where(muscle_name:'Transverse abdominals').first_or_create(muscle_group:'Abdominals')
Muscle.where(muscle_name:'Obliques').first_or_create(muscle_group:'Abdominals')
#legs
Muscle.where(muscle_name:'Hamstrings').first_or_create(muscle_group:'Legs')
Muscle.where(muscle_name:'Adductors').first_or_create(muscle_group:'Legs')
Muscle.where(muscle_name:'Abductors').first_or_create(muscle_group:'Legs')
Muscle.where(muscle_name:'Quadriceps').first_or_create(muscle_group:'Legs')
Muscle.where(muscle_name:'Calves').first_or_create(muscle_group:'Legs')
#gluteus
Muscle.where(muscle_name:'Gluteus').first_or_create(muscle_group:'Gluteus')
