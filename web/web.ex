defmodule Carehub.Web do
  @moduledoc """
  A module that keeps using definitions for controllers,
  views and so on.

  This can be used in your application as:

      use Carehub.Web, :controller
      use Carehub.Web, :view

  The definitions below will be executed for every view,
  controller, etc, so keep them short and clean, focused
  on imports, uses and aliases.

  Do NOT define functions inside the quoted expressions
  below.
  """

  def model do
    quote do
      use Ecto.Schema

      import Ecto
      import Ecto.Changeset
      import Ecto.Query
    end
  end

  def controller do
    quote do
      use Phoenix.Controller

      alias Carehub.Repo
      import Ecto
      import Ecto.Query

      import Carehub.Router.Helpers
    end
  end

  def channel do
    quote do
      use Phoenix.Channel

      alias Carehub.Repo
      import Ecto
      import Ecto.Query
    end
  end

  @doc """
  When used, dispatch to the appropriate controller/view/etc.
  """
  defmacro __using__(which) when is_atom(which) do
    apply(__MODULE__, which, [])
  end
end
