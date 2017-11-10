class AsciifyController < ApplicationController
  def index
  end

  def show
    pre = params[:ascii_text]
    font = params[:font]
    a = Artii::Base.new :font => font
    @result = a.asciify(pre)
  end
end
