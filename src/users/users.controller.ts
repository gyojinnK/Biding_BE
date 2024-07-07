import { Body, Controller, Get, Param, Post, UseGuards } from '@nestjs/common';
import { UsersService } from './users.service';
import { CreateUserInputDto, GetUserOutputDto } from './dtos/user.dto';
import { ApiBearerAuth, ApiTags } from '@nestjs/swagger';
import { AuthGuard } from 'src/auth/auth.guard';
import { AuthUser } from 'src/auth/decorators/auth-user.decorator';

@ApiTags('User')
@Controller('users')
export class UsersController {
  constructor(private readonly usersService: UsersService) {}

  @Post('create')
  async create(@Body() data: CreateUserInputDto) {
    return this.usersService.create(data);
  }

  @Get('me')
  @UseGuards(AuthGuard)
  @ApiBearerAuth('access-token')
  async getById(@AuthUser() user: GetUserOutputDto): Promise<GetUserOutputDto> {
    return this.usersService.getById(user.id);
  }

  @Get(':email')
  async getByEmail(@Param('email') email: string) {
    return this.usersService.getByEmail(email);
  }
}
