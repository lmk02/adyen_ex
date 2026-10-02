defmodule AdyenEx.MixProject do
  use Mix.Project

  @version "1.1.0"
  @source_url "https://github.com/lmk02/adyen_ex"

  def project do
    [
      app: :adyen_ex,
      version: @version,
      elixir: "~> 1.19",
      start_permanent: Mix.env() == :prod,
      elixirc_paths: elixirc_paths(Mix.env()),
      deps: deps(),
      description: "Elixir client for the Adyen API, generated from Adyen's OpenAPI specs",
      package: package(),
      source_url: @source_url,
      docs: [main: "readme", extras: ["README.md"], source_ref: "v#{@version}"]
    ]
  end

  defp elixirc_paths(_env) do
    base_paths = ["lib"]

    # Selectively include generated services based on configuration
    # We check both Application config and ADYEN_SERVICES env var
    services_config = Application.get_env(:adyen_ex, :services, [])

    services_env =
      "ADYEN_SERVICES"
      |> System.get_env("")
      |> String.split(",", trim: true)
      |> Enum.map(&String.trim/1)

    services = if Enum.any?(services_env), do: services_env, else: services_config

    for_result =
      for service_string <- services do
        case String.split(service_string, ":") do
          [service, version] ->
            clean_name = service |> String.replace("Service", "") |> Macro.underscore()
            "generated_lib/#{clean_name}/#{version}"

          _ ->
            nil
        end
      end

    generated_paths = Enum.reject(for_result, &is_nil/1)

    base_paths ++ generated_paths
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger]
    ]
  end

  defp package do
    [
      licenses: ["MIT"],
      links: %{"GitHub" => @source_url},
      files: ~w(lib generated_lib priv/specs/json mix.exs README.md LICENSE)
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:req, "~> 0.5"},
      {:jason, "~> 1.4"},
      {:poison, "~> 6.0"},
      {:oapi_generator, "~> 0.4", runtime: false},
      {:ex_doc, "~> 0.31", only: :dev, runtime: false},
      {:styler, "~> 1.10", only: [:dev, :test], runtime: false}
    ]
  end
end
