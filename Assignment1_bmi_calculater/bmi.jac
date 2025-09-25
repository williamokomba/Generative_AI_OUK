walker BMICalculator {
    has bmi: float = 0.0;
    has category: str = "";

    can start with `root entry {
        visit_all(person);
    }

    can calculate_bmi with person entry {
        self.bmi = here.weight / (here.height * here.height);
        if self.bmi < 18.5 {
            self.category = "Underweight";
        } elif self.bmi < 25.0 {
            self.category = "Normal weight";
        } elif self.bmi < 30.0 {
            self.category = "Overweight";
        } else {
            self.category = "Obese";
        }
        report "Person with weight " + str(here.weight) + "kg and height " + str(here.height) + "m has BMI " + str(round(self.bmi, 2)) + " (" + self.category + ")";
    }
}

node person {
    has weight: float;
    has height: float;
}

# Create a graph of person nodes connected to root
node root;

spawn person(weight=70.0, height=1.75) as p1;
spawn person(weight=85.0, height=1.80) as p2;
spawn person(weight=60.0, height=1.65) as p3;
spawn root -> p1;
spawn root -> p2;
spawn root -> p3;

# Start the BMI calculator walker from the root
spawn root walker BMICalculator;