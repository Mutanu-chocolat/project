-- RedefineTables
PRAGMA defer_foreign_keys=ON;
PRAGMA foreign_keys=OFF;
CREATE TABLE "new_Candidet" (
    "id" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    "name" TEXT NOT NULL,
    "post" TEXT NOT NULL,
    "votes" TEXT,
    "campus" TEXT NOT NULL
);
INSERT INTO "new_Candidet" ("campus", "id", "name", "post", "votes") SELECT "campus", "id", "name", "post", "votes" FROM "Candidet";
DROP TABLE "Candidet";
ALTER TABLE "new_Candidet" RENAME TO "Candidet";
PRAGMA foreign_keys=ON;
PRAGMA defer_foreign_keys=OFF;
