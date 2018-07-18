FROM alpine

RUN apk add --no-cache \
  py-pip \
  py-pynacl \
  py-cffi \
  py-bcrypt \
  py-cryptography \
  py-openssl

RUN pip install --upgrade pip

RUN pip install \
  ansible \
  ansible-lint \
  ansible-modules-hashivault \
  awscli \
  boto \
  dopy \
  hvac
