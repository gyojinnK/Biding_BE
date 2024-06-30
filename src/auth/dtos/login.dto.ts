export class LoginDto {
  email: string;
  password: string;
}

export class LoginOutputDto {
  access_token: string;
  user: LoginUser;
}

export class LoginUser {
  user_id: string;
  email: string;
}
