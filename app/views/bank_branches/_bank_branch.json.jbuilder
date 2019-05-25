json.extract! bank_branch, :id, :name, :address, :ifsc_code, :micr_code, :manager_id, :created_at, :updated_at
json.url bank_branch_url(bank_branch, format: :json)
