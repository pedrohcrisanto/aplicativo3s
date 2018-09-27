json.extract! transaction, :id, :typepayment_id, :company_id, :companyprovider_id, :accountfinancial_id, :accountbank_id, :doctype_id, :category_id, :data_vencimento, :data_baixa, :historico, :valor_operacao, :valor_acrescimo, :valor_desconto, :valor_liquido, :user_id, :documents, :created_at, :updated_at
json.url transaction_url(transaction, format: :json)
