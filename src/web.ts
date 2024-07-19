import { WebPlugin } from '@capacitor/core';

import type { ExitAppPlugin } from './definitions';

export class ExitAppWeb extends WebPlugin implements ExitAppPlugin {
  async echo(options: { value: string }): Promise<{ value: string }> {
    console.log('ECHO', options);
    return options;
  }
}
