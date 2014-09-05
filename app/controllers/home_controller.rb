class HomeController < ApplicationController
  include Encrypt

  respond_to :json

  def show
  end

  def encrypt
    text = params[:text]
    integer = params[:integer]
    @encrypted_text = encrypt_text(text, integer.to_i)
    render :json => {text: @encrypted_text}, head: "OK"
  end
end
