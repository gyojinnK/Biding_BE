import { Test, TestingModule } from '@nestjs/testing';
import { ChattingsController } from './chattings.controller';

describe('ChattingsController', () => {
  let controller: ChattingsController;

  beforeEach(async () => {
    const module: TestingModule = await Test.createTestingModule({
      controllers: [ChattingsController],
    }).compile();

    controller = module.get<ChattingsController>(ChattingsController);
  });

  it('should be defined', () => {
    expect(controller).toBeDefined();
  });
});
