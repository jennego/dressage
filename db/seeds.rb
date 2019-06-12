
DressageTest.destroy_all

wtA_test = DressageTest.create({
  org_name: 'Equestrian Canada',
  level: 'Walk/Trot',
  name: 'A',
  year: 2009,
  current: false,
  moves_attributes:[
  { letter: 'A', move: 'Enter at working trot rising'},
  { letter: 'X', move: 'Halt through walk. Salute and proceed at working trot rising '},
  { letter: 'C', move: 'Track left'},
  { letter: 'H', move: 'Working trot rising'},
  { letter: 'E', move: 'Circle left 20m '},
  { letter: 'E', move: 'Continue straight ahead in working trot'},
  { letter: 'Between K & A', move: 'Medium walk'},
  { letter: 'F X H', move: 'Free walk on a loose rein'},
  { letter: 'H', move: 'Medium walk'},
  { letter: 'C', move: 'Working trot rising'},
  { letter: 'B', move: 'Circle 20 meters, working trot rising '},
  { letter: 'B', move: 'Continue straight ahead'},
  { letter: 'Between F & A', move: 'Medium Walk'},
  { letter: 'A', move: 'Turn down centre line'},
  { letter: 'X', move: 'Halt through walk. Salute.'}
 ], 
 links_attributes: [
  {url:'https://www.equestrian.ca/cdn/storage/resources_v2/GrNgA6sRfbEBsj7hW/original/GrNgA6sRfbEBsj7hW.pdf' , 
  linkname: 'Equestrian Canada PDF'} ]
})

wtA_test.save!
wtB_test = DressageTest.create({
  org_name: 'Equestrian Canada',
  level: 'Walk/Trot',
  name: 'B',
  year: 2010,
  current: 'false',
  moves_attributes:[
  { letter: 'A', move: 'Enter at working trot rising'},
  { letter: 'X', move: 'Halt through walk. Salute and proceed at working trot rising '},
  { letter: 'C', move: 'Track right'},
  { letter: 'B', move: 'Circle right 20 meters, working trot rising'},
  { letter: 'B', move: 'Continue straight ahead in working trot '},
  { letter: 'K X M', move: 'Change rein, working trot rising '},
  { letter: 'C', move: 'Medium walk '},
  { letter: 'H X K', move: 'Free walk on a loose rein '},
  { letter: 'K', move: 'Medium walk '},
  { letter: 'A', move: 'Working trot '},
  { letter: 'B', move: 'Circle 20 meters, working trot rising '},
  { letter: 'B', move: 'Continue straight ahead'},
  { letter: 'H X F', move: 'Change rein, working trot rising '},
  { letter: 'A', move: 'Turn down centre line'},
  { letter: 'X', move: 'Halt through walk. Salute.'}
 ],
  links_attributes: [
  {url:'https://www.equestrian.ca/cdn/storage/resources_v2/y2onDhjGn5Tudqqnz/original/y2onDhjGn5Tudqqnz.pdf' , 
  linkname: 'Equestrian Canada PDF'} ]
})

wtB_test.save!



wtC_test = DressageTest.create({
  org_name: 'Equestrian Canada',
  level: 'Walk/Trot',
  name: 'C',
  year: 2010,
  current: false,
  moves_attributes:[
  { letter: 'A', move: 'Enter at working trot'},
  { letter: 'X', move: 'Halt. Salute and proceed at working trot'},
  { letter: 'C', move: 'Track left. Proceed to E.'},
  { letter: 'E to B', move: 'Half 20 meter circle left'},
  { letter: 'B to H', move: 'Change rein, short diagonal'},
  { letter: 'C', move: 'Medium walk, proceed to M '},
  { letter: 'M X K', move: 'Free walk '},
  { letter: 'K', move: 'Medium walk. Proceed to A.'},
  { letter: 'A', move: 'Working trot. Proceed to F. '},
  { letter: 'F to E', move: 'Change rein, short diagonal'},
  { letter: 'E to B', move: 'Half 20 meter circle right. At B proceed straight ahead '},
  { letter: 'A', move: 'Turn down centre line'},
  { letter: 'X', move: 'Halt. Salute.'}
  ],
  links_attributes: [
  {url:'https://www.equestrian.ca/cdn/storage/resources_v2/EHpufne6gmWqrENh3/original/EHpufne6gmWqrENh3.pdf' , 
  linkname: 'Equestrian Canada PDF'} ]
})

