# BMI 계산

def calc_bmi(height = 170.5, weight=70.9):
    height = height * 0.01 
    weight = weight
    bmi = weight / height ** 2
    print("BMI:", bmi)

# calc_bmi(height = 170.5, weight=70.9)
