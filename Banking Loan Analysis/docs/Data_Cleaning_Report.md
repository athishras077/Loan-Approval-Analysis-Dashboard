# Data Cleaning Report

## Cleaning Log

| Step | Action | Reason | Status |
|------|--------|--------|--------|
| 1 | Created working copy of dataset | Preserve original raw data | ✅ |
| 2 | Standardized column names | Improve consistency and readability | ✅ |
| 3 | Missing value analysis | Identify incomplete records | 🔄 In Progress |

| Step | Action                                    | Reason                                                 | Status  |
| ---- | ----------------------------------------- | ------------------------------------------------------ | ------- |
| 4    | Checked duplicate records                 | Prevent duplicate observations from affecting analysis | ✅       |
| 5    | Removed duplicate records (if applicable) | Ensure unique loan applications                        | ✅ / N/A |

| Step | Action                   | Reason                                   | Status |
| ---- | ------------------------ | ---------------------------------------- | ------ |
| 6    | Checked constant columns | Remove features with no analytical value | ✅      |

| Step | Action                                         | Reason                                                                                                         | Status |
| ---- | ---------------------------------------------- | -------------------------------------------------------------------------------------------------------------- | ------ |
| 8    | Investigated negative residential asset values | Found 28 records (0.66%) with negative values. No modification was made due to lack of business documentation. | ✅      |

| Step | Action                   | Reason                            | Status |
| ---- | ------------------------ | --------------------------------- | ------ |
| 6    | Checked constant columns | Identify non-informative features | ✅      |
| 7    | Checked invalid values   | Ensure data accuracy              | ✅      |
| 8    | Saved cleaned dataset    | Prepare dataset for analysis      | ✅      |


