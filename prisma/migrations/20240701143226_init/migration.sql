/*
  Warnings:

  - The primary key for the `Bid` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - You are about to drop the column `bid_id` on the `Bid` table. All the data in the column will be lost.
  - You are about to drop the column `created_at` on the `Bid` table. All the data in the column will be lost.
  - You are about to drop the column `product_id` on the `Bid` table. All the data in the column will be lost.
  - You are about to drop the column `updated_at` on the `Bid` table. All the data in the column will be lost.
  - You are about to drop the column `user_id` on the `Bid` table. All the data in the column will be lost.
  - The primary key for the `Category` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - You are about to drop the column `category_id` on the `Category` table. All the data in the column will be lost.
  - You are about to drop the column `created_at` on the `Category` table. All the data in the column will be lost.
  - You are about to drop the column `updated_at` on the `Category` table. All the data in the column will be lost.
  - The primary key for the `Chat_message` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - You are about to drop the column `chat_id` on the `Chat_message` table. All the data in the column will be lost.
  - You are about to drop the column `created_at` on the `Chat_message` table. All the data in the column will be lost.
  - You are about to drop the column `message_id` on the `Chat_message` table. All the data in the column will be lost.
  - You are about to drop the column `updated_at` on the `Chat_message` table. All the data in the column will be lost.
  - You are about to drop the column `user_id` on the `Chat_message` table. All the data in the column will be lost.
  - The primary key for the `Chat_room` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - You are about to drop the column `buyer_id` on the `Chat_room` table. All the data in the column will be lost.
  - You are about to drop the column `chat_id` on the `Chat_room` table. All the data in the column will be lost.
  - You are about to drop the column `created_at` on the `Chat_room` table. All the data in the column will be lost.
  - You are about to drop the column `product_id` on the `Chat_room` table. All the data in the column will be lost.
  - You are about to drop the column `seller_id` on the `Chat_room` table. All the data in the column will be lost.
  - You are about to drop the column `updated_at` on the `Chat_room` table. All the data in the column will be lost.
  - The primary key for the `Product` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - You are about to drop the column `category_id` on the `Product` table. All the data in the column will be lost.
  - You are about to drop the column `created_at` on the `Product` table. All the data in the column will be lost.
  - You are about to drop the column `hammer_price` on the `Product` table. All the data in the column will be lost.
  - You are about to drop the column `product_id` on the `Product` table. All the data in the column will be lost.
  - You are about to drop the column `registration_date` on the `Product` table. All the data in the column will be lost.
  - You are about to drop the column `reserve_price` on the `Product` table. All the data in the column will be lost.
  - You are about to drop the column `seller_id` on the `Product` table. All the data in the column will be lost.
  - You are about to drop the column `start_price` on the `Product` table. All the data in the column will be lost.
  - You are about to drop the column `updated_at` on the `Product` table. All the data in the column will be lost.
  - The primary key for the `Product_image` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - You are about to drop the column `created_at` on the `Product_image` table. All the data in the column will be lost.
  - You are about to drop the column `image_id` on the `Product_image` table. All the data in the column will be lost.
  - You are about to drop the column `product_id` on the `Product_image` table. All the data in the column will be lost.
  - You are about to drop the column `updated_at` on the `Product_image` table. All the data in the column will be lost.
  - You are about to drop the column `created_at` on the `Product_liked` table. All the data in the column will be lost.
  - You are about to drop the column `product_id` on the `Product_liked` table. All the data in the column will be lost.
  - You are about to drop the column `updated_at` on the `Product_liked` table. All the data in the column will be lost.
  - You are about to drop the column `user_id` on the `Product_liked` table. All the data in the column will be lost.
  - The primary key for the `Review` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - You are about to drop the column `created_at` on the `Review` table. All the data in the column will be lost.
  - You are about to drop the column `review_id` on the `Review` table. All the data in the column will be lost.
  - You are about to drop the column `updated_at` on the `Review` table. All the data in the column will be lost.
  - The primary key for the `User` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - You are about to drop the column `address_detail` on the `User` table. All the data in the column will be lost.
  - You are about to drop the column `created_at` on the `User` table. All the data in the column will be lost.
  - You are about to drop the column `phone_number` on the `User` table. All the data in the column will be lost.
  - You are about to drop the column `updated_at` on the `User` table. All the data in the column will be lost.
  - You are about to drop the column `user_id` on the `User` table. All the data in the column will be lost.
  - The primary key for the `User_image` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - You are about to drop the column `created_at` on the `User_image` table. All the data in the column will be lost.
  - You are about to drop the column `image_id` on the `User_image` table. All the data in the column will be lost.
  - You are about to drop the column `updated_at` on the `User_image` table. All the data in the column will be lost.
  - You are about to drop the column `user_id` on the `User_image` table. All the data in the column will be lost.
  - A unique constraint covering the columns `[phoneNumber]` on the table `User` will be added. If there are existing duplicate values, this will fail.
  - The required column `id` was added to the `Bid` table with a prisma-level default value. This is not possible if the table is not empty. Please add this column as optional, then populate it before making it required.
  - Added the required column `productId` to the `Bid` table without a default value. This is not possible if the table is not empty.
  - Added the required column `updatedAt` to the `Bid` table without a default value. This is not possible if the table is not empty.
  - Added the required column `userId` to the `Bid` table without a default value. This is not possible if the table is not empty.
  - The required column `id` was added to the `Category` table with a prisma-level default value. This is not possible if the table is not empty. Please add this column as optional, then populate it before making it required.
  - Added the required column `updatedAt` to the `Category` table without a default value. This is not possible if the table is not empty.
  - Added the required column `chatId` to the `Chat_message` table without a default value. This is not possible if the table is not empty.
  - The required column `id` was added to the `Chat_message` table with a prisma-level default value. This is not possible if the table is not empty. Please add this column as optional, then populate it before making it required.
  - Added the required column `updatedAt` to the `Chat_message` table without a default value. This is not possible if the table is not empty.
  - Added the required column `userId` to the `Chat_message` table without a default value. This is not possible if the table is not empty.
  - Added the required column `buyerId` to the `Chat_room` table without a default value. This is not possible if the table is not empty.
  - The required column `id` was added to the `Chat_room` table with a prisma-level default value. This is not possible if the table is not empty. Please add this column as optional, then populate it before making it required.
  - Added the required column `productId` to the `Chat_room` table without a default value. This is not possible if the table is not empty.
  - Added the required column `sellerId` to the `Chat_room` table without a default value. This is not possible if the table is not empty.
  - Added the required column `updatedAt` to the `Chat_room` table without a default value. This is not possible if the table is not empty.
  - Added the required column `categoryId` to the `Product` table without a default value. This is not possible if the table is not empty.
  - The required column `id` was added to the `Product` table with a prisma-level default value. This is not possible if the table is not empty. Please add this column as optional, then populate it before making it required.
  - Added the required column `sellerId` to the `Product` table without a default value. This is not possible if the table is not empty.
  - Added the required column `startPrice` to the `Product` table without a default value. This is not possible if the table is not empty.
  - Added the required column `updatedAt` to the `Product` table without a default value. This is not possible if the table is not empty.
  - The required column `id` was added to the `Product_image` table with a prisma-level default value. This is not possible if the table is not empty. Please add this column as optional, then populate it before making it required.
  - Added the required column `productId` to the `Product_image` table without a default value. This is not possible if the table is not empty.
  - Added the required column `updatedAt` to the `Product_image` table without a default value. This is not possible if the table is not empty.
  - Added the required column `productId` to the `Product_liked` table without a default value. This is not possible if the table is not empty.
  - Added the required column `updatedAt` to the `Product_liked` table without a default value. This is not possible if the table is not empty.
  - Added the required column `userId` to the `Product_liked` table without a default value. This is not possible if the table is not empty.
  - The required column `id` was added to the `Review` table with a prisma-level default value. This is not possible if the table is not empty. Please add this column as optional, then populate it before making it required.
  - Added the required column `updatedAt` to the `Review` table without a default value. This is not possible if the table is not empty.
  - Added the required column `addressDetail` to the `User` table without a default value. This is not possible if the table is not empty.
  - The required column `id` was added to the `User` table with a prisma-level default value. This is not possible if the table is not empty. Please add this column as optional, then populate it before making it required.
  - Added the required column `phoneNumber` to the `User` table without a default value. This is not possible if the table is not empty.
  - Added the required column `updatedAt` to the `User` table without a default value. This is not possible if the table is not empty.
  - The required column `id` was added to the `User_image` table with a prisma-level default value. This is not possible if the table is not empty. Please add this column as optional, then populate it before making it required.
  - Added the required column `updatedAt` to the `User_image` table without a default value. This is not possible if the table is not empty.
  - Added the required column `userId` to the `User_image` table without a default value. This is not possible if the table is not empty.

*/
-- DropForeignKey
ALTER TABLE "Bid" DROP CONSTRAINT "Bid_product_id_fkey";

