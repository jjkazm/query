module QuestionsHelper

  def query_result(result)
    if result == "query can't be executed"
      render html: "query can't be executed"
    else
      render "/questions/partials/result"
    end
  end


end
