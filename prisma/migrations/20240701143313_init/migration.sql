/*
  Warnings:

  - You are about to drop the column `background_image` on the `User_image` table. All the data in the column will be lost.
  - You are about to drop the column `profile_image` on the `User_image` table. All the data in the column will be lost.

*/
-- AlterTable
ALTER TABLE "User_image" DROP COLUMN "background_image",
DROP COLUMN "profile_image",
ADD COLUMN     "backgroundImage" TEXT,
ADD COLUMN     "profileImage" TEXT;