-- DropForeignKey
ALTER TABLE "Bid" DROP CONSTRAINT "Bid_user_id_fkey";

-- DropForeignKey
ALTER TABLE "Category" DROP CONSTRAINT "Category_parent_id_fkey";

-- DropForeignKey
ALTER TABLE "Chat_message" DROP CONSTRAINT "Chat_message_chat_id_fkey";

-- DropForeignKey
ALTER TABLE "Chat_message" DROP CONSTRAINT "Chat_message_user_id_fkey";

-- DropForeignKey
ALTER TABLE "Chat_room" DROP CONSTRAINT "Chat_room_buyer_id_fkey";

-- DropForeignKey
ALTER TABLE "Chat_room" DROP CONSTRAINT "Chat_room_product_id_fkey";

-- DropForeignKey
ALTER TABLE "Chat_room" DROP CONSTRAINT "Chat_room_seller_id_fkey";

-- DropForeignKey
ALTER TABLE "Product" DROP CONSTRAINT "Product_category_id_fkey";

-- DropForeignKey
ALTER TABLE "Product" DROP CONSTRAINT "Product_seller_id_fkey";

-- DropForeignKey
ALTER TABLE "Product_image" DROP CONSTRAINT "Product_image_product_id_fkey";

-- DropForeignKey
ALTER TABLE "Product_liked" DROP CONSTRAINT "Product_liked_product_id_fkey";

