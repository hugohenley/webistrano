#encoding: utf-8

Dado /^que o administrador esteja na página de edição de host$/ do
  visit edit_host_path(@host)
end

Quando /^o administrador preenche o campo corretamente$/ do
  fill_in "host_name", with: "validhost"
end

Então /^o administrador deve estar na página de visualização dos detalhes do host editado$/ do
  page.should have_content "Host validhost"
  page.should have_content "Edit Host"
  page.should have_content "Delete"
end

Então /^o administrador deve ver uma mensagem de usuário editado com sucesso$/ do
  page.should have_content "Host was successfully updated."
end