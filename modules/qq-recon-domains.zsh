#!/usr/bin/env zsh

############################################################# 
# qq-recon-domains
#############################################################

qq-recon-domains-by-whois-amass() {
  qq-vars-set-domain
  print -z "amass intel -active -whois -d ${__DOMAIN}"
}

qq-recon-domains-by-asn-amass() {
  local a && read "a?$fg[cyan]ASN:$reset_color "
  print -z "amass intel -active -asn ${a}"
}

qq-recon-domains-by-asns-amass() {
  local f=$(rlwrap -S "$fg[cyan]FILE(ASNs):$reset_color " -e '' -c -o cat)
  local asn_csv=$(cat ${f} | paste -s -d, - )
  print -z "amass intel -active -asn ${asn_csv}"
}


