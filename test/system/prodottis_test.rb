require "application_system_test_case"

class ProdottisTest < ApplicationSystemTestCase
  setup do
    @prodotti = prodottis(:one)
  end

  test "visiting the index" do
    visit prodottis_url
    assert_selector "h1", text: "Prodottis"
  end

  test "creating a Prodotti" do
    visit prodottis_url
    click_on "New Prodotti"

    fill_in "Codice", with: @prodotti.codice
    fill_in "Ingredienti", with: @prodotti.ingredienti
    fill_in "Nome", with: @prodotti.nome
    fill_in "Numeropezzi", with: @prodotti.numeropezzi
    fill_in "Prezzo", with: @prodotti.prezzo
    click_on "Create Prodotti"

    assert_text "Prodotti was successfully created"
    click_on "Back"
  end

  test "updating a Prodotti" do
    visit prodottis_url
    click_on "Edit", match: :first

    fill_in "Codice", with: @prodotti.codice
    fill_in "Ingredienti", with: @prodotti.ingredienti
    fill_in "Nome", with: @prodotti.nome
    fill_in "Numeropezzi", with: @prodotti.numeropezzi
    fill_in "Prezzo", with: @prodotti.prezzo
    click_on "Update Prodotti"

    assert_text "Prodotti was successfully updated"
    click_on "Back"
  end

  test "destroying a Prodotti" do
    visit prodottis_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Prodotti was successfully destroyed"
  end
end
