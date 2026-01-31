json.extract! myroute, :id, :myprogram_id, :title, :description, :myurl, :created_at, :updated_at
json.url myroute_url(myroute, format: :json)
