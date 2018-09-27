require 'test_helper'

class TypepaymentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @typepayment = typepayments(:one)
  end

  test "should get index" do
    get typepayments_url
    assert_response :success
  end

  test "should get new" do
    get new_typepayment_url
    assert_response :success
  end

  test "should create typepayment" do
    assert_difference('Typepayment.count') do
      post typepayments_url, params: { typepayment: { descricao: @typepayment.descricao, nome: @typepayment.nome, user_id: @typepayment.user_id } }
    end

    assert_redirected_to typepayment_url(Typepayment.last)
  end

  test "should show typepayment" do
    get typepayment_url(@typepayment)
    assert_response :success
  end

  test "should get edit" do
    get edit_typepayment_url(@typepayment)
    assert_response :success
  end

  test "should update typepayment" do
    patch typepayment_url(@typepayment), params: { typepayment: { descricao: @typepayment.descricao, nome: @typepayment.nome, user_id: @typepayment.user_id } }
    assert_redirected_to typepayment_url(@typepayment)
  end

  test "should destroy typepayment" do
    assert_difference('Typepayment.count', -1) do
      delete typepayment_url(@typepayment)
    end

    assert_redirected_to typepayments_url
  end
end