-- DropForeignKey
ALTER TABLE "Product_liked" DROP CONSTRAINT "Product_liked_user_id_fkey";

-- DropForeignKey
ALTER TABLE "Review" DROP CONSTRAINT "Review_buyerId_fkey";

-- DropForeignKey
ALTER TABLE "Review" DROP CONSTRAINT "Review_sellerId_fkey";

-- DropForeignKey
ALTER TABLE "User_image" DROP CONSTRAINT "User_image_user_id_fkey";

-- DropIndex
DROP INDEX "User_phone_number_key";

-- AlterTable
ALTER TABLE "Bid" DROP CONSTRAINT "Bid_pkey",
DROP COLUMN "bid_id",
DROP COLUMN "created_at",
DROP COLUMN "product_id",
DROP COLUMN "updated_at",
DROP COLUMN "user_id",
ADD COLUMN     "createdAt" TIMESTAMPTZ NOT NULL DEFAULT CURRENT_TIMESTAMP,
ADD COLUMN     "id" TEXT NOT NULL,
ADD COLUMN     "productId" TEXT NOT NULL,
ADD COLUMN     "updatedAt" TIMESTAMPTZ NOT NULL,
ADD COLUMN     "userId" TEXT NOT NULL,
ADD CONSTRAINT "Bid_pkey" PRIMARY KEY ("id");

-- AlterTable
ALTER TABLE "Category" DROP CONSTRAINT "Category_pkey",
DROP COLUMN "category_id",
DROP COLUMN "created_at",
DROP COLUMN "updated_at",
ADD COLUMN     "createdAt" TIMESTAMPTZ NOT NULL DEFAULT CURRENT_TIMESTAMP,
ADD COLUMN     "id" TEXT NOT NULL,
ADD COLUMN     "updatedAt" TIMESTAMPTZ NOT NULL,
ADD CONSTRAINT "Category_pkey" PRIMARY KEY ("id");

