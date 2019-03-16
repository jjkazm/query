module QuestionsHelper

  def query_result(result)
    binding.pry
    if result == "invalid query"
      render html: "query can't be executed"
    elsif result.class == Hash
      render "/questions/partials/result_hash"
    else
      render "/questions/partials/result"
    end
  end


end
