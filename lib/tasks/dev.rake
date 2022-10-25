namespace :dev do
  desc "Configura o ambiente de desenvolvimento"
  task setup: :environment do
    if Rails.env.development?
    show_spinner("Apagando Banco de dados..") {%x(rails db:drop:_unsafe)}
    show_spinner("Criando banco") {%x(rails db:create)} 
    show_spinner("Migrando o banco") {%x(rails db:migrate)}
    %x(rails dev:add_especialidades)
    %x(rails dev:add_cavaleiros)
    
    
    else
     puts "Você não está em modo de desenvolvimento!"
    end
  end
    desc "Cadastra cavaleiros"
    task add_cavaleiros: :environment do
    show_spinner("Cadastrando cavaleiros") do
      cdzs =
         [
         {
         nome: "Mu",
         costelação: "Ares",
         idade: "20",
         foto: "https://w7.pngwing.com/pngs/943/245/png-transparent-aries-mu-pegasus-seiya-saint-seiya-soldiers-soul-dragon-shiry%C5%AB-gemini-saga-saint-aries-aries-mu-pegasus-seiya-thumbnail.png",
         especialidade: Especialidade.find_by(tipo: "Corpo a corpo")
         },
         {
         nome: "Aldebaran",
         costelação: "Touro",
         idade: "20",
         foto: "https://i.pinimg.com/originals/af/8d/30/af8d305a8873eddace55988e92d3753d.png",
          especialidade: Especialidade.all.sample
         }
     ]

     cdzs.each do |cdz|
         Cdz.find_or_create_by!(cdz)
         
     end
    end
  end
  
   desc "Cadastro dos tipos de especialização"
   task add_especialidades: :environment do
    show_spinner("Cadastrando especialização") do
     especialidades = [
      {poder: "Grande chifre!", tipo:"Corpo a corpo"},
      {poder: "Evolução estrelar!", tipo:"Longa distancia"}
    ]
         especialidades.each do |especialidade|
         Especialidade.find_or_create_by!(especialidade)
         
        end
     end
    end

  private
  
  def show_spinner(msg_start, msg_end = "Concluido")
   spinner = TTY::Spinner.new("[:spinner] #{msg_start}")
    spinner.auto_spin # Automatic animation with default interval
     yield
    spinner.success("(#{msg_end})") # Stop animation
  end
end