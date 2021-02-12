#language:pt
@ConsultaCEP
Funcionalidade: Pesquisa um cep e retorna as informações encontradas na API viacep.

Contexto: Retorna as informações do CEP
Dado que usuário inseriu um cep valido no endereço da API
    Esquema do Cenário: pesquisa cep valido
    Quando carregar a consulta deve retornar <codigo> 200
    Então o sistema deve apresentar as informações do cep
    E Então printar o código do <IBGE> do endereço apresentado

Dado que usuário inseriu um cep invalido no endereço da API
    Esquema do Cenário: pesquisa cep invalido
    Quando carregar as informações deve retornar <codigo> 400
    Então o sistema deve apresentar pagina de erro