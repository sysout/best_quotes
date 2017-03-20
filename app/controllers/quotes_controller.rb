class QuotesController < Rulers::Controller

  def index
    quotes = FileModel.all
    render :index, :quotes => quotes
  end

  def a_quote
    render :a_quote, :noun => :winking
  end

  def quote_1
    quote_1 = FileModel.find(1)
    render :quote, :obj => quote_1
  end

  def new_quote
    attrs = {
        "submitter" => "Jeff",
        "quote" => "A penny saved is a penny earned.",
        "attribution" => "Ben Franklin"
    }
    m = FileModel.create attrs
    render :quote, obj: m
  end

  def update_quote
    return "" if env["REQUEST_METHOD"]!="POST"
    "OK"
  end
end
