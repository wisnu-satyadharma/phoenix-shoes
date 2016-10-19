defmodule Ecommerce.WelcomeView do
  use Ecommerce.Web, :view

  def current_user do
    @conn.private.plug_session["current_user"]
  end
  
end
