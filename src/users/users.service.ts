import { Injectable, NotFoundException } from '@nestjs/common';
import { PrismaService } from 'src/Prisma/prisma.service';
import { CreateUserInputDto, GetUserOutputDto } from './dtos/user.dto';
import * as bcrypt from 'bcrypt';

@Injectable()
export class UsersService {
  constructor(private readonly prismaService: PrismaService) {}

  async create(data: CreateUserInputDto) {
    return this.prismaService.user.create({
      data: { ...data, password: await bcrypt.hash(data.password, 10) },
    });
  }

  async getById(id: string): Promise<GetUserOutputDto> {
    const user = this.prismaService.user.findUnique({
      where: {
        id,
      },
    });

    if (!user) throw new NotFoundException('User not found.');
    return user;
  }

  async getByEmail(email: string): Promise<GetUserOutputDto> {
    const user = this.prismaService.user.findUnique({
      where: {
        email,
      },
    });
    if (!user) throw new NotFoundException('User not found.');
    return user;
  }
}
