class Transaction < ApplicationRecord
  belongs_to :typepayment
  belongs_to :company
  belongs_to :companyprovider
  belongs_to :accountfinancial
  belongs_to :accountbank
  belongs_to :doctype
  belongs_to :category
  belongs_to :user

  mount_uploaders :documents, DocumentUploader
  
  def calcula_valor_liquido()
    return (valor_operacao + valor_acrescimo)- valor_desconto
  end
 

  def self.to_csv(options = {})
    CSV.generate(options) do |csv|
      csv << column_names
      all.each do |transaction|
        csv << transaction.attributes.values_at(*column_names)
      end
    end
  end
end
