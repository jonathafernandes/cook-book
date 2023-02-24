INSERIR_RECEITA = 1
VISUALIZAR_RECEITAS = 2
SAIR = 3

def bem_vindo()
  puts "Bem vindo ao Cookbook, sua rede social de receitas!"
end

def menu()
  puts "[#{INSERIR_RECEITA}] Cadastrar uma receita"
  puts "[#{VISUALIZAR_RECEITAS}] Ver todas receitas"
  puts "[#{SAIR}] Sair"
  
  print "Escolha uma opção: "
  return gets.to_i()
end

def inserir_receita()
  puts "Digite o nome da receita: "
  nome = gets.chomp()
  puts "Digite o tipo da receita: "
  tipo = gets.chomp()
  puts
  puts "Receita de #{nome} cadastrada com sucesso!"
  puts
  return { nome: nome, tipo: tipo}
end

def imprimir_receitas(receitas) 
  puts "--- Receitas cadastradas: ---"
  receitas.each do |receita|
    puts "#{receita[:nome]} - #{receita[:tipo]}"
  end
  puts
  if receitas.empty?
    puts "Nenhuma receita cadastrada!"
  end
end

bem_vindo()

receitas = []

opcao = menu()

while (opcao != SAIR) do 
  if(opcao == INSERIR_RECEITA)
    receitas << inserir_receita()
  elsif (opcao == VISUALIZAR_RECEITAS)
    imprimir_receitas(receitas)
  else
    puts "Opção inválida!"
  end
  
  opcao = menu()
end
  
  # receitas.each do |receita|
  #   puts receita
  # end 
  
  # for em Ruby não é mto usado
 # for receita in receitas do
 #   puts receita
 # end

puts
puts "Obrigado por usar o Cookbook, até logo!"