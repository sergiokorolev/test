class Result
  attr_reader :results

  # Записываем массив результатов
  def read_answers(file_name)
    @results = file_name.readlines
  end

  # Выводим результат, в зависимости от полученных баллов
  def get_result(test)
    case test.answers
      when 30..32 then puts @results[0]
      when 25..29 then puts @results[1]
      when 19..24 then puts @results[2]
      when 14..18 then puts @results[3]
      when 9..13 then puts @results[4]
      when 4..8 then puts @results[5]
      when 0..3 then puts @results[6]
    end
  end
end
