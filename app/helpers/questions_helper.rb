module QuestionsHelper

  def query_result(result)
    if result == "invalid query"
      render html: "query can't be executed"
    elsif result.class == Hash
      render "/questions/partials/result_hash"
    else
      render "/questions/partials/result"
    end
  end

  def columns(active_record)
    return active_record.column_names.reject{ |column| column == "created_at"|| column == "updated_at" }
  end

end