wtC_test.save!


wtD_test = DressageTest.create({
  org_name: 'Equestrian Canada',
  level: 'Walk/Trot',
  name: 'D',
  year: 2010,
  current: false,
  moves_attributes:[
  { letter: 'A', move: 'Enter at working trot'},
  { letter: 'X', move: 'Halt. Salute and proceed at working trot'},
  { letter: 'C', move: 'Track right. Proceed to A '},
  { letter: 'A', move: 'Circle right 20 meters. Proceed to K'},
  { letter: 'K to X', move: 'Working trot'},
  { letter: 'X to C', move: 'Proceed down center line '},
  { letter: 'G', move: 'Medium walk '},
  { letter: 'C', move: 'Track left. Proceed to H.'},
  { letter: 'H X K', move: 'Free walk'},
  { letter: 'K', move: 'Medium walk'},
  { letter: 'A', move: 'At A working trot circle left 20 meters. Proceed to F.'},
  { letter: 'F to X', move: 'Working trot'},
  { letter: 'X to C', move: 'Proceed down centre line'},
  { letter: 'C', move: 'Track right'},
  { letter: 'M E', move: 'Change rein on short diagonal'},
  { letter: 'E F', move: 'Change rein on short diagonal'},
  { letter: 'A', move: 'Turn down centre line'},
  { letter: 'G', move: 'Halt. Salute.'}
 ], 
 links_attributes: [
  {url:'https://www.equestrian.ca/cdn/storage/resources_v2/3PwBpLKvyy3BESDJq/original/3PwBpLKvyy3BESDJq.pdf' , 
  linkname: 'Equestrian Canada PDF'} ]
})

wtD_test.save!

train1_test = DressageTest.create({
  org_name: 'United Stakes Equestrian Federation / Equestrian Canada',
  level: 'Training',
  name: '1',
  year: 2015,
  current: false,
  note: 'All trot work may be ridden sitting or rising, unless stated.
  Halts may be through the walk',
  purpose: 'To confirm that the horse demonstrates correct basics, is supple and moves freely
  forward in a clear rhythm with a steady tempo, accepting contact with the bit.',
  introduce:'Working trot; working canter; medium walk; free walk; 20m circles in trot and canter',
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
  {url:'https://www.usef.org/forms-pubs/9hJaeud1GVo/2015-training-level-test-1' , linkname: 'United States Equestrian Federation PDF'}
]
})

train1_test.save!

train2_test = DressageTest.create({
  org_name: 'United Stakes Equestrian Federation / Equestrian Canada',
  level: 'Training',
  name: '2',
  year: 2015,
  current: false,
  note: 'All trot work may be ridden sitting or rising, unless stated.
  Halts may be through the walk',
  purpose: 'To confirm that the horse demonstrates correct basics, is supple and moves freely
  forward in a clear rhythm with a steady tempo, accepting contact with the bit.',
  introduce:'Stretch circle in trot',
  moves_attributes:[
  { letter: 'A', move: 'Enter at working trot'},
  { letter: 'X', move: 'Halt. Salute and proceed at working trot'},
  { letter: 'C', move: 'Track right'},
  { letter: 'B', move: 'Cirle right 20m'},
  { letter: 'K X M', move: 'Change rein'},
  { letter: 'Between C & H', move: 'Working canter left lead'},
  { letter: 'E', move: 'Circle left 20m'},
  { letter: 'Between E & K', move: 'Working trot'},
  { letter: 'A', move: 'Circle left 20m rising trot, allowing the horse to stretch forward and downward '},
  { letter: 'Before A', move: 'Shorten reins'},
  { letter: 'A', move: 'Working trot'},
  { letter: 'Between A & F', move: 'Medium Walk'},
  { letter: 'F-E', move: 'Change rein, medium walk'},
  { letter: 'E-M', move: 'Change rein, free walk'},
  { letter: 'C', move: 'Working trot'},
  { letter: 'E', move: 'Circle left 20m'},
  { letter: 'F X H', move: 'Change rein'},
  { letter: 'Between C & M', move: 'Working canter, right lead'},
  { letter: 'B', move: 'Circle right 20m'},
  { letter: 'Between B & F', move: 'Working trot'},
  { letter: 'A', move: 'Down centerline'},
  { letter: 'X', move: 'Halt, salute.'}
],
links_attributes: [
  {url:'https://www.equestrian.ca/cfs/files/resources/Y2dimjRcGPN5quRj9/2015%20USEF%20Training%20Level%20Test%202.pdf' , linkname: 'Equestrian Canada PDF'},
  {url:'https://www.usef.org/forms-pubs/IjbJzrNV42s/2015-training-level-test-2' , linkname: 'United States Equestrian Federation PDF'}
]
})

