class IsbnCalculator
  def complete_isbn(isbn)
    isbn = isbn.to_s
    isbn.split('').push(check_digit(isbn)).join('').to_i
  end

  private

  def check_digit(isbn)
    sum = 0
    isbn.split('').each_with_index do |num, index|
      num = num.to_i
      sum = index % 2 == 0 ? sum + num * 1 : sum + num * 3
    end
    result = sum % 10
    check_digit = 10 - result
    return 0 if check_digit == 10
    check_digit
  end
end
