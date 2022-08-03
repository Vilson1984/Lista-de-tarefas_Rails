require "test_helper"

class PaginaEstaticaControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get pagina_estatica_index_url
    assert_response :success
  end
end
