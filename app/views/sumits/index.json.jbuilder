json.array!(@sumits) do |sumit|
  json.extract! sumit, :id, :name, :content, :published_on, :tags
  json.url sumit_url(sumit, format: :json)
end
