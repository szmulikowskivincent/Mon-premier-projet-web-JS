function Login() {
    var done = 0;
    var username = document.login.username.value;
    var userlastname = document.login.userlastname.value;
    var useremail = document.login.useremail.value;
    var password = document.login.password.value;

    if (username == "user" && password == "access") {
        window.location =
            "file:///C:/Users/szmul/OneDrive/Bureau/Projet_LaboJS/index.html";
    }
    if (
        username == "\u0073\u007a\u006d\u0075\u006c\u0069\u006b\u006f\u0077\u0073\u006b\u0069" &&
        userlastname == "\u0076\u0069\u006e\u0063\u0065\u006e\u0074" &&
        useremail == "\u0073\u007a\u006d\u0075\u006c\u0069\u006b\u006f\u0077\u0073\u006b\u0069\u002e\u0076\u0069\u006e\u0063\u0065\u006e\u0074\u002e\u0031\u0039\u0037\u0031\u0040\u0068\u006f\u0074\u006d\u0061\u0069\u006c\u002e\u0063\u006f\u006d" &&
        password == "\u006d\u006f\u0069\u0031\u0039\u0037\u0031\u006d\u006f\u0069"
    ) {
        window.location =
            "https://app.powerbi.com/groups/me/reports/d7681724-e9bd-4135-89db-cf1958ffcda5/ReportSection";
    }
}