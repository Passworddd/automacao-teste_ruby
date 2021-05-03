Dado('que acesso a página de cadastro') do
  visit "http://localhost:4200/"
  click_on "Conta"
  click_on "Entrar na minha conta"
end

Quando('submeto o meu cadastro com:') do |table|
  user = table.rows_hash
  find("input[type*=email]").set user[:email]
  find("input[type*=password]").set user[:email]
  click_on "Entrar na conta"
end

Então('devo ser redirecionado para a área logada') do
  
end