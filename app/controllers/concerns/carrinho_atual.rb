module CarrinhoAtual
	extend ActiveSupport::Concern

	
	private
	def set_carrinho
		@carrinho = Carrinho.find(session[:carrinho_id])
	rescue ActiveRecord::RecordNotFound
		@carrinho = Carrinho.create
		session[:carrinho_id] = @carrinho.id
	end
end