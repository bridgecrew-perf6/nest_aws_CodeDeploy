import { Controller, Get } from '@nestjs/common';
import { AppService } from './app.service';

@Controller()
export class AppController {
  constructor(private readonly appService: AppService) {}

  @Get()
  getHello(): string {
    return 'actions test timeout update & cd__ test!!!!  오후 4월 26일 오후 3시 18분 테스트';
  }
}
