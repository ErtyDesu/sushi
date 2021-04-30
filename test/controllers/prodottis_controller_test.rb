require "test_helper"

class ProdottisControllerTest < ActionDispatch::IntegrationTest
  setup do
    @prodotti = prodottis(:one)
  end

  test "should get index" do
    get prodottis_url
    assert_response :success
  end

  test "should get new" do
    get new_prodotti_url
    assert_response :success
  end

  test "should create prodotti" do
    assert_difference('Prodotti.count') do
      post prodottis_url, params: { prodotti: { codice: @prodotti.codice, ingredienti: @prodotti.ingredienti, nome: @prodotti.nome, numeropezzi: @prodotti.numeropezzi, prezzo: @prodotti.prezzo } }
    end

    assert_redirected_to prodotti_url(Prodotti.last)
  end

  test "should show prodotti" do
    get prodotti_url(@prodotti)
    assert_response :success
  end

  test "should get edit" do
    get edit_prodotti_url(@prodotti)
    assert_response :success
  end

  test "should update prodotti" do
    patch prodotti_url(@prodotti), params: { prodotti: { codice: @prodotti.codice, ingredienti: @prodotti.ingredienti, nome: @prodotti.nome, numeropezzi: @prodotti.numeropezzi, prezzo: @prodotti.prezzo } }
    assert_redirected_to prodotti_url(@prodotti)
  end

  test "should destroy prodotti" do
    assert_difference('Prodotti.count', -1) do
      delete prodotti_url(@prodotti)
    end

    assert_redirected_to prodottis_url
  end
end
