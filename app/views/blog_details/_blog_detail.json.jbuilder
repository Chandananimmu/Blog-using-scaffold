json.extract! blog_detail, :id, :title, :description, :created_at, :updated_at
json.url blog_detail_url(blog_detail, format: :json)
