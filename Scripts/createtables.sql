CREATE TABLE Suppliers(
    SupplierId INTEGER PRIMARY KEY,
    Name TEXT NOT NULL,
    Adress TEXT NOT NULL,
    Contact TEXT NOT NULL,
    Phone TEXT NOT NULL,
    Email TEXT NOT NULL UNIQUE
);

CREATE TABLE Ingredients(
    IngredientId INTEGER PRIMARY KEY,
    Name TEXT NOT NULL
);

CREATE TABLE SupplierIngredient(
    SupplierIngredientId INTEGER PRIMARY KEY,
    SupplierId INTEGER NOT NULL,
    IngredientId INTEGER NOT NULL,
    ArticleNumber TEXT NOT NULL,
    PricePerKg FLOAT NOT NULL,

    CONSTRAINT fk_supplierid FOREIGN KEY(SupplierId) REFERENCES Suppliers(SupplierId),
    CONSTRAINT fk_ingredientid FOREIGN KEY(IngredientId) REFERENCES Ingredients(IngredientId)
);

CREATE TABLE Purchases(
    PurchaseId INTEGER PRIMARY KEY,
    SupplierId INTEGER NOT NULL,
    PurchaseDate TEXT NOT NULL,

    CONSTRAINT fk_purchase_supplier FOREIGN KEY(SupplierId) REFERENCES Suppliers(SupplierId)
);

CREATE TABLE PurchaseLines (
    PurchaseLineId INTEGER PRIMARY KEY,
    PurchaseId INTEGER NOT NULL,
    SupplierIngredientId INTEGER NOT NULL,
    QuantityKg FLOAT NOT NULL,
    UnitPricePerKg FLOAT NOT NULL,

    CONSTRAINT fk_purchaseline_purchase FOREIGN KEY (PurchaseId) REFERENCES Purchases(PurchaseId),
    CONSTRAINT fk_purchaseline_supplieringredient FOREIGN KEY (SupplierIngredientId) REFERENCES SupplierIngredient(SupplierIngredientId)
);

CREATE TABLE StockWithdrawals (
    StockWithdrawalId INTEGER PRIMARY KEY,
    IngredientId INTEGER NOT NULL,
    QuantityKg FLOAT NOT NULL,
    WithdrawalDate TEXT NOT NULL,

    CONSTRAINT fk_withdrawal_ingredient FOREIGN KEY (IngredientId) REFERENCES Ingredients(IngredientId)
);