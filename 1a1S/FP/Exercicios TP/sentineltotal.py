# Read numbers until a sentinel (an empty string), and return their sum.
# JMR 2018


def inputTotal():
    tot = 0.0
    x = True
    y = 0
    while x :      
        x = input("valor? ")
        if x != "":
            y = y + 1
            tot = tot + float(x)
    print (y)
    return tot

# MAIN PROGRAM
def main():
   tot = inputTotal()
   print(tot)

if __name__ == "__main__":2
main()