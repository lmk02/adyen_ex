defmodule AdyenEx.StructureTest do
  use ExUnit.Case

  alias AdyenEx.Account.V6.Accounts

  @accounts_loaded Code.ensure_loaded?(Accounts)

  @tag skip: not @accounts_loaded
  test "modules are generated on the fly" do
    assert @accounts_loaded
  end

  @tag skip: not @accounts_loaded
  test "generated modules contain correct functions" do
    assert function_exported?(Accounts, :post_close_account, 2)
  end
end
