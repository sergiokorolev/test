# Подключаем классы
require_relative 'lib/test'
require_relative 'lib/result'
require_relative 'lib/user'

# Записываем в константу версию программы
VERSION = "Ваш уровень общительности. Версия 0.3\n\n"

# Создаем объекты для Теста, Пользователя и Вывода результата
test = Test.new
user = User.new
print_result = Result.new

# Выводим версию
puts VERSION
# Предлагаем пройти тест и представиться пользователю.
user.get_user_name
# Объявляем путь к файлу с вопросами.
# Открываем файл с вопросами теста
questions_file_pasth = "#{File.dirname(__FILE__)}/data/questions.txt"
questions_file = File.new(questions_file_pasth, "r:UTF-8")

# Основной цикл программы.
for question in test.read_questions(questions_file) do
  # Перед каждым выводом вопроса очищаем экран методом cls
  test.cls
  # Выводим на экран текущий вопрос на экран
  puts question
  # Записываем ответ пользователя
  user_inpute = user.user_answer
  # Записываем общий балл
  test.get_answer(user_inpute)
end

# Объявляем путь к файлу с результатами.
# Открываем файл с результатами теста
answers_file_pasth = "#{File.dirname(__FILE__)}/data/answers.txt"
answers_file = File.new(answers_file_pasth, "r:UTF-8")
print_result.read_answers(answers_file)
# Выводим общее колличество баллов и результат теста
puts "#{user.name}\nКоличество баллов Вашего теста - #{test.score}"
puts
print_result.get_result(test)



