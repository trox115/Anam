require 'rails_helper'

RSpec.describe "Nomes", type: :request do

  describe "GET /Email" do
    it "returns http success" do
      get "/nome/Email"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /Telefone" do
    it "returns http success" do
      get "/nome/Telefone"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /Tipo" do
    it "returns http success" do
      get "/nome/Tipo"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /Municipio" do
    it "returns http success" do
      get "/nome/Municipio"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /Categoria" do
    it "returns http success" do
      get "/nome/Categoria"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /Pagamento:bool" do
    it "returns http success" do
      get "/nome/Pagamento:bool"
      expect(response).to have_http_status(:success)
    end
  end

end