train2_test.save!

train3_test = DressageTest.create({
  org_name: 'United Stakes Equestrian Federation / Equestrian Canada',
  level: 'Training',
  name: '3',
  year: 2015,
  current: false,
  note: 'All trot work may be ridden sitting or rising, unless stated.
  Halts may be through the walk',
  purpose: 'To confirm that the horse demonstrates correct basics, is supple and moves freely
  forward in a clear rhythm with a steady tempo, accepting contact with the bit.',
  introduce:'Changing of bend on a shallow loop, canter-trot transition on diagonal',
  moves_attributes:[
  { letter: 'A', move: 'Enter at working trot'},
  { letter: 'X', move: 'Halt. Salute and proceed at working trot'},
  { letter: 'C', move: 'Track left'},
  { letter: 'H-X-K', move: 'One loop'},
  { letter: 'Between A & F', move: 'Working canter left lead'},
  { letter: 'B', move: 'Circle left 20m'},
  { letter: 'H X F', move: 'Change rein'},
  { letter: 'X', move: 'Working trot'},
  { letter: 'A', move: 'Medium walk '},
  { letter: 'K X H', move: 'Free walk'},
  { letter: 'H', move: 'Medium walk'},
  { letter: 'C', move: 'Working trot'},
  { letter: 'M X F', move: 'One loop'},
  { letter: 'Between A & K', move: 'Working canter right lead'},
  { letter: 'E', move: 'Circle right 20m'},
  { letter: 'C', move: 'Working trot'},
  { letter: 'B', move: 'Circle right 20m in rising trot allowing the horse to stretch forward '},
  { letter: 'Before B', move: 'Shorten the reins'},
  { letter: 'B', move: 'Working trot'},
  { letter: 'A', move: 'Down centerline'},
  { letter: 'X', move: 'Halt, salute.'}
],
links_attributes: [
  {url:'https://www.equestrian.ca/cdn/storage/resources_v2/pF5S4yxTeFEu9xFYA/original/pF5S4yxTeFEu9xFYA.pdf' , linkname: 'Equestrian Canada PDF'},
  {url:'https://www.usef.org/forms-pubs/OidZ9HCj3Fs/2015-training-level-test-3' , linkname: 'United States Equestrian Federation PDF'}
]
})

train3_test.save!

