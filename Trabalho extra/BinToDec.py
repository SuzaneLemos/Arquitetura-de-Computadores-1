def binary_to_decimal(binary):
    decimal = 0
    power = len(binary) - 1
    for digit in binary:
        decimal += int(digit) * (2 ** power)
        power -= 1
    return decimal

# Example usage:
binary_number = input("Enter a binary number: ")
result = binary_to_decimal(binary_number)
print(f"The decimal equivalent of {binary_number} is {result}")
