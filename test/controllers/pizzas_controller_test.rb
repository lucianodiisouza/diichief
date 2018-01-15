require 'test_helper'

class PizzasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @pizza = pizzas(:one)
  end

  test "should get index" do
    get pizzas_url
    assert_response :success
  end

  test "should get new" do
    get new_pizza_url
    assert_response :success
  end

  test "should create pizza" do
    assert_difference('Pizza.count') do
      post pizzas_url, params: { pizza: { ingredientes: @pizza.ingredientes, nome: @pizza.nome, preco: @pizza.preco, tamanho: @pizza.tamanho } }
    end

    assert_redirected_to pizza_url(Pizza.last)
  end

  test "should show pizza" do
    get pizza_url(@pizza)
    assert_response :success
  end

  test "should get edit" do
    get edit_pizza_url(@pizza)
    assert_response :success
  end

  test "should update pizza" do
    patch pizza_url(@pizza), params: { pizza: { ingredientes: @pizza.ingredientes, nome: @pizza.nome, preco: @pizza.preco, tamanho: @pizza.tamanho } }
    assert_redirected_to pizza_url(@pizza)
  end

  test "should destroy pizza" do
    assert_difference('Pizza.count', -1) do
      delete pizza_url(@pizza)
    end

    assert_redirected_to pizzas_url
  end
end
