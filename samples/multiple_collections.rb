def informed_users
  informed_at = {}

  Message.some_type.each do |message|
    message.user_ids.each do |user_id|
      informed_at[user_id] = message.sent_at
    end
  end

  @informed_users = User.informed
    .map { |user| { user: user, informed_at: informed_at[user.id] } }
    .sort_by { |data| data[:informed_at] }
end
