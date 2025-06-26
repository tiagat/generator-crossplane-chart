var Generator = require("yeoman-generator").default;

module.exports = class extends Generator {
  async prompting() {
    this.answers = await this.prompt([
      {
        type: "input",
        name: "name",
        message: "workspace.name",
        default: this.appname,
      },
      {
        type: "input",
        name: "provider",
        message: "providerConfigRef.name",
        default: "providerconfig-aws",
      },
    ]);
  }

  paths() {
    this.destinationRoot(this.answers.name);
  }

  writing() {
    this.fs.copyTpl(
      this.templatePath("**"),
      this.destinationPath(),
      { name: this.answers.name, provider: this.answers.provider },
      null,
      { globOptions: { dot: true } }
    );
    this.fs.move(
      this.destinationPath("gitignore"),
      this.destinationPath(".gitignore")
    );
  }
};
