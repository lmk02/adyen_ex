defmodule AdyenEx.ClientRetryTest do
  # Not async because Req default options are global
  use ExUnit.Case, async: false

  alias AdyenEx.Client

  setup do
    original = Req.default_options()
    test_pid = self()

    adapter = fn request ->
      send(test_pid, :attempt)
      {request, Req.Response.new(status: 503, body: "")}
    end

    Req.default_options(adapter: adapter, retry_delay: 0)
    on_exit(fn -> Req.default_options(original) end)
  end

  defp request(method, opts \\ []) do
    Client.request(%{method: method, url: "/accounts", opts: [api_key: "key"] ++ opts})
  end

  defp attempts(count \\ 0) do
    receive do
      :attempt -> attempts(count + 1)
    after
      0 -> count
    end
  end

  test "does not retry a POST by default" do
    assert {:error, %AdyenEx.Error{status: 503}} = request(:post)
    assert attempts() == 1
  end

  test "retries a GET on transient failures" do
    assert {:error, %AdyenEx.Error{status: 503}} = request(:get)
    assert attempts() == 4
  end

  test "retries a POST when the caller opts in" do
    assert {:error, %AdyenEx.Error{status: 503}} = request(:post, retry: :transient)
    assert attempts() == 4
  end
end
