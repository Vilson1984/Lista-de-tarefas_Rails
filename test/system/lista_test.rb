require "application_system_test_case"

class ListaTest < ApplicationSystemTestCase
  setup do
    @listum = lista(:one)
  end

  test "visiting the index" do
    visit lista_url
    assert_selector "h1", text: "Lista"
  end

  test "should create listum" do
    visit lista_url
    click_on "New listum"

    fill_in "Categoria", with: @listum.categoria
    fill_in "Data conclusao", with: @listum.data_conclusao
    fill_in "Data inicio", with: @listum.data_inicio
    fill_in "Nome", with: @listum.nome
    fill_in "Status", with: @listum.status
    fill_in "Tarefa", with: @listum.tarefa
    click_on "Create Listum"

    assert_text "Listum was successfully created"
    click_on "Back"
  end

  test "should update Listum" do
    visit listum_url(@listum)
    click_on "Edit this listum", match: :first

    fill_in "Categoria", with: @listum.categoria
    fill_in "Data conclusao", with: @listum.data_conclusao
    fill_in "Data inicio", with: @listum.data_inicio
    fill_in "Nome", with: @listum.nome
    fill_in "Status", with: @listum.status
    fill_in "Tarefa", with: @listum.tarefa
    click_on "Update Listum"

    assert_text "Listum was successfully updated"
    click_on "Back"
  end

  test "should destroy Listum" do
    visit listum_url(@listum)
    click_on "Destroy this listum", match: :first

    assert_text "Listum was successfully destroyed"
  end
end
