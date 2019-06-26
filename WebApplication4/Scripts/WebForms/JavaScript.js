function calculateBmr() {
    var weight = document.forms["iii"]["weight"];
    var height = document.forms["iii"]["height"];
    var age = document.forms["iii"]["age"];
    var male = document.forms["iii"]["gender1"];
    var female = document.forms["iii"]["gender2"];
    var activity = document.forms["iii"]["activity"];
    var goal = document.forms["iii"]["goal"];
    var Bmr;
    var finalBmr;
    if (weight.value === "" || weight.value === null) {
        document.getElementById("pweight").innerHTML = "Enter your weight";
        weight.focus();
        return false;
    }
    else if (weight.value < 10) {
        document.getElementById("pweight").innerHTML = "you weight cannot be less than 10kgs";
        weight.focus();
        return false;
    }
    else if (weight.value > 500) {
        document.getElementById("pweight").innerHTML = "you weight cannot be greater than 500kgs";
        weight.focus();
        return false;
    }
    document.getElementById("pweight").innerHTML = "";
    if (height.value === "" || height.value === null) {
        document.getElementById("pheight").innerHTML = "Enter your height";
        height.focus();
        return false;
    }
    else if (height.value < 60) {
        document.getElementById("pheight").innerHTML = "you height cannot be less than 60cm";
        height.focus();
        return false;
    }
    else if (height.value > 320) {
        document.getElementById("pheight").innerHTML = "you height cannot be greater than 320cm";
        height.focus();
        return false;
    }
    document.getElementById("pheight").innerHTML = "";
    if (age.value === "" || age.value === null) {
        document.getElementById("page").innerHTML = "Enter your age";
        age.focus();
        return false;
    }
    else if (age.value < 18) {
        document.getElementById("page").innerHTML = "your age cannot be less than 18";
        age.focus();
        return false;
    }
    else if (age.value > 60) {
        document.getElementById("page").innerHTML = "your age cannot be greater than 60";
        age.focus();
        return false;
    }
    document.getElementById("page").innerHTML = "";
    if (female.checked === false && male.checked === false) {
        document.getElementById("pgender").innerHTML = "select your gender";
        male.focus();
        return false;
    }
    document.getElementById("pgender").innerHTML = "";
    if (activity.selectedIndex === 0) {
        document.getElementById("pactivity").innerHTML = "select activity";
        activity.focus();
        return false;
    }
    document.getElementById("pactivity").innerHTML = "";
    if (goal.selectedIndex === 0) {
        document.getElementById("pgoal").innerHTML = "select Goal";
        goal.focus();
        return false;
    }
    document.getElementById("pgoal").innerHTML = "";
    if (male.checked === true) {
        var Bmr = 66.47 + (13.7 * weight.value) + (5 * height.value) - (6.8 * age.value);
    }
    if (female.checked === true) {
        var Bmr = 655.1 + (9.6 * weight.value) + (1.8 * height.value) - (4.7 * age.value);
    }
    Bmr = Bmr.toFixed(2);
    document.getElementById("pbmr").innerHTML = Bmr;
    if (activity.selectedIndex === 1) {
        if (goal.selectedIndex === 1) {
            finalBmr = (Bmr * 1.2) - 500;
        }
        if (goal.selectedIndex === 2) {
            finalBmr = (Bmr * 1.2);
        }
        else if (goal.selectedIndex === 3) {
            finalBmr = (Bmr * 1.2) + 500;
        }
    }
    else if (activity.selectedIndex === 2) {
        if (goal.selectedIndex === 1) {
            finalBmr = (Bmr * 1.375) - 500;
        }
        if (goal.selectedIndex === 2) {
            finalBmr = (Bmr * 1.375);
        }
        else if (goal.selectedIndex === 3) {
            finalBmr = (Bmr * 1.375) + 500;
        }
    }
    else if (activity.selectedIndex === 3) {
        if (goal.selectedIndex === 1) {
            finalBmr = (Bmr * 1.55) - 500;
        }
        if (goal.selectedIndex === 1) {
            finalBmr = (Bmr * 1.55);
        }
        else if (goal.selectedIndex === 3) {
            finalBmr = (Bmr * 1.55) + 500;
        }
    }
    else if (activity.selectedIndex === 4) {
        if (goal.selectedIndex === 1) {
            finalBmr = (Bmr * 1.725) - 500;
        }
        if (goal.selectedIndex === 2) {
            finalBmr = (Bmr * 1.2);
        }
        else if (goal.selectedIndex === 3) {
            finalBmr = (Bmr * 1.725) + 500;
        }
    }
    else if (activity.selectedIndex === 5) {
        if (goal.selectedIndex === 1) {
            finalBmr = (Bmr * 1.9) - 500;
        }
        if (goal.selectedIndex === 2) {
            finalBmr = (Bmr * 1.2);
        }
        else if (goal.selectedIndex === 3) {
            finalBmr = (Bmr * 1.9) + 500;
        }
    }
    finalBmr = finalBmr.toFixed(2);
    document.getElementById("pcal").innerHTML = finalBmr + "Cal";
}