class HomeController < ApplicationController
  include Encrypt

  respond_to :json

  def show
  end

  def encrypt
    text = params[:text]
    integer = params[:integer]
    if text.present?
      @encrypted_text = encrypt_text(text, integer.to_i)
      render :json => {text: @encrypted_text}, head: "OK"
    else
      render :json => {text: "Text must be filled out"}, :status => :unprocessable_entity
    end
  end
end
