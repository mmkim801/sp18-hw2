class PagesController < ApplicationController
  def home
  end

  def stringify
    stringify_instance = Stringify.new(
      params[:name],
      params[:adjective]
    )
    @text = stringify_instance.what_am_i
  end

  def age
  end

  def person
    @person = Person.new params[:name], params[:age]
  end

  def me
    @name = "Name: Min Jung Kim"
    @from = "From: SoCal"
    @year = "Year: Senior"
    @fun = "Fun Fact: Going to Mexico this Spring"
    @excite = "Excited to become a ruby expert!"
  end
end
