import { ExitApp } from 'exit-app';

window.testEcho = () => {
    const inputValue = document.getElementById("echoInput").value;
    ExitApp.echo({ value: inputValue })
}
