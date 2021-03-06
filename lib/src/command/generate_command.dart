import 'package:slidy/slidy.dart';
import 'package:slidy/src/command/sub_command/generate_bloc.dart';

class GenerateCommand extends CommandBase {
  final name = "generate";
  final description =
      "Creates a module, page, widget or repository according to the option.";
  final abbr = "g";

  GenerateCommand() {
    addSubcommand(GenerateModuleSubCommand());
    addSubcommand(GenerateModuleAbbrSubCommand());
    addSubcommand(GeneratePageSubCommand());
    addSubcommand(GeneratePageAbbrSubCommand());
    addSubcommand(GenerateWidgetSubCommand());
    addSubcommand(GenerateWidgetAbbrSubCommand());
    addSubcommand(GenerateBlocSubCommand());
    addSubcommand(GenerateBlocAbbrSubCommand());
    addSubcommand(GenerateRepositorySubCommand());
    addSubcommand(GenerateRepositoryAbbrSubCommand());
  }
}

class GenerateCommandAbbr extends GenerateCommand {
  final name = "g";
}
