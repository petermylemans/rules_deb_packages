"""This module defines Ubuntu Bionic dependencies."""

load("@rules_deb_packages//:deb_packages.bzl", "deb_packages")

def ubuntu_bionic_amd64():
    deb_packages(
        name = "ubuntu_bionic_amd64_macro",
        arch = "amd64",
        packages = {
            "base-files": "pool/main/b/base-files/base-files_10.1ubuntu2.10_amd64.deb",
            "busybox": "pool/universe/b/busybox/busybox_1.27.2-2ubuntu3.3_amd64.deb",
            "ca-certificates": "pool/main/c/ca-certificates/ca-certificates_20210119~18.04.1_all.deb",
            "libc6": "pool/main/g/glibc/libc6_2.27-3ubuntu1.4_amd64.deb",
            "libssl1.1": "pool/main/o/openssl/libssl1.1_1.1.1-1ubuntu2.1~18.04.8_amd64.deb",
            "netbase": "pool/main/n/netbase/netbase_5.4_all.deb",
            "openssl": "pool/main/o/openssl/openssl_1.1.1-1ubuntu2.1~18.04.8_amd64.deb",
            "tzdata": "pool/main/t/tzdata/tzdata_2021a-0ubuntu0.18.04_all.deb",
        },
        packages_sha256 = {
            "base-files": "9abf6982e61cabc44011247b8a39af39bf47cdb96cd12d898bf47b3ebe92a80e",
            "busybox": "a1b5ea4a7eb95fe3cadca78406af57c9bdb3b024d5060400fdff5344179ab1b0",
            "ca-certificates": "0eef06ee5c975fdf029b7b26d12701441cfd22c556927772b236f2bc5b39cc2e",
            "libc6": "46d39b8965f35457ce5db62662832c095fd7e01e72093da99ae025eb8e12bbe5",
            "libssl1.1": "a516bc4ccd2b1f09d1e4ce7ea11c3b4986cfe3bc07b448eac6090f59c1ed0129",
            "netbase": "cbda1c8035cd1fe0b1fb09b456892c0bb868657bfe02da82f0b16207d391145e",
            "openssl": "a45d82b1e535707ed31af599e12111449becd6c9714cd8b50a82044508da0f3a",
            "tzdata": "7a28ea35faffb239a92f8f4ee204d64d5bec2ad308b04118d046334f44152e02",
        },
        sources = [
            "http://us.archive.ubuntu.com/ubuntu bionic main",
            "http://us.archive.ubuntu.com/ubuntu bionic-updates main",
            "http://us.archive.ubuntu.com/ubuntu bionic-backports main",
            "http://security.ubuntu.com/ubuntu bionic-security main universe",
        ],
        urls = [
            "http://us.archive.ubuntu.com/ubuntu/$(package_path)",
            "http://security.ubuntu.com/ubuntu/$(package_path)",
            "https://launchpad.net/ubuntu/+archive/primary/+files/$(package_file)",  # Needed in case of superseded archive no more available on the mirrors
        ],
    )
