function air {
  (command airlab ssh -- -t "source ~/.profile; source ~/.bash_profile; cd repos/${PWD##*/}; ${@:1}")
}
