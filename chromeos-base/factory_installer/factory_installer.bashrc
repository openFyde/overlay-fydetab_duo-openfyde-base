# Copyright (c) 2023 Fyde Innovations Limited and the openFyde Authors.
# Distributed under the license specified in the root directory of this project.

cros_post_src_install_fydetab_duo_openfyde_base_flash_spi() {
  exeinto /etc/
  doexe ${FYDETAB_DUO_OPENFYDE_BASE_BASHRC_FILEPATH}/*script
}

cros_pre_src_prepare_fydetab_duo_openfyde_base_patches() {
  eapply -p1 ${FYDETAB_DUO_OPENFYDE_BASE_BASHRC_FILEPATH}/factory.patch
}
