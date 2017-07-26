class Test
  # Записываем массив вопросов
  attr_reader :answers

  def initialize
    # Объявим переменную, в которой будем считать количество
    # балов на вопросы теста.
    @answers = 0
  end

  # Записываем массив вопросов
  def read_questions(file_name)
    file_name.readlines
  end

  # Записываем метод, где получаем ответ пользователя,
  # и получаем общее число баллов на вопросы теста.
  def get_answer(user_inpute)
    case user_inpute
      when 1 then @answers += 2
      when 3 then @answers += 1
    end
  end

  # Перед каждым выводом очищаем экран методом cls
  # чтобы вопросы задавались по одному
  def cls
    system("clear") || system("cls")
  end
end
