class QuotesController < Rulers::Controller

  def index
    @quotes = FileModel.all
    # render_response :index, :quotes => quotes
  end

  def show
    @obj = FileModel.find(params["id"])
    @ua = request.user_agent
    # render_response :quote, :obj => quote, :ua => ua
  end

  def a_quote
    render_response :a_quote, :noun => :winking
  end

  def quote_1
    quote_1 = FileModel.find(1)
    render_response :show, :obj => quote_1
  end

  def new_quote
    attrs = {
        "submitter" => "Jeff",
        "quote" => "A penny saved is a penny earned.",
        "attribution" => "Ben Franklin"
    }
    m = FileModel.create attrs
    render_response :show, obj: m
  end

  def update_quote
    return "" if env["REQUEST_METHOD"]!="POST"
    "OK"
  end
end
