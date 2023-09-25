#! /usr/bin/env bash


# we need docker , docker composer,



detect_docker(){
  if which docker >/dev/null; then
    echo "1"
  else
    echo "0"
  fi
}