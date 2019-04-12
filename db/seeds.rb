# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)



#Muscles seeds
#arms
Muscle.where(muscle_name:'Biceps').first_or_create(muscle_group:'Arms')
Muscle.where(muscle_name:'Triceps').first_or_create(muscle_group:'Arms')
Muscle.where(muscle_name:'Forearms').first_or_create(muscle_group:'Arms')
#back
Muscle.where(muscle_name:'Trapezius').first_or_create(muscle_group:'Back')
Muscle.where(muscle_name:'Latissimus').first_or_create(muscle_group:'Back')
Muscle.where(muscle_name:'Upper Back').first_or_create(muscle_group:'Back')
Muscle.where(muscle_name:'Lower Back').first_or_create(muscle_group:'Back')
#chest
Muscle.where(muscle_name:'Pectoralis Major').first_or_create(muscle_group:'Chest')
Muscle.where(muscle_name:'Pectoralis Minor').first_or_create(muscle_group:'Chest')
#shoulders
Muscle.where(muscle_name:'Anterior Deltoids').first_or_create(muscle_group:'Shoulders')
Muscle.where(muscle_name:'Lateral Deltoids').first_or_create(muscle_group:'Shoulders')
Muscle.where(muscle_name:'Posterior Deltoids').first_or_create(muscle_group:'Shoulders')
#abdominals
Muscle.where(muscle_name:'Rectus Abdominis').first_or_create(muscle_group:'Abdominals')
Muscle.where(muscle_name:'Transverse Abdominis').first_or_create(muscle_group:'Abdominals')
Muscle.where(muscle_name:'Obliques').first_or_create(muscle_group:'Abdominals')
#legs
Muscle.where(muscle_name:'Hamstrings').first_or_create(muscle_group:'Legs')
Muscle.where(muscle_name:'Adductors').first_or_create(muscle_group:'Legs')
Muscle.where(muscle_name:'Abductors').first_or_create(muscle_group:'Legs')
Muscle.where(muscle_name:'Quadriceps').first_or_create(muscle_group:'Legs')
Muscle.where(muscle_name:'Calves').first_or_create(muscle_group:'Legs')
#gluteus
Muscle.where(muscle_name:'Gluteus').first_or_create(muscle_group:'Gluteus')


