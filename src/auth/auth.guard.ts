import { CanActivate, ExecutionContext, Injectable } from '@nestjs/common';
import { ConfigService } from '@nestjs/config';
import { JwtService } from '@nestjs/jwt';
import { Request } from 'express';

@Injectable()
export class AuthGuard implements CanActivate {
  constructor(
    private readonly jwtService: JwtService,
    private readonly configService: ConfigService,
  ) {}

  canActivate(context: ExecutionContext): boolean | Promise<boolean> {
    const request = context.switchToHttp().getRequest();
    const token = this.extractToken(request);

    if (!token) {
      return false;
    }

    try {
      const decoded = this.jwtService.verify(token, {
        secret: this.configService.get('SECRET_KEY'),
      });

      request.user = decoded;
      return true;
    } catch (error) {
      return false;
    }
  }

  private extractToken(request: Request): string | null {
    if (
      request.headers.authorization &&
      request.headers.authorization.startsWith('Bearer')
    ) {
      const token = request.headers.authorization.split(' ') ?? [];
      return token[1] ?? null;
    }
    return null;
  }
}
