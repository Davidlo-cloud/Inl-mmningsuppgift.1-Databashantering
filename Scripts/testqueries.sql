SELECT
    SupplierIngredient.*,
    Suppliers.Name AS SupplierName
FROM SupplierIngredient INNER JOIN Suppliers
    ON SupplierIngredient.SupplierId = Suppliers.SupplierId;