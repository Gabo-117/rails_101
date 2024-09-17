require "application_system_test_case"

class CentrosTest < ApplicationSystemTestCase
  setup do
    @centro = centros(:one)
  end

  test "visiting the index" do
    visit centros_url
    assert_selector "h1", text: "Centros"
  end

  test "should create centro" do
    visit centros_url
    click_on "Nuevo centro"

    fill_in "Clave", with: @centro.clave
    fill_in "Nombre", with: @centro.nombre
    click_on "Create Centro"

    assert_text "Centro was successfully created"
    click_on "Back"
  end

  test "should update Centro" do
    visit centro_url(@centro)
    click_on "Edit this centro", match: :first

    fill_in "Clave", with: @centro.clave
    fill_in "Nombre", with: @centro.nombre
    click_on "Update Centro"

    assert_text "Centro was successfully updated"
    click_on "Back"
  end

  test "should destroy Centro" do
    visit centro_url(@centro)
    click_on "Destroy this centro", match: :first

    assert_text "Centro was successfully destroyed"
  end
end
