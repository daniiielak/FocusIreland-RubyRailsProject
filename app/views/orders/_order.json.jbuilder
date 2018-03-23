json.extract! order, :id, :details, :date, :total, :status, :product_id, :created_at, :updated_at
json.url order_url(order, format: :json)