first1_test = DressageTest.create({
  org_name: 'United Stakes Equestrian Federation / Equestrian Canada',
  level: 'First',
  name: '1',
  year: 2015,
  current: false,
  note: 'All trot work may be ridden sitting or rising, unless stated.
  Halts may be through the walk',
  purpose: 'To confirm that the horse demonstrates correct basics, and in addition to the
requirements of Training Level, has developed the thrust to achieve improved balance
and throughness and maintains a more consistent contact with the bit.',
  introduce:'10m half circle at trot; 15m circle in canter; lengthening of stride in trot and canter',
  moves_attributes:[
  { letter: 'A', move: 'Enter at working trot'},
  { letter: 'X', move: 'Halt. Salute and proceed at working trot'},
  { letter: 'C', move: 'Track left'},
  { letter: 'E-X', move: 'Half circle left 10m, returning to track at H'},
  { letter: 'B-X', move: 'Half circle right 10m, returning to track at M'},
  { letter: 'C', move: 'Circle 20m rising trot, allowing horse to stretch foreword and downward'},
  { letter: 'Before C', move: 'Shorten reins'},
  { letter: 'C', move: 'Working trot'},
  { letter: 'S-F', move: 'Change rein, lengthened stride in trot '},
  { letter: 'F', move: 'Working trot'},
  { letter: 'A', move: 'Medium walk'},
  { letter: 'V-R', move: 'Change rein, free walk'},
  { letter: 'R', move: 'Medium walk'},
  { letter: 'M', move: 'Working trot'},
  { letter: 'C', move: 'Working canter left lead'},
  { letter: 'S-V', move: 'Lengthen stride in canter'},
  { letter: 'V', move: 'Circle left 15m. Develop working canter in first half of circle '},
  { letter: 'F-X-H', move: 'Change rein'},
  { letter: 'X', move: 'Working trot'},
  { letter: 'C', move: 'Woking canter right lead'},
  { letter: 'R-P', move: 'Lengthen stride in canter'},
  { letter: 'P', move: 'Circle right 15m. Develop working canter in first half of circle '},
  { letter: 'A', move: 'Working trot'},
  { letter: 'V-M', move: 'Change rein, lengthen stride in trot'},
  { letter: 'M', move: 'Working trot '},
  { letter: 'E', move: 'Half circle left 10m'},
  { letter: 'X', move: 'Working trot'},
  { letter: 'X', move: 'Down centerline '},
  { letter: 'G', move: 'Halt, salute'}
],
links_attributes: [
  {url:'https://www.equestrian.ca/cdn/storage/resources_v2/BYHd3H47HDBJQxugm/original/BYHd3H47HDBJQxugm.pdf' , linkname: 'Equestrian Canada PDF'},
  {url:'https://www.usef.org/forms-pubs/OidZ9HCj3Fs/2015-training-level-test-3' , linkname: 'United States Equestrian Federation PDF'}
]
})

first1_test.save!


train1_2019_test = DressageTest.create({
  org_name: 'United Stakes Equestrian Federation / Equestrian Canada',
  level: 'Training',
  name: '1',
  year: 2019,
  current: true,
  note: 'All trot work may be ridden sitting or rising, unless stated.
  Halts may be through the walk. No changes from 2015.',
  purpose: 'To confirm that the horse demonstrates correct basics, is supple and moves freely
  forward in a clear rhythm with a steady tempo, accepting contact with the bit.',
  introduce:'Working trot; working canter; medium walk; free walk; 20m circles in trot and canter',
  moves_attributes:[
  { letter: 'A', move: 'Enter at working trot'},
  { letter: 'X', move: 'Halt. Salute and proceed at working trot'},
  { letter: 'C', move: 'Track left'},
  { letter: 'E', move: 'Cirle left 20m'},
  { letter: 'A', move: 'Circle left 20m developing left lead canter in first quarter of circle '},
  { letter: 'A-F-B', move: 'Working canter '},
  { letter: 'Between B & M', move: 'Working trot'},
  { letter: 'C', move: 'Medium walk'},
  { letter: 'F-E', move: 'Change rein, free walk'},
  { letter: 'F', move: 'Medium walk'},
  { letter: 'A', move: 'Working trot'},
  { letter: 'E', move: 'Circle right 20m'},
  { letter: 'C', move: 'Circle right 20m developing right lead canter in first quarter of circle '},
  { letter: 'C-M-B', move: 'Working canter'},
  { letter: 'Between B & F', move: 'Working trot'},
  { letter: 'A', move: 'Down centerline'},
  { letter: 'X', move: 'Halt, salute'}
],
links_attributes: [
  {url:'https://dressage-tests.s3-us-west-2.amazonaws.com/2019Training1.pdf' , linkname: 'Equestrian Canada PDF'}
]
})

train1_2019_test.save!


