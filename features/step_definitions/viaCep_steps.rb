Dado('que usuário inseriu um cep valido no endereço da API') do
    $uri_valida = "https://viacep.com.br/ws/13056040/json/"
  end
  
  Quando('carregar a consulta deve retornar <codigo> {int}') do |int|
  # Quando('carregar a consulta deve retornar <codigo> {float}') do |float|
  $resposta = HTTParty.get($uri_valida)
    puts "Resposta Codigo: #{$resposta.code}"
  end
  
  Então('o sistema deve apresentar as informações do cep') do
    puts "Resposta Informações: #{$resposta.body}"
  end
  
  Então('Então printar o código do <IBGE> do endereço apresentado') do
    #puts "resposta Informações: #{$resposta.body}"
    $json = $resposta
    puts "Codigo IBGE: #{$json['ibge']}"
  end

  Dado('que usuário inseriu um cep invalido no endereço da API') do
    $uri_invalida = "https://viacep.com.br/ws/13056/json/"
  end
  
  Quando('carregar as informações deve retornar <codigo> {int}') do |int|
    # Quando('carregar as informações deve retornar <codigo> {float}') do |float|
    $resposta = HTTParty.get($uri_invalida)
    puts "resposta code: #{$resposta.code}"
  end
  
  Então('o sistema deve apresentar pagina de erro') do
    puts "resposta Informações: #{$resposta.body}"    
  end
