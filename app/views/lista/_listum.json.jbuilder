json.extract! listum, :id, :nome, :tarefa, :status, :categoria, :data_inicio, :data_conclusao, :created_at, :updated_at
json.url listum_url(listum, format: :json)
