# > reticulate::repl_python()

print("헬로 파이썬!!!")

print("헬로 파이썬!!!")

# 람다 함수 -----
## 함수 사용하지 않는 경우

data = [1,2,3,4,5]

for datum in data:
    data[datum-1] = datum * datum

print(data)

## 함수를 사용한 경우

data = [1,2,3,4,5]

def square_num(data):
    for datum in data:
        data[datum-1] = datum * datum
    return(data)    

print(square_num(data))

## 람다 함수를 사용한 경우
### 데이터 정의
data = [1,2,3,4,5]

### 함수 정의
square_number = lambda num: num * num

print(square_number(data[2]))

### 람다함수
data_data = map(lambda num: num * num, data)

print(list(data_data))


# 함수 오류처리 -----
## 오류 사례
import math

def log_number(number):
    # -*- coding: utf-8 -*-
    return math.log10(number)

log_number(10)
log_number('Korea')

## 오류 처리 
import numbers

def log_number(number):
    if number < 0:
        raise ValueError(f'number는 0 보다 커야 합니다.')
    try:
        return math.log10(number)
    except TypeError:
        print('number 문자는 안돼요')
    
log_number(0)
log_number('Korea')

# 반복자 ------------------------------
## for 루프 - 리스트
languages = ["R", "파이썬", "C/C++"]

for language in languages:
  print(f"데이터 사이언스 언어: {language}")


## for 루프 - 딕셔너리
data_science = {"R": "젠틀맨, 이하카",
                "파이썬": "귀도 반 로섬",
                "C/C++": "톰슨, 리치"}

for language, creator in data_science.items():
    print(f"- 데이터 사이언스 언어: {language}, \n ㄴ 창시자: {creator}")

## `for` 루프 반복자 - `enumerate`

models = ["회귀분석", "기계학습", "딥러닝"]

for index, model in enumerate(models):
  print(f"- 데이터 사이언스 모형 {index+1}: {model}")

print(list(enumerate(models)))

## `for` 루프 반복자 - `zip`

languages = ["R", "파이썬", "텐서플로우"]
models   = ["회귀분석", "기계학습", "딥러닝"]

for language, model in zip(languages, models):
  print(f"데이터 사이언스 언어: {language}, 모형: {model}")

## `for` 루프 반복자 - `zip` 압축풀기

solution = zip(languages, models)

print(*solution)

# list comprehension

## 들어가며

numbers = [1,2,3,4,5]

res_number = []

for number in numbers:
  res_number.append(number * 2)

print(res_number)
