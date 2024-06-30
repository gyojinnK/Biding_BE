import { Module } from '@nestjs/common';
import { AppController } from './app.controller';
import { AppService } from './app.service';
import { AuthModule } from './auth/auth.module';
import { UsersModule } from './users/users.module';
import { CategoriesModule } from './categories/categories.module';
import { ProductsModule } from './products/products.module';
import { ReviewsModule } from './reviews/reviews.module';
import { ChattingsController } from './chattings/chattings.controller';
import { ChattingsModule } from './chattings/chattings.module';

@Module({
  imports: [AuthModule, UsersModule, CategoriesModule, ProductsModule, ReviewsModule, ChattingsModule],
  controllers: [AppController, ChattingsController],
  providers: [AppService],
})
export class AppModule {}
