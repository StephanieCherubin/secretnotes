json.extract! note, :id, :user_id, :name, :body, :created_at, :updated_at
json.url note_url(note, format: :json)
