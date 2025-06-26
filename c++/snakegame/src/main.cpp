#include <ftxui/component/screen_interactive.hpp>
#include <ftxui/component/component.hpp>

int main() {
  using namespace ftxui;

  auto button = Button("Click me", [] { std::exit(0); });
  auto screen = ScreenInteractive::TerminalOutput();
  screen.Loop(button);

  return 0;
}