-- AlterTable
ALTER TABLE "Chat_message" DROP CONSTRAINT "Chat_message_pkey",
DROP COLUMN "chat_id",
DROP COLUMN "created_at",
DROP COLUMN "message_id",
DROP COLUMN "updated_at",
DROP COLUMN "user_id",
ADD COLUMN     "chatId" TEXT NOT NULL,
ADD COLUMN     "createdAt" TIMESTAMPTZ NOT NULL DEFAULT CURRENT_TIMESTAMP,
ADD COLUMN     "id" TEXT NOT NULL,
ADD COLUMN     "updatedAt" TIMESTAMPTZ NOT NULL,
ADD COLUMN     "userId" TEXT NOT NULL,
ADD CONSTRAINT "Chat_message_pkey" PRIMARY KEY ("id");

-- AlterTable
ALTER TABLE "Chat_room" DROP CONSTRAINT "Chat_room_pkey",
DROP COLUMN "buyer_id",
DROP COLUMN "chat_id",
DROP COLUMN "created_at",
DROP COLUMN "product_id",
DROP COLUMN "seller_id",
DROP COLUMN "updated_at",
ADD COLUMN     "buyerId" TEXT NOT NULL,
ADD COLUMN     "createdAt" TIMESTAMPTZ NOT NULL DEFAULT CURRENT_TIMESTAMP,
ADD COLUMN     "id" TEXT NOT NULL,
ADD COLUMN     "productId" TEXT NOT NULL,
ADD COLUMN     "sellerId" TEXT NOT NULL,
ADD COLUMN     "updatedAt" TIMESTAMPTZ NOT NULL,
ADD CONSTRAINT "Chat_room_pkey" PRIMARY KEY ("id");

-- AlterTable
ALTER TABLE "Product" DROP CONSTRAINT "Product_pkey",
DROP COLUMN "category_id",
DROP COLUMN "created_at",
DROP COLUMN "hammer_price",
DROP COLUMN "product_id",
DROP COLUMN "registration_date",
DROP COLUMN "reserve_price",
DROP COLUMN "seller_id",
DROP COLUMN "start_price",
DROP COLUMN "updated_at",
ADD COLUMN     "categoryId" TEXT NOT NULL,
ADD COLUMN     "createdAt" TIMESTAMPTZ NOT NULL DEFAULT CURRENT_TIMESTAMP,
ADD COLUMN     "hammerPrice" INTEGER,
ADD COLUMN     "id" TEXT NOT NULL,
ADD COLUMN     "registrationDate" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
ADD COLUMN     "reservePrice" INTEGER,
ADD COLUMN     "sellerId" TEXT NOT NULL,
ADD COLUMN     "startPrice" INTEGER NOT NULL,
ADD COLUMN     "updatedAt" TIMESTAMPTZ NOT NULL,
ADD CONSTRAINT "Product_pkey" PRIMARY KEY ("id");

-- AlterTable
ALTER TABLE "Product_image" DROP CONSTRAINT "Product_image_pkey",
DROP COLUMN "created_at",
DROP COLUMN "image_id",
DROP COLUMN "product_id",
DROP COLUMN "updated_at",
ADD COLUMN     "createdAt" TIMESTAMPTZ NOT NULL DEFAULT CURRENT_TIMESTAMP,
ADD COLUMN     "id" TEXT NOT NULL,
ADD COLUMN     "productId" TEXT NOT NULL,
ADD COLUMN     "updatedAt" TIMESTAMPTZ NOT NULL,
ADD CONSTRAINT "Product_image_pkey" PRIMARY KEY ("id");

-- AlterTable
ALTER TABLE "Product_liked" DROP COLUMN "created_at",
DROP COLUMN "product_id",
DROP COLUMN "updated_at",
DROP COLUMN "user_id",
ADD COLUMN     "createdAt" TIMESTAMPTZ NOT NULL DEFAULT CURRENT_TIMESTAMP,
ADD COLUMN     "productId" TEXT NOT NULL,
ADD COLUMN     "updatedAt" TIMESTAMPTZ NOT NULL,
ADD COLUMN     "userId" TEXT NOT NULL;

-- AlterTable
ALTER TABLE "Review" DROP CONSTRAINT "Review_pkey",
DROP COLUMN "created_at",
DROP COLUMN "review_id",
DROP COLUMN "updated_at",
ADD COLUMN     "createdAt" TIMESTAMPTZ NOT NULL DEFAULT CURRENT_TIMESTAMP,
ADD COLUMN     "id" TEXT NOT NULL,
ADD COLUMN     "updatedAt" TIMESTAMPTZ NOT NULL,
ADD CONSTRAINT "Review_pkey" PRIMARY KEY ("id");

