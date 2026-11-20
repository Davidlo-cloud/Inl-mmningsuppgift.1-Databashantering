INSERT INTO Suppliers(
    SupplierId,
    Name,
    Adress,
    Contact,
    Phone,
    Email
)VALUES(
    1,
    'Ica',
    'Storgatan 15',
    'Anders Andersson',
    '070-1111111',
    'anders@mail.com'
);

INSERT INTO Ingredients(
    IngredientId,
    Name
)VALUES(
    1,
    'Mjöl'
);

INSERT INTO SupplierIngredient(
    SupplierIngredientId,
    SupplierId,
    IngredientId,
    ArticleNumber,
    PricePerKg
)VALUES(
    1,
    1,
    1,
    'AB-100',
    19.00
);

INSERT INTO Purchases(
    PurchaseId,
    SupplierId,
    PurchaseDate
)VALUES(
    1,
    1,
    '2026-11-20'
);

INSERT INTO PurchaseLines(
    PurchaseLineId,
    PurchaseId,
    SupplierIngredientId,
    QuantityKg,
    UnitPricePerKg
)VALUES(
    1,
    1,
    1,
    12,
    9.0
);

INSERT INTO StockWithdrawals(
    StockWithdrawalId,
    IngredientId,
    QuantityKg,
    WithdrawalDate
)VALUES(
    1,
    1,
    3,
    '2026-11-20'
);