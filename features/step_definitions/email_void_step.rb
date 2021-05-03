Quando('submeto o meu cadastro sem o email') do
  visit "http://localhost:4200/"
  click_on "Conta"
  click_on "Entrar na minha conta"
end

Então('devo ver Oops! Informe seu email') do
  user = table.rows_hash
  find("input[type*=email]").set user[:email]
  find("input[type*=password]").set user[:senha]
  click_on "Entrar na conta"
end