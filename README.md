# Adyen Elixir SDK

A lean, code-generated Elixir client library for the [Adyen API](https://docs.adyen.com/).

This SDK provides core HTTP client components plus modules pre-generated from Adyen's OpenAPI specifications, and compiles only the API versions you configure. The specifications are bundled in `priv/specs`.

## Features

- **Pre-generated Modules:** All Adyen API modules are pre-generated within the library.
- **Selective Compilation:** Include only the services and versions you need in your configuration. Only these will be compiled into your application, keeping it lean.
- **Always Up-to-Date:** Bundles the full Adyen OpenAPI spec repository.

## Installation

Add `adyen_ex` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [
    {:adyen_ex, "~> 1.0"}
  ]
end
```

## Configuration

In `config/config.exs`, specify the Adyen services and versions you want to compile. This is read when the library compiles, so it must not go in `runtime.exs`:

```elixir
config :adyen_ex,
  services: [
    "CheckoutService:v71",
    "PayoutService:v68"
  ]
```

API keys and other settings are read at runtime, so put them in `config/runtime.exs`:

```elixir
config :adyen_ex,
  # Global fallback API key (optional)
  api_key: System.get_env("ADYEN_API_KEY"),

  # Service-specific configuration
  CheckoutService: [
    # Optional: overrides the default `v71` or whatever is inferred from the caller module
    # version: "v71",
    api_key: System.get_env("ADYEN_CHECKOUT_API_KEY")
  ],
  PayoutService: [
    api_key: System.get_env("ADYEN_PAYOUT_API_KEY")
  ]
```

Available services and versions match the file names in `priv/specs/json` (e.g. `CheckoutService-v71.json` → `"CheckoutService:v71"`).

## Usage

Once configured, only the specified services will be compiled. The modules are available under the `AdyenEx` namespace.

### Checkout Service (Example for v71)

```elixir
alias AdyenEx.Checkout.V71, as: CheckoutV71

request = %CheckoutV71.CreateCheckoutSessionRequest{
  merchantAccount: "YOUR_MERCHANT_ACCOUNT",
  amount: %CheckoutV71.Amount{value: 1000, currency: "EUR"},
  reference: "order-123",
  returnUrl: "https://your-site.com/checkout/return"
}

{:ok, session} = CheckoutV71.Payments.post_sessions(request)
```

### Custom headers (Idempotency-Key)

The code generator drops OpenAPI parameters declared with `"in": "header"`, so headers like Adyen's
`Idempotency-Key` are not part of the generated function signatures. Pass them through the
`:headers` option, which every generated operation forwards to the client:

```elixir
{:ok, payment} =
  CheckoutV71.Payments.post_payments(request,
    headers: [{"idempotency-key", "37ca9c97-d1d1-4c62-89e8-706891a563ed"}]
  )
```

Header names are case-insensitive and override the defaults (`x-api-key`, `content-type`).

## License

MIT
