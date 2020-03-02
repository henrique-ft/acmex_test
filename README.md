# acmex-test

- instalar *Elixir*

- baixar as dependências (na raiz do projeto): `mix deps.get`

- rodar linha de comando interativa (iex): `iex -S mix`

### Dentro do iex

`order = Acmex.new_order(["seudomínio.com"])`

`{:ok, order} = order`

`authorization = order.authorizations |> List.first`

`[_, challenge, _] = authorization.challenges`

`Acmex.get_challenge_response(challenge)`

`validation = Acmex.validate_challenge(challenge)` *# Apenas depois de realizar a challenge*

`challenge_result = Acmex.get_challenge(challenge.url)` *# Para ver o resultado da challenge*

`order_key = Acmex.OpenSSL.generate_key(:rsa)`

`{:ok, csr} = Acmex.OpenSSL.generate_csr(order_key, ["seudomínio.com"])`

`{:ok, order} = Acmex.finalize_order(order, csr)` *# Pega o certificado e certificado intermediário*
