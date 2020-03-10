byu_club_mems = [
  {first_name: "Adam", last_name: "Warnick", email: "awarnick@gmail.com", password: "testadam"},
  {first_name: "Kevin", last_name: "Llewellyn", email: "kllewellyn@gmail.com", password: "testkevin"},
  {first_name: "Jackie", last_name: "Miller", email: "jmiller@gmail.com", password: "testjackie"},
  {first_name: "Daniel", last_name: "Paoletti", email: "dpaoletti@gmail.com", password: "testdaniel"},
]

orem_club_mems = [
  {first_name: "Leanne", last_name: "Kidd", email: "lkidd@gmail.com", password: "testleanne"},
  {first_name: "David", last_name: "The Man", email: "dtheman@gmail.com", password: "testdavid"},
]

both_club_mems = [
  {first_name: "Josh", last_name: "Arment", email: "jarment@gmail.com", password: "testjosh"},
  {first_name: "Thomas", last_name: "Korean", email: "tkorean@gmail.com", password: "testthomas"},
]


byu_club = Club.create(name: "BYU Table Tennis", pin: 12345)
byu_club_mems.each do |member|
  user = User.create(member)
  byu_club.users << user
end

orem_club = Club.create(name: "Orem Table Tennis", pin: 98765)
orem_club_mems.each do |member|
  user = User.create(member)
  orem_club.users << user 
end 

both_club_mems.each do |member|
  user = User.create(member)
  orem_club.users << user 
  byu_club.users << user 
end
