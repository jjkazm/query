class SqlDisplayer

  def initialize(query)
    @query = query
  end

  def call
    begin
      eval(@query).to_sql
    rescue NoMethodError
      "#{eval(@query).class} can't be conversed to sql with to_sql method"
    rescue NameError
      "invalid input"
    end
  end


end
