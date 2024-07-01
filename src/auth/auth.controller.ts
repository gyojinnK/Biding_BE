import { Body, Controller, Post } from '@nestjs/common';
import { AuthService } from './auth.service';
import { LoginDto, LoginOutputDto } from './dtos/login.dto';
import { ApiTags } from '@nestjs/swagger';
import { AuthUser } from './decorators/auth-user.decorator';

@ApiTags('Auth')
@Controller('auth')
export class AuthController {
  constructor(private readonly authService: AuthService) {}

  @Post('login')
  async login(@Body() loginDto: LoginDto): Promise<LoginOutputDto> {
    return this.authService.login(loginDto);
  }
}
