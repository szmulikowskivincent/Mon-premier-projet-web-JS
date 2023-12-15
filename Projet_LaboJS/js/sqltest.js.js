const { Connection, Request } = require("tedious");

// Create ma connexion database;
const config = {
    authentication: {
        options: {
            userName: "LAPTOP-JCJ1V1FDszmul",
            password: "",
        },
        type: "default",
    },
    server: "LAPTOP-JCJ1V1FDSQL2019DEV",
    options: {
        database: "App_Vente_en_ligne",
    },
};

const connection = new Connection(config);

connection.on("connect", (err) => {
    if (err) {
        console.error(err.message);
    } else {
        queryDatabase();
    }
});

connection.connect();

function queryDatabase() {
    console.log("Reading rows from the Table...");

    const request = new Request(
        `SELECT TOP 20 pc.Name as CategoryName,
                   p.name as ProductName
     FROM [SalesLT].[ProductCategory] pc
     JOIN [SalesLT].[Product] p ON pc.productcategoryid = p.productcategoryid`,
        (err, rowCount) => {
            if (err) {
                console.error(err.message);
            } else {
                console.log(`${rowCount} row(s) returned`);
            }
        }
    );

    request.on("row", (columns) => {
        columns.forEach((column) => {
            console.log("%s\t%s", column.metadata.colName, column.value);
        });
    });

    connection.execSql(request);
}