train2_2019_test = DressageTest.create({
  org_name: 'United Stakes Equestrian Federation / Equestrian Canada',
  level: 'Training',
  name: '2',
  year: 2019,
  current: true,
  note: 'All trot work may be ridden sitting or rising, unless stated.
  Halts may be through the walk. Essentially same test as 2015 with minor phrasing changes.',
  purpose: 'To confirm that the horse demonstrates correct basics, is supple and moves freely
  forward in a clear rhythm with a steady tempo, accepting contact with the bit.',
  introduce:'Stretch circle in trot',
  moves_attributes:[
  { letter: 'A', move: 'Enter at working trot'},
  { letter: 'X', move: 'Halt. Salute and proceed at working trot'},
  { letter: 'C', move: 'Track right'},
  { letter: 'B', move: 'Cirle right 20m'},
  { letter: 'K X M', move: 'Change rein'},
  { letter: 'Between C & H', move: 'Working canter left lead'},
  { letter: 'E', move: 'Circle left 20m'},
  { letter: 'Between E & K', move: 'Working trot'},
  { letter: 'A', move: 'Circle left 20m rising trot, allowing the horse to stretch forward and downward '},
  { letter: 'Before A', move: 'Shorten reins'},
  { letter: 'A', move: 'Working trot'},
  { letter: 'F', move: 'Medium Walk'},
  { letter: 'F-E', move: 'Change rein, medium walk'},
  { letter: 'E-M', move: 'Change rein, free walk'},
  { letter: 'M', move: 'Medium walk'},
  { letter: 'C', move: 'Working trot'},
  { letter: 'E', move: 'Circle left 20m'},
  { letter: 'F-X-H', move: 'Change rein'},
  { letter: 'Between C & M', move: 'Working canter, right lead'},
  { letter: 'B', move: 'Circle right 20m'},
  { letter: 'Between B & F', move: 'Working trot'},
  { letter: 'A', move: 'Down centerline'},
  { letter: 'X', move: 'Halt, salute.'}
],
links_attributes: [
  {url:'https://dressage-tests.s3-us-west-2.amazonaws.com/2019Training2.pdf' , linkname: 'Equestrian Canada'}
]
})

train2_2019_test.save!

