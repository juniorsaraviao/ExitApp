export interface ExitAppPlugin {
  echo(options: { value: string }): Promise<{ value: string }>;
}