#Exercises seeds
#Arms
#Biceps
Exercise.where(exercise_name:"Barbell Curl").first_or_create(muscle_type_1:"Biceps", muscle_type_2:"Forearms", weighted:"true", description:"
  While holding the upper arms stationary, curl the weights forward whilst contracting the biceps as you breathe out.
  Continue the movement until your biceps are fully contracted and the bar is at shoulder level.
  Hold the contracted position for a second and squeeze the biceps hard.
  Slowly bring the weight back down to the starting position.")
Exercise.where(exercise_name:"Dumbell Curl").first_or_create(muscle_type_1:"Biceps", muscle_type_2:"Forearms", weighted:"true", description:"
  Stand up or sit down with a straight back and a dumbbell in each hand at arm's length.
  Raise one dumbbell and twist your forearm until it is vertical and your palm faces the shoulder.
  Lower to original position and repeat with opposite arm.")
Exercise.where(exercise_name:"Hammer Curl").first_or_create(muscle_type_1:"Biceps", muscle_type_2:"Forearms", weighted:"true", description:"
  Hold the dumbbells with a neutral grip (thumbs facing the ceiling).
  Slowly lift the dumbbell up to chest height.
  Return to starting position and repeat.")
#Triceps
Exercise.where(exercise_name:"Seated Tricep extensions").first_or_create(muscle_type_1:"Triceps", weighted:"true", description:"
  Sit on the bench and hold a dumbbell with both hands.
  Raise the dumbbell overhead at arms length, holding the weight up with the palms of your hands.
  Keep your elbows in while you lower the weight behind your head, your upper arms stationary.
  Raise the weight back to starting position.")
Exercise.where(exercise_name:"Dips (Narrow elbows)").first_or_create(muscle_type_1:"Triceps", weighted:"true", description:"
  Hold your body at arms length aboce the bars.
  Inhale slowly and lower yourself downward.
  Keep your elbows close to your body and your torso upright.
  Exhale, and using your triceps raise your body back to the starting position.")
Exercise.where(exercise_name:"Cable push downs").first_or_create(muscle_type_1:"Triceps", weighted:"true", description:"
  Grip the pulley bar with palms facing down at shoulder width.
  Stand straight with a small forward incline.
  Keep your upper arms close to your body, and slowly bring the pulley bar down until your arms are fully extended.
  Pause when you are at the contracted position of the motion, then slowly raise the pulley back back to the starting point.")
Exercise.where(exercise_name:"Bench Dips").first_or_create(muscle_type_1:"Triceps", weighted:"true", description:"
  Grip the edge of the bench with your hands, keep your feet together and legs straight.
  Lower your body straight down.
  Slowly press back up to the starting point.
  TIP: Make this harder by raising your feet off the floor and adding weight.")
#Forearms
# Have not found image for next exercise

# Exercise.where(exercise_name:"Behind The Back Barbell Wrist Curl").first_or_create(muscle_type_1:"Forearms", weighted:"true", description:"
#   Stand straight and hold the barbell behind you using a pronated grip with your hands and feet shoulder-width apart.
#   Slowly curl your wrists in a semi-circular motion upwards.
#   Hold the barbell at the apex of the motion and then slowly lower the barbell back down to starting position.")

# Have not found image for next exercise
# Exercise.where(exercise_name:"Forearm curl").first_or_create(muscle_type_1:"Forearms", weighted:"true", description:"
#   Grip the dumbell withyour palm facing upwards with your forearm rested against the bench.
#   Slowly curl your wrist upwards in a semi-circular motion.
#   Return to starting position and repeat.")

#Back
#Trapezius
Exercise.where(exercise_name:"Dumbell Shrugs").first_or_create(muscle_type_1:"Trapezius", weighted:"true", description:"
  Stand with dumbells in both hands, palms facing your body, back straight.
  Elevate your shoulders and hold the contracted position at the apex of the motion.
  Slowly lower your shoulder back to starting position.")
Exercise.where(exercise_name:"Standing Smith Machine Shrugs").first_or_create(muscle_type_1:"Trapezius", weighted:"true", description:"
  Place the bar on a lower rung so that when gripped your arms are fully extended and your back is straight.
  Grip at shoulder width, raise the bar with your shoulders and pause at the contracted position.
  Slowly lower the bar back to starting position.")
#Latissimus
Exercise.where(exercise_name:"Neutral Grip Pulldown").first_or_create(muscle_type_1:"Latissimus", weighted:"true", description:"
  Grip the bar with the palms facing forward, your hands need to be spaced out at a distance wider than shoulder width.
  As you have both arms extended in front of you holding the bar, bring your torso back around 30 degrees while sticking your chest out.
  Pull the bar down to about chin level or a little lower in a smooth movement whilst squeezing the shoulder blades together.
  After a second of squeezing, slowly raise the bar back to the starting position when your arms are fully extended.")
Exercise.where(exercise_name:"Seated Cable Row").first_or_create(muscle_type_1:"Latissimus", muscle_type_2:"Upper Back", weighted:"true", description:"
    Sit with your back straight on the machine and grip the handles.
    Pull the handles back using your arms. Your legs and torso should be at a 90° angle. Push out your chest.
    Pull the handles towards your body until your hands are beside your abdomen.
")
Exercise.where(exercise_name:"Bent Over Barbell Row").first_or_create(muscle_type_1:"Latissimus", weighted:"true", description:"
    Grab a barbell with a shoulder width pronated or supinated grip.
    Bend forward at your hips while maintaining a flat back.
    Pull the weight toward your upper abdomen.
    Lower the weight in a controlled manner and repeat.
")
Exercise.where(exercise_name:"Dumbell Row").first_or_create(muscle_type_1:"Latissimus", muscle_type_2:"Upper Back", weighted:"true", description:"
    Place your right leg on the top end of the bench so that your knee and shin rest flat on the bench, your foot hanging off the end.
    Bend your torso towards the floor and support yourself with your right arm by placing your palm flat against the bench.
    Grip the weight with your left and, and pull it straight up to the side of your chest. Repeat the motion.
    Switch the supporting leg and arm to work the other side.
")
#Upper Back
Exercise.where(exercise_name:"Deadlift").first_or_create(muscle_type_1:"Upper Back", muscle_type_2:"Lower Back", weighted:"true", description:"
    Stand with your mid-foot under the bar and grip the bar with your hands, about a shoulder width apart.
    Bend your knees, then lift the bar by straightening your back. It is important to keep your back straight.
    Stand to your full height and hold.
    Lower the bar to the floor by bending your knees and keeping your back straight.
")
#Lower Back
Exercise.where(exercise_name:"Back Extention with exercise ball").first_or_create(muscle_type_1:"Lower Back", weighted:"false", description:"
    Position your thighs on the padding and hook your feet on the exercise ball.
    Keeping your back straight, slowly bend at your waist until your legs and back are at a 45° angle.
    Slowly raise your body to the starting position.
")
#Chest
Exercise.where(exercise_name:"Bench Press").first_or_create(muscle_type_1:"Pectoralis Major", muscle_type_2:"Pectoralis Minor" , weighted:"true", description:"
    Lay flat on the bench with your feet on the ground.
    With straight arms unrack the bar.
    Lower the bar to your mid chest
    Raise the bar until you've locked your elbows.
    TIP: Hunch your shoulders as you lift to include your Pectoralis Minor as well as your Pectoralis Major
")
Exercise.where(exercise_name:"Dumbell Bench Press").first_or_create(muscle_type_1:"Pectoralis Major", muscle_type_2:"Pectoralis Minor", weighted:"true", description:"
    Lay flat on the bench with your feet on the ground.
    Raise the dumbells up above yourself until your elbows are locked.
    Lower the dumbells to your the side of your torso
")
Exercise.where(exercise_name:"Incline Bench Press").first_or_create(muscle_type_1:"Pectoralis Major", muscle_type_2:"Pectoralis Minor", muscle_type_3:"Anterior Deltoid", weighted:"true", description:"
    Raise the bench to a 30° - 45° angle
    Lay on the bench and set your feet on the ground.
    With straight arms, unrack the bar.
    Lower the bar to your mid chest.
    Raise the bar until you've locked your elbows.
")
Exercise.where(exercise_name:"Incline Dumbell Bench Press").first_or_create(muscle_type_1:"Pectoralis Major", muscle_type_2:"Pectoralis Minor", muscle_type_3:"Anterior Deltoid", weighted:"true", description:"
    Raise the bench to a 30° - 45° angle
    Lay on the bench and set your feet on the ground.
    Raise the dumbbells with straight arms then slowly lower them to about shoulder width.
    Raise them again until your arms are locked and at the starting position again.
")
Exercise.where(exercise_name:"Dips").first_or_create(muscle_type_1:"Pectoralis Major", muscle_type_2:"Pectoralis Minor", muscle_type_3:"Triceps", weighted:"true", description:"
    Hold your body with arms locked above the bars.
    Lower your body slowly while leaning forward, flare out your elbows
    Raise your body above the bars until your arms are locked.
")
Exercise.where(exercise_name:"Dumbell Flys").first_or_create(muscle_type_1:"Pectoralis Major", muscle_type_2:"Pectoralis Minor", weighted:"true", description:"
    Lay flat on the bench and place your feet on the ground.
    Begin the exercise with the dumbbells held together above your chest, elbows slightly bent.
    Simultaneously lower the weights to either side.
    Pause when the weights are parallel to the bench, then raise your arms to the starting position.
")
Exercise.where(exercise_name:"Cable Flys").first_or_create(muscle_type_1:"Pectoralis Major", muscle_type_2:"Pectoralis Minor", weighted:"true", description:"
  Stand with your back straight and a handle attached to a cable in each hand, holding the handle at arms length.
  Keeping your arms horizontal, push the handles out in front of you and bring them to touch at the front.
  Keeping your arms outstretched, slowly let your arms return to their original position.")

#Shoulders
Exercise.where(exercise_name:"Military Press").first_or_create(muscle_type_1:"Anterior Deltoids", muscle_type_2:"Lateral Deltoids", weighted:"true", description:"
  Start with the bar on a high rung so that you are able to get underneath it easily.
  Put your arms shoulder width apart and derack the bar.
  Raise the bar above your head until your arms are outstretched.
  Slowly lower the bar infront of your face back to the original position.")
Exercise.where(exercise_name:"Seated Dumbbell Shoulder Press").first_or_create(muscle_type_1:"Anterior Deltoids", muscle_type_2:"Lateral Deltoids", weighted:"true", description:"
    Sit on a bench with back support. Raise the dumbbells to shoulder height with your palms forward.
    Raise the dumbbells upwards and pause at the contracted position.
    Lower the weights back to starting position.
")
Exercise.where(exercise_name:"Side Lateral Raises").first_or_create(muscle_type_1:"Anterior Deltoids", muscle_type_2:"Lateral Deltoids", weighted:"true", description:"
    Stand up straight with dumbbells at either side, palms facing your hips.
    Raise your arms on either side with a slight bend in your elbow until they are parallel with the floor. Pause at the top of the motion.
    Slowly return your arms down to starting position.
")
Exercise.where(exercise_name:"Bent Over Rear Delt Raise").first_or_create(muscle_type_1:"Posterior Deltoids", muscle_type_2:"Lateral Deltoids", weighted:"true", description:"
    With dumbbells in either hand, bend your knees with your feet slightly bowed out. Arch your back above your knees, and start with the weights touching in front of your chest.
    With bent elbows, raise your arms up to shoulder level, pausing at the at the end of the motion.
    Slowly lower your arms back to starting position.
")
Exercise.where(exercise_name:"Rear deltoid Row").first_or_create(muscle_type_1:"Posterior Deltoids", muscle_type_2:"Lateral Deltoids", weighted:"true", description:"
    With hands shoulder width apart, pull the bar towards you while keeping your forearms perpendicular to the ground.
    Stop when the bar is at your belly button.
    Slowly return weight to starting position.
    Repeat.
")
#Abdominis
Exercise.where(exercise_name:"Crunches").first_or_create(muscle_type_1:"Rectus Abdominis", weighted:"false", description:"
    Lay flat on your back with your knees bent and your feet flat on the ground, about a foot from your lower back.
    Place your fingertips on your temples with your palms facing out.
    Draw your belly into the base of your spine to engage the muscles, then raise your head and shoulders off the floor.
    Return to starting position and repeat.
")
Exercise.where(exercise_name:"Side Plank").first_or_create(muscle_type_1:"Rectus Abdominis", muscle_type_2:"Transverse Abdominis", weighted:"false", description:"
    Place one forearm on the ground with your elbows bent at a 90° angle and pointing out front.
    Your feet should be together, with only 1 foot touching the floor.
    Lift your side off the floor, and move it upright until you are stiff.
    Lower your side back to the floor.
")
Exercise.where(exercise_name:"Roll outs").first_or_create(muscle_type_1:"Transverse Abdominis", muscle_type_2:"Rectus Abdominis", muscle_type_3:"Obliques", weighted:"false", description:"
    Hold the Ab Roller with both hands and kneel on the floor with your feet up and crossed.
    Slowly roll the barbell straight forward, stretching your body into a straight position.
    After a pause at the stretched position, start pulling yourself back to the starting position. This should be a slow and controlled movement.
")
Exercise.where(exercise_name:"Laying Leg Raises").first_or_create(muscle_type_1:"Rectus Abdominis", muscle_type_2:"Transverse Abdominis", weighted:"false", description:"
    Lay on your back with your arms palms down on either side.
    Keep your legs together and as straight as possible.
    Slowly raise your legs to a 90° angle, pause at this position, or as high as you can reach your legs, and then slowly lower your legs back down.
    Duration of these movements should be slow so that you do not utilize momentum, enabling you to get the most out of the exercise.
")
Exercise.where(exercise_name:"Side Bend").first_or_create(muscle_type_1:"Obliques", weighted:"true", description:"
  Stand up straight with the kettlebell in one hand.
  Without bending forward or backward, and keeping your arm straight down by your side, bend to one side so the kettlebell is lowered to your knee
  Straighten yourself so the kettlebell returns to it's original position.")
#Legs
#Hamstrings
Exercise.where(exercise_name:"Stiff Leg Deadlifts").first_or_create(muscle_type_1:"Hamstrings", weighted:"true", description:"
    Stand with a barbell at your shins with your feet shoulder width apart.
    Bend forward at your hips and keep your knees as fully extended as possible.
    Grab the barbell and then extend your hips while maintaining a straight back.
    From the standing position, lower the weight in a controlled manner.
    You can either lower the weight to the floor or before you touch the floor, depending on your mobility.
")
Exercise.where(exercise_name:"Squats").first_or_create(muscle_type_1:"Hamstrings", muscle_type_2:"Quadriceps", weighted:"true", description:"
    Stand with your feet shoulder-width apart. Maintain the natural arch in your back, squeezing your shoulder blades and raising your chest.
    Grip the bar across your shoulders and support it on your upper back. Unwrack the bar by straightening your legs, and take a step back.
    Bend your knees as you lower the weight without altering the form of your back until your hips are below your knees.
    Raise the bar back to starting position, lift with your legs and exhale at the top.
")
Exercise.where(exercise_name:"Hamstring Curl").first_or_create(muscle_type_1:"Hamstrings", weighted:"true", description:"
    Lay down on the machine, placing your legs beneath the padded lever. Position your legs so that the padded lever is below your calve muscles.
    Support yourself by grabbing the side handles of the machine, and slowly raise the weight with your legs, toes pointed straight.
    Pause at the apex of the motion, then slowly return to starting position.
")
#Quads
Exercise.where(exercise_name:"Leg Press").first_or_create(muscle_type_1:"Quadriceps", weighted:"true", description:"
    Place your legs on the platform with your feet at shoulder width.
    Release the weight and extend your legs fully, without locking your knees.
    Lower the weight until your legs are at a 90° angle (but DO NOT allow your butt and lower back to rise off of the pad. This will put your lower back in a rounded position, which is very dangerous.)
    Raise the weight back to starting position.
")
Exercise.where(exercise_name:"Leg Extension").first_or_create(muscle_type_1:"Quadriceps", weighted:"true", description:"
    Sit on the machine with your back against the cushion and adjust the machine you are using so that your knees are at a 90° angle at the starting position.
    Raise the weight by extending your knees outward, then lower your leg to the starting position. Both movements should be done in a slow, controlled motion.
")
#Calves
Exercise.where(exercise_name:"Standing calf raises").first_or_create(muscle_type_1:"Calves", weighted:"true", description:"
    Adjust the machine in accordance with your height and place your shoulders underneath the padded lever.
    The balls of your feet should be supporting your weight on the calve block, your heels extending off of it.
    Extend your heels upwards while keeping your knees stationary, and pause at the contracted position.
    Slowly return to the starting position. Repeat.
")
Exercise.where(exercise_name:"Seated calf raises").first_or_create(muscle_type_1:"Calves", weighted:"true", description:"
    Get comfortable on the machine, then place your lower thighs beneath the padded lever. Place your toes and the balls of your feet onto the foot supports.
    Prevent the weight from slipping forward by gripping the handles, and release the safety bar. Lower the weight until your calves are extended.
    Push your heels up to lift the padded lever and hold the contracted position, then slowly lower back down to the starting position. Repeat.
")
#Hip adductors
Exercise.where(exercise_name:"Hip adductors").first_or_create(muscle_type_1:"Adductors", weighted:"true", description:"
  Using the Hip Adductors machine, put your legs on the inside of the pads.
  Push outwards until your legs are almost perpendicular.
  Slowly allow the machine to return to it's resting position.")
#Hip abductors
Exercise.where(exercise_name:"Hip abductors").first_or_create(muscle_type_1:"Abductors", weighted:"true", description:"
  Using the Hip Abductors machine, put your legs on the outside of the pads.
  Push inwards until your legs are almost closed.
  Slowly allow the machine to return to it's resting position.")
#Gluteus
Exercise.where(exercise_name:"Glute Bridge").first_or_create(muscle_type_1:"Gluteus", weighted:"true", description:"
    Lie down with your knees bent and your feet flat on the floor.
    Push your hips up so that your butt is elevated and your back straight.
    Tense your glutes and raise your hips towards the ceiling.
    Once you are at the highest point you can manage, hold the position for a few seconds, and then slowly return to the starting position
")

Progress.where(name:"Weight over Time").first_or_create(description:"The weight gained over time of an exercise")
