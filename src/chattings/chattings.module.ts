import { Module } from '@nestjs/common';
import { ChattingsService } from './chattings.service';

@Module({
  providers: [ChattingsService]
})
export class ChattingsModule {}
