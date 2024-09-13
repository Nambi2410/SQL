/**
 * Defines the schema for the `sales_data` table, which stores information about sales transactions.
 *
 * The table has the following columns:
 * - `S_No`: A unique serial number for each row, used as the primary key.
 * - `InvoiceNo`: The invoice number associated with the sale.
 * - `Date`: The date of the sale.
 * - `Country`: The country where the sale took place.
 * - `ProductID`: The ID of the product sold.
 * - `Shop`: The shop where the sale took place.
 * - `Gender`: The gender of the customer.
 * - `Size_US`: The size of the product in US sizing.
 * - `UnitPrice`: The price of the product per unit.
 * - `Discount`: The discount applied to the sale.
 * - `SalePrice`: The final sale price after the discount.
 */
CREATE TABLE sales_data (
    S_No SERIAL PRIMARY KEY,
    InvoiceNo INT,
    ExcelDate NUMERIC, -- Store Excel serial date here
    Country VARCHAR(255),
    ProductID INT,
    Shop VARCHAR(10),
    Gender VARCHAR(10),
    Size_US DECIMAL(5, 2),
    UnitPrice DECIMAL(10, 2),
    Discount DECIMAL(10, 2),
    SalePrice DECIMAL(10, 2)
);







