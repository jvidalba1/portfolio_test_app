class Tweet
  
  def self.timeline(user, count)
    $client.user_timeline(user, count: count)
  end

  def self.user(user)
    $client.user(user)
  end
end

