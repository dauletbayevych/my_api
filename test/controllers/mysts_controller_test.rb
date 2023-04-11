require "test_helper"

class MystsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @myst = mysts(:one)
  end

  test "should get index" do
    get mysts_url, as: :json
    assert_response :success
  end

  test "should create myst" do
    assert_difference("Myst.count") do
      post mysts_url, params: { myst: { age: @myst.age, character: @myst.character, creature: @myst.creature, game: @myst.game, quote: @myst.quote } }, as: :json
    end

    assert_response :created
  end

  test "should show myst" do
    get myst_url(@myst), as: :json
    assert_response :success
  end

  test "should update myst" do
    patch myst_url(@myst), params: { myst: { age: @myst.age, character: @myst.character, creature: @myst.creature, game: @myst.game, quote: @myst.quote } }, as: :json
    assert_response :success
  end

  test "should destroy myst" do
    assert_difference("Myst.count", -1) do
      delete myst_url(@myst), as: :json
    end

    assert_response :no_content
  end
end
