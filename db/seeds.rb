# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
#
# wtB_test = DressageTest.create({
#   org_name: 'EC',
#   level: 'Walk/Trot',
#   name: 'B',
#   year: '2010',
#   moves_attributes:[
#   { letter: 'A', move: 'Enter at working trot rising'},
#   { letter: 'X', move: 'Halt through walk. Salute and proceed at working trot rising '},
#   { letter: 'C', move: 'Track right'},
#   { letter: 'B', move: 'Circle right 20 meters, working trot rising'},
#   { letter: 'B', move: 'Continue straight ahead in working trot '},
#   { letter: 'K X M', move: 'Change rein, working trot rising '},
#   { letter: 'C', move: 'Medium walk '},
#   { letter: 'H X K', move: 'Free walk on a loose rein '},
#   { letter: 'K', move: 'Medium walk '},
#   { letter: 'A', move: 'Working trot '},
#   { letter: 'B', move: 'Circle 20 meters, working trot rising '},
#   { letter: 'B', move: 'Continue straight ahead'},
#   { letter: 'H X F', move: 'Change rein, working trot rising '},
#   { letter: 'A', move: 'Turn down centre line'},
#   { letter: 'X', move: 'Halt through walk. Salute.'}
#  ]
# })
#
# wtB_test.save!
#
#
#
# wtC_test = DressageTest.create({
#   org_name: 'EC',
#   level: 'Walk/Trot',
#   name: 'C',
#   year: '2010',
#   moves_attributes:[
#   { letter: 'A', move: 'Enter at working trot'},
#   { letter: 'X', move: 'Halt. Salute and proceed at working trot'},
#   { letter: 'C', move: 'Track left. Proceed to E.'},
#   { letter: 'E to B', move: 'Half 20 meter circle left'},
#   { letter: 'B to H', move: 'Change rein, short diagonal'},
#   { letter: 'C', move: 'Medium walk, proceed to M '},
#   { letter: 'M X K', move: 'Free walk '},
#   { letter: 'K', move: 'Medium walk. Proceed to A.'},
#   { letter: 'A', move: 'Working trot. Proceed to F. '},
#   { letter: 'F to E', move: 'Change rein, short diagonal'},
#   { letter: 'E to B', move: 'Half 20 meter circle right. At B proceed straight ahead '},
#   { letter: 'A', move: 'Turn down centre line'},
#   { letter: 'X', move: 'Halt. Salute.'}
#  ]
# })
#
# wtC_test.save!
#
#
# wtD_test = DressageTest.create({
#   org_name: 'EC',
#   level: 'Walk/Trot',
#   name: 'D',
#   year: '2010',
#   moves_attributes:[
#   { letter: 'A', move: 'Enter at working trot'},
#   { letter: 'X', move: 'Halt. Salute and proceed at working trot'},
#   { letter: 'C', move: 'Track right. Proceed to A '},
#   { letter: 'A', move: 'Circle right 20 meters. Proceed to K'},
#   { letter: 'K to X', move: 'Working trot'},
#   { letter: 'X to C', move: 'Proceed down center line '},
#   { letter: 'G', move: 'Medium walk '},
#   { letter: 'C', move: 'Track left. Proceed to H.'},
#   { letter: 'H X K', move: 'Free walk'},
#   { letter: 'K', move: 'Medium walk'},
#   { letter: 'A', move: 'At A working trot circle left 20 meters. Proceed to F.'},
#   { letter: 'F to X', move: 'Working trot'},
#   { letter: 'X to C', move: 'Proceed down centre line'},
#   { letter: 'C', move: 'Track right'},
#   { letter: 'M E', move: 'Change rein on short diagonal'},
#   { letter: 'E F', move: 'Change rein on short diagonal'},
#   { letter: 'A', move: 'Turn down centre line'},
#   { letter: 'G', move: 'Halt. Salute.'}
#  ]
# })
#
# wtD_test.save!

train1_test = DressageTest.create({
  org_name: 'EC/USEF',
  level: 'Training',
  name: '1',
  year: '2015',
  moves_attributes:[
  { letter: 'A', move: 'Enter at working trot'},
  { letter: 'X', move: 'Halt. Salute and proceed at working trot'},
  { letter: 'C', move: 'Track left'},
  { letter: 'E', move: 'Cirle left 20m'},
  { letter: 'A', move: 'Circle left 20m developing left lead canter in first quarter of circle '},
  { letter: 'A-F-B', move: 'Working canter '},
  { letter: 'Between B & M', move: 'Working trot'},
  { letter: 'C', move: 'Medium walk'},
  { letter: 'A', move: 'Working trot'},
  { letter: 'E', move: 'Circle right 20m'},
  { letter: 'C', move: 'Circle right 20m developing right lead canter in first quarter of circle '},
  { letter: 'C-M-B', move: 'Working canter'},
  { letter: 'Between B & F', move: 'Working trot'},
  { letter: 'A', move: 'Down centerline'},
  { letter: 'X', move: 'Halt, salute'}
],
links_attributes: [
  {url:'https://www.equestrian.ca/cfs/files/resources/FiWsdXAtMHFv3zfpe/2015%20USEF%20Training%20Level%20Test%201.pdf' , linkname: 'Equestrian Canada PDF'},
  {url:'https://files.usef.org/assets/5cAR_rj76S8/2015trainingleveltest1.pdf' , linkname: 'United States Equestrian Federation PDF'}
]
})

train1_test.save!
