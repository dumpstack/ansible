FROM alpine

RUN apk add --no-cache \
  busybox-extras \
  git \
  openssh-client \
  py-pip \
  py-pynacl \
  py-cffi \
  py-bcrypt \
  py-cryptography \
  py-openssl \
  py-psutil

RUN pip install --upgrade pip

RUN pip install \
  ansible \
  ansible-lint \
  ansible-modules-hashivault \
  awscli \
  boto \
  dopy \
  hvac \
  molecule \
  yamllint
