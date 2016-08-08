json.extract! payment, :id, :title, :description, :value, :user_id, :status, :times_to_pay, :created_at, :updated_at
json.url payment_url(payment, format: :json)