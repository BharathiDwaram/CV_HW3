import numpy as np


def integral_image(inputi):
    ing_i = np.copy(inputi)
    for i in range(1, inputi.shape[0]):
        for j in range(1, inputi.shape[1]):
            ing_i[i, j] = ing_i[i - 1, j] + ing_i[i, j - 1] + inputi[i, j]
    return ing_i


inputi = np.array([[1, 5], [2, 4]])
print("Input image = \n", inputi)
output = integral_image(inputi)
print("Integral image = \n", output)
