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

INSERT INTO Ingredients(
    IngredientId,
    Name
)VALUES(
    1,
    'Mjöl'
);