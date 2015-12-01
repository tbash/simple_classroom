json.array!(@messages) do |message|
  json.extract! message, :id, :username, :content, :user_id, :course_session_id
  json.url message_url(message, format: :json)
end
