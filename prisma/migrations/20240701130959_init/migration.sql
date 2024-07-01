/*
  Warnings:

  - You are about to drop the column `createdAt` on the `Bid` table. All the data in the column will be lost.
  - You are about to drop the column `updatedAt` on the `Bid` table. All the data in the column will be lost.
  - You are about to drop the column `createdAt` on the `Category` table. All the data in the column will be lost.
  - You are about to drop the column `updatedAt` on the `Category` table. All the data in the column will be lost.
  - You are about to drop the column `createdAt` on the `Chat_message` table. All the data in the column will be lost.
  - You are about to drop the column `updatedAt` on the `Chat_message` table. All the data in the column will be lost.
  - You are about to drop the column `createdAt` on the `Chat_room` table. All the data in the column will be lost.
  - You are about to drop the column `updatedAt` on the `Chat_room` table. All the data in the column will be lost.
  - You are about to drop the column `createdAt` on the `Product` table. All the data in the column will be lost.
  - You are about to drop the column `updatedAt` on the `Product` table. All the data in the column will be lost.
  - You are about to drop the column `createdAt` on the `Product_image` table. All the data in the column will be lost.
  - You are about to drop the column `updatedAt` on the `Product_image` table. All the data in the column will be lost.
  - You are about to drop the column `createdAt` on the `Product_liked` table. All the data in the column will be lost.
  - You are about to drop the column `updatedAt` on the `Product_liked` table. All the data in the column will be lost.
  - You are about to drop the column `createdAt` on the `Review` table. All the data in the column will be lost.
  - You are about to drop the column `updatedAt` on the `Review` table. All the data in the column will be lost.
  - You are about to drop the column `addressDetail` on the `User` table. All the data in the column will be lost.
  - You are about to drop the column `createdAt` on the `User` table. All the data in the column will be lost.
  - You are about to drop the column `updatedAt` on the `User` table. All the data in the column will be lost.
  - You are about to drop the column `createdAt` on the `User_image` table. All the data in the column will be lost.
  - You are about to drop the column `updatedAt` on the `User_image` table. All the data in the column will be lost.
  - Added the required column `updated_at` to the `Bid` table without a default value. This is not possible if the table is not empty.
  - Added the required column `updated_at` to the `Category` table without a default value. This is not possible if the table is not empty.
  - Added the required column `updated_at` to the `Chat_message` table without a default value. This is not possible if the table is not empty.
  - Added the required column `updated_at` to the `Chat_room` table without a default value. This is not possible if the table is not empty.
  - Added the required column `updated_at` to the `Product` table without a default value. This is not possible if the table is not empty.
  - Added the required column `updated_at` to the `Product_image` table without a default value. This is not possible if the table is not empty.
  - Added the required column `updated_at` to the `Product_liked` table without a default value. This is not possible if the table is not empty.
  - Added the required column `updated_at` to the `Review` table without a default value. This is not possible if the table is not empty.
  - Added the required column `address_detail` to the `User` table without a default value. This is not possible if the table is not empty.
  - Added the required column `updated_at` to the `User` table without a default value. This is not possible if the table is not empty.
  - Added the required column `updated_at` to the `User_image` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE "Bid" DROP COLUMN "createdAt",
DROP COLUMN "updatedAt",
ADD COLUMN     "created_at" TIMESTAMPTZ NOT NULL DEFAULT CURRENT_TIMESTAMP,
ADD COLUMN     "updated_at" TIMESTAMPTZ NOT NULL;

-- AlterTable
ALTER TABLE "Category" DROP COLUMN "createdAt",
DROP COLUMN "updatedAt",
ADD COLUMN     "created_at" TIMESTAMPTZ NOT NULL DEFAULT CURRENT_TIMESTAMP,
ADD COLUMN     "updated_at" TIMESTAMPTZ NOT NULL;

-- AlterTable
ALTER TABLE "Chat_message" DROP COLUMN "createdAt",
DROP COLUMN "updatedAt",
ADD COLUMN     "created_at" TIMESTAMPTZ NOT NULL DEFAULT CURRENT_TIMESTAMP,
ADD COLUMN     "updated_at" TIMESTAMPTZ NOT NULL;

-- AlterTable
ALTER TABLE "Chat_room" DROP COLUMN "createdAt",
DROP COLUMN "updatedAt",
ADD COLUMN     "created_at" TIMESTAMPTZ NOT NULL DEFAULT CURRENT_TIMESTAMP,
ADD COLUMN     "updated_at" TIMESTAMPTZ NOT NULL;

-- AlterTable
ALTER TABLE "Product" DROP COLUMN "createdAt",
DROP COLUMN "updatedAt",
ADD COLUMN     "created_at" TIMESTAMPTZ NOT NULL DEFAULT CURRENT_TIMESTAMP,
ADD COLUMN     "updated_at" TIMESTAMPTZ NOT NULL;

-- AlterTable
ALTER TABLE "Product_image" DROP COLUMN "createdAt",
DROP COLUMN "updatedAt",
ADD COLUMN     "created_at" TIMESTAMPTZ NOT NULL DEFAULT CURRENT_TIMESTAMP,
ADD COLUMN     "updated_at" TIMESTAMPTZ NOT NULL;

-- AlterTable
ALTER TABLE "Product_liked" DROP COLUMN "createdAt",
DROP COLUMN "updatedAt",
ADD COLUMN     "created_at" TIMESTAMPTZ NOT NULL DEFAULT CURRENT_TIMESTAMP,
ADD COLUMN     "updated_at" TIMESTAMPTZ NOT NULL;

-- AlterTable
ALTER TABLE "Review" DROP COLUMN "createdAt",
DROP COLUMN "updatedAt",
ADD COLUMN     "created_at" TIMESTAMPTZ NOT NULL DEFAULT CURRENT_TIMESTAMP,
ADD COLUMN     "updated_at" TIMESTAMPTZ NOT NULL;

-- AlterTable
ALTER TABLE "User" DROP COLUMN "addressDetail",
DROP COLUMN "createdAt",
DROP COLUMN "updatedAt",
ADD COLUMN     "address_detail" TEXT NOT NULL,
ADD COLUMN     "created_at" TIMESTAMPTZ NOT NULL DEFAULT CURRENT_TIMESTAMP,
ADD COLUMN     "updated_at" TIMESTAMPTZ NOT NULL;

-- AlterTable
ALTER TABLE "User_image" DROP COLUMN "createdAt",
DROP COLUMN "updatedAt",
ADD COLUMN     "created_at" TIMESTAMPTZ NOT NULL DEFAULT CURRENT_TIMESTAMP,
ADD COLUMN     "updated_at" TIMESTAMPTZ NOT NULL;
