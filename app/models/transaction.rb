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
    
  def incremento()
    count = 0
    return count
  end

  def calcula_datas_max()
    datas = Transaction.pluck :data_baixa
    return datas.max
  end

  def calcula_datas_min()
    datas = Transaction.pluck :data_baixa
    return datas.min
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
