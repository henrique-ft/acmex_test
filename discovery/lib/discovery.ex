defmodule Discovery do
  def test do
    key = Acmex.OpenSSL.generate_key(:rsa)
    Acmex.start_link(key: key)
    Acmex.new_account(["mailto:hriqueft@gmail.com"], true)

    require IEx; IEx.pry
  end
end
