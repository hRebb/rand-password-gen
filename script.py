import random
import string

class PasswordGenerator:
    def __init__(self, length):
        self.length=length
    
    def generate_password(self):
        characters = string.ascii_letters + string.digits + string.punctuation
        password = ''.join(random.choice(characters) for _ in range(self.length))
        return password

if __name__ == "__main__":
    password_length = int(input("Enter password length :"))
    password_generator = PasswordGenerator(password_length)
    password = password_generator.generate_password()
    print("Generated Password:", password)