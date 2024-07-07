export class LoginDto {
  email: string;
  password: string;
}

export class LoginOutputDto {
  accessToken: string;
  user: LoginUser;
}

export class LoginUser {
  id: string;
  email: string;
}
