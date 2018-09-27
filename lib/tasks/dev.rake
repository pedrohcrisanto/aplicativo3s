namespace :dev do
    desc "TODO"
    task setup: :environment do
  
  
      puts "Cadastrando..."
      
      categories = %w(INSS Telefone Água Combustiveis Energia Aluguel Vale)
      categories.each do |category|
        Category.create!(
          nome: category,
          user: User.all.sample
        )    
      end
      
      doctypes = %w(NotaFiscal Duplicata Fatura Promissoria)
      doctypes.each do |doctype|
        Doctype.create!(
          nome: doctype, 
          user: User.all.sample
        )    
      end
  
      typepayments = %w(Pagamento Recebimento Transferencia)
      typepayments.each do |typepayment|
        Typepayment.create!(
          nome: typepayment,
          user: User.all.sample
        )    
      end
  
  
      
      10.times do |i|
        Company.create!(
          nome: Faker::Company.name,
          cnpj: Faker::Company.ein,
          codigo_contabil: Faker::Bank.account_number,
          user: User.all.sample
        )
      end

      10.times do |i|
        Companyprovider.create!(
          nome: Faker::Company.name,
          cnpj: Faker::Company.ein,
          codigo_contabil_cliente: Faker::Bank.account_number,
          codigo_contabil_fornecedor: Faker::Bank.account_number,
          user: User.all.sample
        )
      end
  
      10.times do |i|
        Accountbank.create!(
          nome: Faker::Company.name,
          banco: Faker::Bank.name,
          agencia: Faker::Bank.account_number,
          conta_corrente: Faker::Bank.account_number,
          codigo_contabil: Faker::Bank.account_number,
          company: Company.all.sample,
          user: User.all.sample
        )
      end

      10.times do |i|
        Accountfinancial.create!(
          nome: Faker::Company.name,
          natureza: Faker::Job.field,
          historico: "HistoricoTeste",
          codigo_contabil: Faker::Bank.account_number,
          companyprovider: Companyprovider.all.sample,
          user: User.all.sample
        )
      end
  
  
      30.times do |i|
        Transaction.create!(
          typepayment: Typepayment.all.sample,
          company: Company.all.sample,
          companyprovider: Companyprovider.all.sample,
          accountbank: Accountbank.all.sample,
          accountfinancial: Accountfinancial.all.sample,
          doctype: Doctype.all.sample,
          category: Category.all.sample,
          data_vencimento: Faker::Date.between(2.days.ago, Date.today),
          data_baixa: Faker::Date.between(2.days.ago, Date.today),
          valor_operacao: Faker::Number.decimal(2, 3),
          valor_acrescimo: Faker::Number.decimal(2, 3),
          valor_desconto: Faker::Number.decimal(2, 3),
          user: User.all.sample
        )
      end
        
  
  
  puts "Cadastrado!"
  
  
  
  
  
  
  
    end
  
  end