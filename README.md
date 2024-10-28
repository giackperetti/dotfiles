# .dotfiles
This repo houses the configuration files for most of the software i use on my `Thinkpad x250` running `Arch Linux` with `i3wm`.

### Usage
- <details close>
    <summary>Linux</summary>
    - You can install these dots on your Linux machine using the `bootsrap-linux` script available in this repo.
      Firstly clone the repo to your local machine:
      ```bash
      git clone https://github.com/giackperetti/dotfiles.git dotfiles/
      ```
    - Then, open the directoriy the repo has been cloned in:
      ```bash
      cd dotfiles
      ```
    - Then make sure the bootstrap script has executions permissions and run it:
      ```bash
      chmod +x bootstrap-arch.sh
      ```

    - Run the `bootstrap` script which will install all the required packages(if missing) using your system's native package manager and will create symlinks in the correct directories using `stow`
      ```bash
      ./bootstrap-arch.sh
      ```
  </details>


- <details close>
    <summary>Mac</summary>
    - You can install these dots on your Mac using the `bootsrap-mac` script available in this repo.
      Firstly clone the repo to your local machine:
      ```bash
      git clone https://github.com/giackperetti/dotfiles.git dotfiles/
      ```
    - Then, open the directoriy the repo has been cloned in:
      ```bash
      cd dotfiles
      ```
    - Then make sure the bootstrap script has executions permissions and run it:
      ```bash
      chmod +x bootstrap-mac.sh
      ```

    - Run the `bootstrap` script which will install all the required packages(if missing) using `brew` and will create symlinks in the correct directories using `stow`
      ```bash
      ./bootstrap-mac.sh
      ```
  </details>
