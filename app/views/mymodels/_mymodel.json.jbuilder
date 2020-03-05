json.extract! mymodel, :id, :user_id, :name, :password_digest, :authority, :created_at, :updated_at
json.url mymodel_url(mymodel, format: :json)
