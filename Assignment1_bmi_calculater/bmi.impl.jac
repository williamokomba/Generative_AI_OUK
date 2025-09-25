impl BMICalculator {
    can calculate_bmi with person entry {
        # Calculate BMI: weight (kg) / height (m) squared
        here.bmi = here.weight / (here.height * here.height);
        
        # Determine BMI category
        if (here.bmi < 18.5) {
            here.category = "Underweight";
        } else if (here.bmi < 25) {
            here.category = "Normal weight";
        } else if (here.bmi < 30) {
            here.category = "Overweight";
        } else {
            here.category = "Obese";
        }
        
        # Report the results
        std.out("Weight: " + here.weight + " kg");
        std.out("Height: " + here.height + " m");
        std.out("BMI: " + here.bmi);
        std.out("Category: " + here.category);
        std.out("-------------------");
    }
}