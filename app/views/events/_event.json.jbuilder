json.extract! event, :id, :name, :date, :winner_cut, :runner_up_cut, :organizer_cut, :entry_cost, :user_id, :created_at, :updated_at
json.url event_url(event, format: :json)
