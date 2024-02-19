require "test_helper"

class RegionVideogamesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @region_videogame = region_videogames(:one)
  end

  test "should get index" do
    get region_videogames_url
    assert_response :success
  end

  test "should get new" do
    get new_region_videogame_url
    assert_response :success
  end

  test "should create region_videogame" do
    assert_difference("RegionVideogame.count") do
      post region_videogames_url, params: { region_videogame: { region_id: @region_videogame.region_id, sales: @region_videogame.sales, videogame_id: @region_videogame.videogame_id } }
    end

    assert_redirected_to region_videogame_url(RegionVideogame.last)
  end

  test "should show region_videogame" do
    get region_videogame_url(@region_videogame)
    assert_response :success
  end

  test "should get edit" do
    get edit_region_videogame_url(@region_videogame)
    assert_response :success
  end

  test "should update region_videogame" do
    patch region_videogame_url(@region_videogame), params: { region_videogame: { region_id: @region_videogame.region_id, sales: @region_videogame.sales, videogame_id: @region_videogame.videogame_id } }
    assert_redirected_to region_videogame_url(@region_videogame)
  end

  test "should destroy region_videogame" do
    assert_difference("RegionVideogame.count", -1) do
      delete region_videogame_url(@region_videogame)
    end

    assert_redirected_to region_videogames_url
  end
end
