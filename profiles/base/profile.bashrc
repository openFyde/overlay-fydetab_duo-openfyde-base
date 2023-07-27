fydetab_duo_openfyde_base_stack_bashrc() {
  local cfg 

  cfgd="/mnt/host/source/src/overlays/overlay-fydetab_duo-openfyde-base/${CATEGORY}/${PN}"
  for cfg in ${PN} ${P} ${PF} ; do
    cfg="${cfgd}/${cfg}.bashrc"
    [[ -f ${cfg} ]] && . "${cfg}"
  done

  export FYDETAB_DUO_OPENFYDE_BASE_BASHRC_FILEPATH="${cfgd}/files"
}

fydetab_duo_openfyde_base_stack_bashrc
