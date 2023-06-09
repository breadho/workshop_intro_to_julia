# functions

function function_name()
    # here we do stuff inside the function
    # this is the body
end

# short form

short_function() = "Short Function"

function function_name()
    x = "Function"
    return x
end

# positional arguments versus keyword arguments

function sum_two_numbers(x, y)
    return x + y
end

sum_two_numbers(3, 4)

function sum_two_number_with_caveats(x, y; key1=1, key2=2)
    return sum([x, y, key1, key2])
end

function sum_two_number_with_caveats_2(x, y, key1=1, key2=2)
    return sum([x, y, key1, key2])
end


function sum_two_number_with_caveats_3(x, y; key1, key2=2)
    return sum([x, y, key1, key2])
end

sum_two_number_with_caveats(4, 3)

sum_two_number_with_caveats_2(4, 3, 2)

sum_two_number_with_caveats_3(4, 3; key1=3)

function fun1(x::AbstractFloat)
    return "AbstractFloat"
end

function fun1(x::Float64)
    return "Float64"
end

fun1(Float32(2.0))

# function vs methods

function round_number(x::Float64)
    return Int64(round(x))
end

function round_number(x::Int64)
    return x
end

function kwarg_only(; key1=1, key2=2)
    return key1 + key2
end

# generic programming 

# multiple dispatch

# 호출되는 함수가 정적 유형이 아닌 인수의 런타임 유형에 의존하는 형태

# class/oop 개념이 적용되지 않는 줄리아

function sum_two_numbers(x::Int, y::AbstractFloat)
    return x + round(Int, y)
end

function sum_two_numbers(x::AbstractFloat, y::Int)
    return x + float(y)
end

sum_two_numbers(1, 2.0)
sum_two_numbers(1.0, 2)

# anonymous functions (익명 함수 -> 보통 다른 함수의 인수로 들어감)

(x -> x + 1)(5)

(x -> isodd(x))(5)

filter(x -> x > 3, 1:10)
filter(x -> isodd(x), 1:10) 
 
# uni-code 사용
π

# functions Exercises

# Make a function `round_number` that rounds a number x as input.
# It should have two methods:
# 1. Float64 should use the `round` function
# 2. Int64 should just return the input (noop)

# Write a function to multiply all the numbers in a vector
