-- CreateTable
CREATE TABLE "Student" (
    "id" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    "name" TEXT NOT NULL,
    "password" TEXT NOT NULL,
    "course" TEXT NOT NULL,
    "reg" TEXT NOT NULL,
    "campus" TEXT NOT NULL
);

-- CreateTable
CREATE TABLE "Candidet" (
    "id" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    "name" TEXT NOT NULL,
    "post" TEXT NOT NULL,
    "votes" TEXT NOT NULL,
    "campus" TEXT NOT NULL
);

-- CreateIndex
CREATE UNIQUE INDEX "Student_reg_key" ON "Student"("reg");
