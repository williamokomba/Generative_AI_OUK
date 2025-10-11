#William Practice file for Jac language basics

#Starting the program
#start "with entry{}" block, which is the main entry point of the program
with entry{
    print("Hello Willam!!"); 
}

#Assigning the datatype to the variable
with entry{
    name: str = "Paul";  #add the datatype to the variable and the value to it.
    age: int = 30;
    status: bool = True;

    print(f"Hello {name}!!, you are {age} years old. and you are a student");
}


#mathematical operations
with entry{
    a: int = 10;
    b: int = 20;

    sum: int = a+b;
    diff: int = b-a;
    prod: int = a*b;
    div: float = b/a;
    mode: int = a%b;
    exp: int = a**2;
    print(f"Sum: {sum}, 
           Difference: {diff}, 
           Product: {prod}, 
           Division: {div}, 
           Modulus: {mode}, 
           Exponent: {exp}");
}

#Compound assignment operators
with entry{
    x: int = 10;
    print(f"Initial value of x: {x}");

    x += 5; #add 5 to x
    print(f"Value of x after adding 5: {x}");

    x -= 3;  #subtract 3 from x
    print(f"Value of x after subtracting 3: {x}");

    x *= 2;  #multiply x by 2
    print(f"Value of x after multiplying by 2: {x}");

    x /= 4;  #divide x by 4
    print(f"Value of x after dividing by 4: {x}");
}

#Common shortcuts: 
#x += 5 means x = x + 5 (add 5) 
#x -= 3 means x = x - 3 (subtract 3) 
#x *= 2 means x = x * 2 (multiply by 2) 
#x /= 4 means x = x / 4 (divide by 4)

#Multiple entry blocks
# You can have multiple entry blocks in a Jac program. Each entry block will be executed in the order they appear in the code.
# Each entry block is independent and can contain its own set of instructions.
# Here are a few examples of multiple entry blocks:
with entry{
   print("This is the first entry block.");
}

with entry{
    print("This is the second entry block.");
}

with entry{
    print("This is the third entry block.");
}


#if else statements
with entry{
    value = 10;

    if value > 5 {
        print("value is less");
    }
    else {
        print("value is greater");
    }   

    
}

#if elif else statements
with entry {
    score = 85;

    if score >= 90 {
        print("Grade: A");
    } elif score >= 80 {
        print("Grade: B");
    } elif score >= 70 {
        print("Grade: C");
    } elif score >= 60 {
        print("Grade: D");
    } else {
        print("Grade: F");
    }
}


#Nested if statements
with entry {
    num = 15;   
    if num > 0 {
        if num % 2 == 0 {
            print(f"{num} is a positive even number.");
        } 
        else {
            print(f"{num} is a positive odd number.");
        }
    } else {
        print(f"{num} is not a positive number.");
    }
}  

with entry {
    weather = "sunny";
    temperature = 80;

    if weather == "sunny" {
        if temperature > 75 {
            print("Perfect beach day!");
        } else {
            print("Nice day for a walk!");
        }
    } else {
        print("Maybe stay inside");
    }
}


#Logical operators
with entry {
    a = 10;
    b = 20;
    c = 30;
    if a < b and b < c {
        print("Both conditions are true.");
    }
    elif a < b or b > c {
        print("At least one condition is true.");
    }
    elif not a > b {
        print("Condition is false.");
    }

}


#combining conditions
with entry {
    age = 25;
    has_license = True;

    # AND - both must be true
    if age >= 16 and has_license {
        print("You can drive!");
    }

    # OR - at least one must be true
    elif age < 18 or age > 65 {
        print("Discounted ticket price!");
    }

    # NOT - reverse the condition
    if not has_license {
        print("You need a license!");
    }
}



