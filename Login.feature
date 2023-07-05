Feature: Cadastro de usuário

  Scenario: Login de usuário bem-sucedido

    Given que estou na página de login
    When eu preencho meu nome de usuário e senha corretos
    And eu clico no botão "Login"
    Then devo ser redirecionado para a página de cadastro de usuário

  Scenario: Login de usuário com informações incorretas

    Given que estou na página de login
    When eu preencho meu nome de usuário ou senha incorretos
    And eu clico no botão "Login"
    Then devo ver uma mensagem de erro informando que as informações de login estão incorretas

  Scenario: Login de usuário com campos vazios

    Given que estou na página de login
    When eu deixo os campos de nome de usuário e senha vazios
    And eu clico no botão "Login"
    Then devo ver uma mensagem de erro informando que os campos de login são obrigatórios


Feature: Cadastro de veículos
 
  Scenario: Login de analista bem-sucedido

    Given que estou na página de login
    When eu preencho meu nome de usuário e senha corretos como analista
    And eu clico no botão "Login"
    Then devo ser redirecionado para a página de cadastro de veículos

  Scenario: Login de analista com informações incorretas

    Given que estou na página de login
    When eu preencho meu nome de usuário ou senha incorretos como analista
    And eu clico no botão "Login"
    Then devo ver uma mensagem de erro informando que as informações de login estão incorretas

  Scenario: Login de analista com campos vazios

    Given que estou na página de login
    When eu deixo os campos de nome de usuário e senha vazios como analista
    And eu clico no botão "Login"
    Then devo ver uma mensagem de erro informando que os campos de login são obrigatórios



Feature: Edição de cadastro

  Scenario: Edição de cadastro de veículo bem-sucedida

    Given que estou logado como analista
    And estou na página de edição de cadastro de veículo
    When eu seleciono o veículo que desejo editar
    And eu modifico a cor e o valor docadastro
    And eu clico no botão "Salvar"
    Then devo ver uma mensagem de confirmação informando que o cadastro foi atualizado com sucesso

  Scenario: Edição de cadastro de veículo com informações incorretas

    Given que estou logado como analista
    And estou na página de edição de cadastro de veículo
    When eu seleciono o veículo que desejo editar
    And eu preencho os campos de cor e valor com informações incorretas
    And eu clico no botão "Salvar"
    Then devo ver uma mensagem de erro informando que as informações de cadastro são inválidas

  Scenario: Edição de cadastro de veículo com campos vazios

    Given que estou logado como analista
    And estou na página de edição de cadastro de veículo
    When eu seleciono o veículo que desejo editar
    And eu deixo os campos de cor e valor vazios
    And eu clico no botão "Salvar"
    Then devo ver uma mensagem de erro informando que os campos de cadastro são obrigatórios

