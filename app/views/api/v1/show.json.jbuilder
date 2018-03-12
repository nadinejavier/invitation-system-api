json.id @user.id
json.email @user.email

json.invites @user.invites.each do |invite|
  json.id invite.id
  json.user_id invite.user_id
  json.message invite.message
  json.recipient invite.recipient
  json.status invite.status
end