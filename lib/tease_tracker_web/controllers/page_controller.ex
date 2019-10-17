defmodule TeaseTrackerWeb.PageController do
  use TeaseTrackerWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
