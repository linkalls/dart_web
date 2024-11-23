import 'dart:html';
import "dart:math";

void main() {
  final h1 = document.createElement("h1");
  h1.text = "Hello, World!";
  final body = document.querySelector("body")!;
  body.append(h1);
  final p = document.createElement("p");
  p.text = "This is a paragraph by dart!";
  body.append(p);
  final button = document.createElement("button");
  button.text = "Click me!";
  body.append(button);
  button.addEventListener("click", (Event event) {
    final p = document.createElement("p");
    p.text = "Random number is ${randomInt()}";
    body.append(p);
  });
}

int randomInt() {
  return Random().nextInt(100);
}
