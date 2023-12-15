var Gadget_WarCost_WhichWar = "French military budget since 2009";

////Datas: 
var totalIraq = 687000000000;
var startOfIraqWar = new Date("Mar 20, 2003");
var IraqBudgetedThrough = new Date("Sept 30, 2009");

var totalAg = 228000000000;
var startOfAgWar = new Date("Oct 7, 2001");
var AgBudgetedThrough = new Date("Sept 30, 2009");

var totalFM = 186000000000;
/
var startOfFM = new Date("Jan 1, 2009");
var FMBudgetedThrough = new Date("Dec 31, 2014");

var separator = "'";


RunWarCost(); ////// Exécute la fonction principale. //

function RunWarCost() {
    if (Gadget_WarCost_WhichWar == "US in Wars since 2001") { //regarde quelles données afficher.
        calculateAg();
        calculateIraq();
        calculateTotal();
        var OutNumberWarCost = costOfTotal;
    } else if (Gadget_WarCost_WhichWar == "US in Iraq since 2003") {
        calculateIraq();
        var OutNumberWarCost = costOfIraq;
    } else if (Gadget_WarCost_WhichWar == "US in Afghanistan since 2001") {
        calculateAg();
        var OutNumberWarCost = costOfAg;
    } else if (Gadget_WarCost_WhichWar == "French military budget since 2009") {
        calculateFrenchMilitary();
        WarCostmoney = " euros";
        var OutNumberWarCost = costOfFrenchMilitary;
    } else { alert("The value of parameter Gadget_WarCost_WhichWar is wrong."); }

    if (WarCostmoney == "$") { var OutTextCostOfWar = WarCostmoney + number_str(OutNumberWarCost); } else { var OutTextCostOfWar = number_str(OutNumberWarCost) + WarCostmoney; } //La chaine de caractere du chiffre actuel

    var compteur = document.getElementById("compteur");
    compteur.innerHTML = "Votre compteur : " + OutTextCostOfWar + " = " + Gadget_WarCost_WhichWar; //Affiche la chaine de caractere

    window.setTimeout(RunWarCost, 100); ////// Réexécute la fonction principale dans 100 millisecondes. //
}

function calculateFrenchMilitary() {
    calculateWarCost(startOfFM, FMBudgetedThrough, totalFM);
    costOfFrenchMilitary = costOfWarAmount;
}

function calculateIraq() {
    calculateWarCost(startOfIraqWar, IraqBudgetedThrough, totalIraq);
    costOfIraq = costOfWarAmount;
}

function calculateAg() {
    calculateWarCost(startOfAgWar, AgBudgetedThrough, totalAg);
    costOfAg = costOfWarAmount;
}

function calculateTotal() {
    costOfTotal = costOfAg + costOfIraq;
}

function calculateWarCost(startOfWar, BudgetedThrough, totalMoney) {
    var totalMS = BudgetedThrough - startOfWar;
    var ratePerMS = totalMoney / totalMS;
    var curDate = new Date();
    var diff = curDate - startOfWar;
    costOfWarAmount = diff * ratePerMS;
}

function number_str(n) {
    var x = n.toString();
    var dot = x.lastIndexOf('.');
    x = x.substr(0, dot);
    var l = x.length;
    var res = "";
    for (l -= 3; l > 0; l -= 3) { res = separator + x.substr(l, 3) + res; }
    res = x.substr(0, l + 3) + res;
    return res;
}