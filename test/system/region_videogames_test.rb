require "application_system_test_case"

class RegionVideogamesTest < ApplicationSystemTestCase
  setup do
    @region_videogame = region_videogames(:one)
  end

  test "visiting the index" do
    visit region_videogames_url
    assert_selector "h1", text: "Region videogames"
  end

  test "should create region videogame" do
    visit region_videogames_url
    click_on "New region videogame"

    fill_in "Region", with: @region_videogame.region_id
    fill_in "Sales", with: @region_videogame.sales
    fill_in "Videogame", with: @region_videogame.videogame_id
    click_on "Create Region videogame"

    assert_text "Region videogame was successfully created"
    click_on "Back"
  end

  test "should update Region videogame" do
    visit region_videogame_url(@region_videogame)
    click_on "Edit this region videogame", match: :first

    fill_in "Region", with: @region_videogame.region_id
    fill_in "Sales", with: @region_videogame.sales
    fill_in "Videogame", with: @region_videogame.videogame_id
    click_on "Update Region videogame"

    assert_text "Region videogame was successfully updated"
    click_on "Back"
  end

  test "should destroy Region videogame" do
    visit region_videogame_url(@region_videogame)
    click_on "Destroy this region videogame", match: :first

    assert_text "Region videogame was successfully destroyed"
  end
end
