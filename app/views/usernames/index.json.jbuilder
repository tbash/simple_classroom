json.array!(@usernames) do |username|
  json.extract! username, :id, :content, :user_id, :course_session_id
  json.url username_url(username, format: :json)
end