-- AlterTable
ALTER TABLE "User" DROP CONSTRAINT "User_pkey",
DROP COLUMN "address_detail",
DROP COLUMN "created_at",
DROP COLUMN "phone_number",
DROP COLUMN "updated_at",
DROP COLUMN "user_id",
ADD COLUMN     "addressDetail" TEXT NOT NULL,
ADD COLUMN     "createdAt" TIMESTAMPTZ NOT NULL DEFAULT CURRENT_TIMESTAMP,
ADD COLUMN     "id" TEXT NOT NULL,
ADD COLUMN     "phoneNumber" TEXT NOT NULL,
ADD COLUMN     "updatedAt" TIMESTAMPTZ NOT NULL,
ADD CONSTRAINT "User_pkey" PRIMARY KEY ("id");

-- AlterTable
ALTER TABLE "User_image" DROP CONSTRAINT "User_image_pkey",
DROP COLUMN "created_at",
DROP COLUMN "image_id",
DROP COLUMN "updated_at",
DROP COLUMN "user_id",
ADD COLUMN     "createdAt" TIMESTAMPTZ NOT NULL DEFAULT CURRENT_TIMESTAMP,
ADD COLUMN     "id" TEXT NOT NULL,
ADD COLUMN     "updatedAt" TIMESTAMPTZ NOT NULL,
ADD COLUMN     "userId" TEXT NOT NULL,
ADD CONSTRAINT "User_image_pkey" PRIMARY KEY ("id");

-- CreateIndex
CREATE UNIQUE INDEX "User_phoneNumber_key" ON "User"("phoneNumber");

-- AddForeignKey
ALTER TABLE "User_image" ADD CONSTRAINT "User_image_userId_fkey" FOREIGN KEY ("userId") REFERENCES "User"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Category" ADD CONSTRAINT "Category_parent_id_fkey" FOREIGN KEY ("parent_id") REFERENCES "Category"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Product" ADD CONSTRAINT "Product_sellerId_fkey" FOREIGN KEY ("sellerId") REFERENCES "User"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Product" ADD CONSTRAINT "Product_categoryId_fkey" FOREIGN KEY ("categoryId") REFERENCES "Category"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Product_image" ADD CONSTRAINT "Product_image_productId_fkey" FOREIGN KEY ("productId") REFERENCES "Product"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Product_liked" ADD CONSTRAINT "Product_liked_productId_fkey" FOREIGN KEY ("productId") REFERENCES "Product"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Product_liked" ADD CONSTRAINT "Product_liked_userId_fkey" FOREIGN KEY ("userId") REFERENCES "User"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Review" ADD CONSTRAINT "Review_buyerId_fkey" FOREIGN KEY ("buyerId") REFERENCES "User"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Review" ADD CONSTRAINT "Review_sellerId_fkey" FOREIGN KEY ("sellerId") REFERENCES "User"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Bid" ADD CONSTRAINT "Bid_userId_fkey" FOREIGN KEY ("userId") REFERENCES "User"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Bid" ADD CONSTRAINT "Bid_productId_fkey" FOREIGN KEY ("productId") REFERENCES "Product"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Chat_room" ADD CONSTRAINT "Chat_room_buyerId_fkey" FOREIGN KEY ("buyerId") REFERENCES "User"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Chat_room" ADD CONSTRAINT "Chat_room_productId_fkey" FOREIGN KEY ("productId") REFERENCES "Product"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Chat_room" ADD CONSTRAINT "Chat_room_sellerId_fkey" FOREIGN KEY ("sellerId") REFERENCES "User"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Chat_message" ADD CONSTRAINT "Chat_message_userId_fkey" FOREIGN KEY ("userId") REFERENCES "User"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Chat_message" ADD CONSTRAINT "Chat_message_chatId_fkey" FOREIGN KEY ("chatId") REFERENCES "Chat_room"("id") ON DELETE CASCADE ON UPDATE CASCADE;
