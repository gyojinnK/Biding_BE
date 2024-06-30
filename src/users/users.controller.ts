import { Body, Controller, Get, Param, Post } from '@nestjs/common';
import { UsersService } from './users.service';
import { CreateUserInputDto } from './dtos/user.dto';
import { ApiTags } from '@nestjs/swagger';

@ApiTags('User')
@Controller('users')
export class UsersController {
  constructor(private readonly usersService: UsersService) {}

  @Post('create')
  async create(@Body() data: CreateUserInputDto) {
    return this.usersService.create(data);
  }

  @Get(':id')
  async getById(@Param('id') id: string) {
    return this.usersService.getById(id);
  }

  @Get(':email')
  async getByEmail(@Param('email') email: string) {
    return this.usersService.getByEmail(email);
  }
}
