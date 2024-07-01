import { Injectable, UnauthorizedException } from '@nestjs/common';
import { JwtService } from '@nestjs/jwt';
import { UsersService } from 'src/users/users.service';
import { LoginDto, LoginOutputDto } from './dtos/login.dto';
import * as bcrypt from 'bcrypt';

@Injectable()
export class AuthService {
  constructor(
    private readonly usersService: UsersService,
    private jwtService: JwtService,
  ) {}

  async login(loginDto: LoginDto): Promise<LoginOutputDto> {
    const user = await this.usersService.getByEmail(loginDto.email);
    if (user) {
      const payload = {
        id: user.id,
        email: user.email,
      };

      const validatePassword = await bcrypt.compare(
        loginDto.password,
        user.password,
      );

      if (!validatePassword) {
        return null;
      }

      return {
        accessToken: this.jwtService.sign(payload),
        user: user,
      };
    }
    throw new UnauthorizedException('로그인 정보가 올바르지 않습니다.');
  }
}