train3_2019_test = DressageTest.create({
  org_name: 'United Stakes Equestrian Federation / Equestrian Canada',
  level: 'Training',
  name: '3',
  year: 2019,
  current: true,
  note: 'All trot work may be ridden sitting or rising, unless stated.
  Halts may be through the walk. NOTE: Sighificant changes from 2015 test, completely new test. ',
  purpose: 'To confirm that the horse demonstrates correct basics, is supple and moves freely
  forward in a clear rhythm with a steady tempo, accepting contact with the bit.',
  introduce:'Serprentine in trot',
  moves_attributes:[
  { letter: 'A', move: 'Enter at working trot'},
  { letter: 'X', move: 'Halt. Salute and proceed at working trot'},
  { letter: 'C', move: 'Track left'},
  { letter: 'H-X-F', move: 'Change rein'},
  { letter: 'A-C', move: 'Serpentine 3 equal loops width of the arena'},
  { letter: 'Between C & M', move: 'Working canter right lead'},
  { letter: 'B', move: 'Circle right 20m'},
  { letter: 'A', move: 'Working trot'},
  { letter: 'Before K', move: 'Medium walk '},
  { letter: 'K-E', move: 'Medium walk'},
  { letter: 'E-M', move: 'Change rein, free walk'},
  { letter: 'M', move: 'Medium walk'},
  { letter: 'C', move: 'Working trot'},
  { letter: 'C-A', move: 'Serpentine 3 equal loops width of the arena'},
  { letter: 'Between A-F', move: 'Working canter left lead'},
  { letter: 'B', move: 'Circle right 20m'},
  { letter: 'C', move: 'Working trot'},
  { letter: 'E', move: 'Circle left 20m in rising trot, allowing horse to stretch
    forward and downward, while maintaining contact'},
  { letter: 'Before E', move: 'Shorten the reins'},
  { letter: 'E', move: 'Shorten the reins'},
  { letter: 'A', move: 'Down centerline'},
  { letter: 'X', move: 'Halt, salute.'}
],
links_attributes: [
  {url:'https://dressage-tests.s3-us-west-2.amazonaws.com/2019Training3.pdf' , linkname: 'Equestrian Canada PDF'}
]
})

train3_2019_test.save!


first1_2019_test = DressageTest.create({
  org_name: 'United Stakes Equestrian Federation / Equestrian Canada',
  level: 'First',
  name: '1',
  year: 2019,
  current: true,
  note: 'All trot work may be ridden sitting or rising, unless stated.
 Note: slight letter changes from 2015 test.',
  purpose: 'To confirm that the horse demonstrates correct basics, and in addition to the
requirements of Training Level, has developed the thrust to achieve improved balance
and throughness and maintains a more consistent contact with the bit.',
  introduce:'10m half circle at trot; 15m circle in canter; lengthening of stride in trot and canter',
  moves_attributes:[
  { letter: 'A', move: 'Enter at working trot'},
  { letter: 'X', move: 'Halt. Salute and proceed at working trot'},
  { letter: 'C', move: 'Track left'},
  { letter: 'E-X', move: 'Half circle left 10m, returning to track at H'},
  { letter: 'B-X', move: 'Half circle right 10m, returning to track at M'},
  { letter: 'C', move: 'Circle 20m rising trot, allowing horse to stretch foreword and downward'},
  { letter: 'Before C', move: 'Shorten reins'},
  { letter: 'C', move: 'Working trot'},
  { letter: 'H-P', move: 'Change rein, lengthen stride in trot '},
  { letter: 'P', move: 'Working trot'},
  { letter: 'A', move: 'Medium walk'},
  { letter: 'V-R', move: 'Change rein, free walk'},
  { letter: 'R', move: 'Medium walk'},
  { letter: 'M', move: 'Working trot'},
  { letter: 'C', move: 'Working canter left lead'},
  { letter: 'H-V', move: 'Lengthen stride in canter'},
  { letter: 'V', move: 'Circle left 15m. Develop working canter in first half of circle '},
  { letter: 'F-X-H', move: 'Change rein'},
  { letter: 'X', move: 'Working trot'},
  { letter: 'C', move: 'Woking canter right lead'},
  { letter: 'M-P', move: 'Lengthen stride in canter'},
  { letter: 'P', move: 'Circle right 15m. Develop working canter in first half of circle '},
  { letter: 'A', move: 'Working trot'},
  { letter: 'K-R', move: 'Change rein, lengthen stride in trot'},
  { letter: 'R', move: 'Working trot '},
  { letter: 'E', move: 'Half circle left 10m'},
  { letter: 'X', move: 'Down centerline '},
  { letter: 'G', move: 'Halt, salute'}
],
links_attributes: [
  {url:'https://dressage-tests.s3-us-west-2.amazonaws.com/2019First1.pdf' , linkname: 'Equestrian Canada PDF'}
]
})

first1_2019_test.save!

first2_2019_test = DressageTest.create({
  org_name: 'United Stakes Equestrian Federation / Equestrian Canada',
  level: 'First',
  name: '2',
  year: 2019,
  current: true,
  note: 'All trot work may be ridden sitting or rising, unless stated.',
  purpose: 'To confirm that the horse demonstrates correct basics, and in addition to the
requirements of Training Level, has developed the thrust to achieve improved balance
and throughness and maintains a more consistent contact with the bit.',
  introduce:'Leg yeilding',
  moves_attributes:[
  { letter: 'A', move: 'Enter at working trot'},
  { letter: 'X', move: 'Halt. Salute and proceed at working trot'},
  { letter: 'C', move: 'Track left'},
  { letter: 'M-V', move: 'Change rein, lengthen stride in trot'},
  { letter: 'V', move: 'Working trot'},
  { letter: 'K-D', move: 'Half circle left 10m'},
  { letter: 'D-L', move: 'Working trot'},
  { letter: 'L-M', move: 'Leg yield right'},
  { letter: 'H-P', move: 'Change rein, lengthen stride in trot '},
  { letter: 'P', move: 'Working trot'},
  { letter: 'F-D', move: 'Half circle right 10m'},
  { letter: 'D-L', move: 'Working trot'},
  { letter: 'L-H', move: 'Leg yield left'},
  { letter: 'C', move: 'Medium walk'},
  { letter: 'M-V', move: 'Change rein, free walk'},
  { letter: 'V', move: 'Medium walk'},
  { letter: 'K', move: 'Working trot'},
  { letter: 'A', move: 'Working canter left lead'},
  { letter: 'P', move: 'Circle left 15m'},
  { letter: 'P-M', move: 'Lengthen stride in canter'},
  { letter: 'Between M-C', move: 'Develop working canter'},
  { letter: 'H-X-F', move: 'Change rein '},
  { letter: 'X', move: 'Working trot'},
  { letter: 'F', move: 'Working canter left lead'},
  { letter: 'V', move: 'Circle right 15m '},
  { letter: 'V-H', move: 'Lengthen stride in canter'},
  { letter: 'Between H-C', move: 'Develop Working canter'},
  { letter: 'M', move: 'Working trot'},
  { letter: 'B', move: 'Circle right 20m rising trot, allowing the horse to
stretch forward and downward while maintaining
contact'},
  { letter: 'Before B', move: 'Shorten the reins'},
  { letter: 'B', move: 'Working trot'},
  { letter: 'A', move: 'Down centerline'},
  { letter: 'X', move: 'Halt, salute'}
],
links_attributes: [
  {url:'https://dressage-tests.s3-us-west-2.amazonaws.com/2019First2.pdf' , linkname: 'Equestrian Canada PDF'}
]
})

first2_2019_test.save!

first3_2019_test = DressageTest.create({
  org_name: 'United Stakes Equestrian Federation / Equestrian Canada',
  level: 'First',
  name: '3',
  year: 2019,
  current: true,
  note: 'All trot work may be ridden sitting or rising, unless stated.',
  purpose: 'To confirm that the horse demonstrates correct basics, and in addition to the
requirements of Training Level, has developed the thrust to achieve improved balance
and throughness and maintains a more consistent contact with the bit.',
  introduce:'10m circle at trot; change of lead through trot; counter
canter',
  moves_attributes:[
  { letter: 'A', move: 'Enter at working trot'},
  { letter: 'X', move: 'Halt. Salute and proceed at working trot'},
  { letter: 'C', move: 'Track left'},
  { letter: 'H-X-F', move: 'Change rein, lengthen stride in trot'},
  { letter: 'F', move: 'Working trot'},
  { letter: 'V-I', move: 'Leg yield right'},
  { letter: 'I', move: 'Circle left 10m'},
  { letter: 'I', move: 'Straight ahead'},
  { letter: 'C', move: 'Track left '},
  { letter: 'S-L', move: 'Leg yeild left'},
  { letter: 'L', move: 'Circle right 10m'},
  { letter: 'L', move: 'Straight ahead'},
  { letter: 'A', move: 'Track right'},
  { letter: 'E', move: 'Circle right 20m rising trot, allowing the horse to
stretch forward and downward while maintaining
contact'},
  { letter: 'Before E', move: 'Shorten the reins'},
  { letter: 'E', move: 'Working trot'},
  { letter: 'H', move: 'Medium walk'},
  { letter: 'M-V', move: 'Free walk'},
  { letter: 'V', move: 'Medium walk'},
  { letter: 'K', move: 'Working trot'},
  { letter: 'A', move: 'Working canter, left lead'},
  { letter: 'F-X-M', move: 'One loop mantaining left lead'},
  { letter: 'C', move: 'Circle left 15m'},
  { letter: 'H-V', move: 'Lengthen stride in canter'},
  { letter: 'V', move: 'Working canter'},
  { letter: 'F-X-H', move: 'Change rein'},
  { letter: 'X', move: 'Change of lead through trot'},
  { letter: 'M-X-F', move: 'One loop maintaining right lead'},
  { letter: 'A', move: 'Circle right'},
  { letter: 'K-S', move: 'Lengthen stride in canter'},
  { letter: 'S', move: 'Working canter'},
  { letter: 'C', move: 'Working trot'},
  { letter: 'M-X-K', move: 'Lengthen stride in trot'},
  { letter: 'K', move: 'Working trot'},
  { letter: 'A', move: 'Down centerline'},
  { letter: 'X', move: 'Halt, salute'}
],
links_attributes: [
  {url:'https://dressage-tests.s3-us-west-2.amazonaws.com/2019First3.pdf' , linkname: 'Equestrian Canada PDF'}
]
})

first3_2019_test.save!

