require 'test_helper'

class MeupedidosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @meupedido = meupedidos(:one)
  end

  test "should get index" do
    get meupedidos_url
    assert_response :success
  end

  test "should get new" do
    get new_meupedido_url
    assert_response :success
  end

  test "should create meupedido" do
    assert_difference('Meupedido.count') do
      post meupedidos_url, params: { meupedido: { descricao: @meupedido.descricao, obs: @meupedido.obs, status: @meupedido.status, total: @meupedido.total, user_id: @meupedido.user_id } }
    end

    assert_redirected_to meupedido_url(Meupedido.last)
  end

  test "should show meupedido" do
    get meupedido_url(@meupedido)
    assert_response :success
  end

  test "should get edit" do
    get edit_meupedido_url(@meupedido)
    assert_response :success
  end

  test "should update meupedido" do
    patch meupedido_url(@meupedido), params: { meupedido: { descricao: @meupedido.descricao, obs: @meupedido.obs, status: @meupedido.status, total: @meupedido.total, user_id: @meupedido.user_id } }
    assert_redirected_to meupedido_url(@meupedido)
  end

  test "should destroy meupedido" do
    assert_difference('Meupedido.count', -1) do
      delete meupedido_url(@meupedido)
    end

    assert_redirected_to meupedidos_url
  end
end
