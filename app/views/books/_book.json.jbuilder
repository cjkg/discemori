json.extract! book, :id, :author_last, :author_first, :title, :pages, :finish_date, :created_at, :updated_at
json.url book_url(book, format: :json)
