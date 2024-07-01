/*
  Warnings:

  - Added the required column `addressDetail` to the `User` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE "User" ADD COLUMN     "addressDetail" TEXT NOT NULL,
ADD COLUMN     "biography" TEXT;
