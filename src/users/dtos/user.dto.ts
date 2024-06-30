import { OmitType } from '@nestjs/swagger';
import { UserEntity } from '../entities/user.entity';

export class CreateUserInputDto extends OmitType(UserEntity, [
  'user_id',
  'createdAt',
  'updatedAt',
]) {}

export class GetUserOutputDto extends UserEntity {}
