class Test
  def initialize
    # Записываем массив вопросов
    @questions = [
    "Переживаете ли вы в ожидании важной деловой встречи?",
    "Если вам поручат выступить с докладом на каком либо мероприятии, " \
    "вызовет ли это у вас чувство дискомфорта?",
    "Вы откладываете поход к врачу до последнего момента?",
    "Если вам предстоит командировка в незнакомый город, " \
    "постараетесь ли вы избежать этой командировки?",
    "Вы делитесь своими мыслями и чувствами с кем бы то ни было?",
    "Вас раздражает, когда незнакомые люди на улице обращаются к вам с вопросом?",
    "Вы думаете, что людям разных поколений действительно трудно понимать " \
    "друг друга?",
    "Вам сложно будет сказать человеку, чтобы он вернул вам деньги, " \
    "взятые у вас несколько месяцев назад?",
    "Вам подали некачественное блюдо в кафе. Промолчите ли вы?",
    "Вы заговорите с незнакомым человеком, оставшись с ним наедине?",
    "Обнаружив в кассе, магазине, библиотеке длинную очередь, вы встанете в нее?",
    "Вам неприятно быть судьей в чужих конфликтах?",
    "Вы всегда оцениваете произведения искусства на свой вкус, " \
    "не прислушиваясь к чужому мнению?",
    "Если кто то выскажет ошибочную точку зрения на хорошо известный вам " \
    "вопрос, вы предпочтете промолчать и не исправлять его?",
    "Просьбы помочь в учебе или работе раздражают вас?",
    "Вам проще изложить свое мнение на бумаге, чем рассказать о нем?"
    ]
    # Объявим переменную, в которой будем считать количество
    # балов на вопросы теста.
    @answers = 0
  end

  # Записываем метод, где получаем ответ,
  # и получаем общее число баллов на вопросы теста.
  def get_answer(user_input)
      if user_input == 1
        @answers += 2
      elsif user_input == 3
        @answers += 1
      end
  end

  # Перед каждым выводом очищаем экран методом cls
  # чтобы вопросы задавались по одному
  def cls
    system("clear") || system("cls")
  end
  # Записываем в геттер результат балов.
  def answers
     @answers
  end

  def questions
     @questions
  end

end
