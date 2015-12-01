json.array!(@slides) do |slide|
  json.extract! slide, :id, :course_session_id
  json.url slide_url(slide, format: :json)
end
