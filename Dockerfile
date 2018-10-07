FROM alpine

RUN apk add --no-cache \
  busybox-extras \
  git \
  openssh-client \
  py-pip \
  py-bcrypt \
  py-cffi \
  py-cryptography \
  py-openssl \
  py-psutil \
  py-pynacl

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
