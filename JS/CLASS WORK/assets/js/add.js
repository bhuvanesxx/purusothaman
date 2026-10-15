const results = [];
const oneInput = document.getElementById("oneInput");
const twoInput = document.getElementById("twoInput");
const showing = document.getElementById("showing");

function calculate(operation) {
    if (oneInput.value.trim() === "" || twoInput.value.trim() === "") {
        showing.textContent = "Enter both numbers.";
        return;
    }

    const oneValue = Number(oneInput.value);
    const twoValue = Number(twoInput.value);

    if (!Number.isFinite(oneValue) || !Number.isFinite(twoValue)) {
        showing.textContent = "Enter valid numbers.";
        return;
    }

    if (operation === "divide" && twoValue === 0) {
        showing.textContent = "Cannot divide by zero.";
        return;
    }

    let result;
    switch (operation) {
        case "add":
            result = oneValue + twoValue;
            break;
        case "subtract":
            result = oneValue - twoValue;
            break;
        case "multiply":
            result = oneValue * twoValue;
            break;
        case "divide":
            result = oneValue / twoValue;
            break;
        default:
            return;
    }

    results.push(result);
    showing.textContent = results.join(", ");
}

document.getElementById("addButton").addEventListener("click", () => calculate("add"));
document.getElementById("subButton").addEventListener("click", () => calculate("subtract"));
document.getElementById("mulButton").addEventListener("click", () => calculate("multiply"));
document.getElementById("divButton").addEventListener("click", () => calculate("divide"));
