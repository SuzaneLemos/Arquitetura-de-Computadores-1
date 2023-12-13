def decimal_to_binary(decimal):
    binary = ""
    if decimal == 0:
        return "0"
    while decimal > 0:
        remainder = decimal % 2
        binary = str(remainder) + binary
        decimal = decimal // 2
    return binary

# Example usage:
decimal_number = int(input("Enter a decimal number: "))
result = decimal_to_binary(decimal_number)
print(f"The binary equivalent of {decimal_number} is {result}")
