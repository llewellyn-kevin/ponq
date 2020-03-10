module ClubsHelper 
  def member_count(club)
    club.users.count
  end
end
