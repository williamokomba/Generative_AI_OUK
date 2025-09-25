walker BMICalculator {
    has weight: float;
    has height: float;
    has bmi: float = 0.0;
    has category: str = "";

    can start with `root entry;
    can calculate_bmi with person entry;
}

node person {
    has weight: float;
    has height: float;
}

# Will run when in CLI mode (not in cloud)
with entry:__main__ {
    root spawn BMICalculator(weight=70.0, height=1.75);
    root spawn BMICalculator(weight=85.0, height=1.80);
    root spawn BMICalculator(weight=60.0, height=1.65);
}