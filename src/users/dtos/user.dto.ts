import { ApiProperty, OmitType } from '@nestjs/swagger';
import { UserEntity } from '../entities/user.entity';

export class CreateUserInputDto extends OmitType(UserEntity, [
  'id',
  'biography',
  'createdAt',
  'updatedAt',
]) {
  @ApiProperty()
  name: string;

  @ApiProperty()
  email: string;

  @ApiProperty()
  password: string;

  @ApiProperty()
  address: string;

  @ApiProperty()
  addressDetail: string;

  @ApiProperty()
  phoneNumber: string;
}

export class GetUserOutputDto extends UserEntity {}
