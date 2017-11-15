EXT_IP=$(ip r get 1 | awk '{print $5}' | head -n 1)

function isLANIP() {
    : ${1:?"Missing param: IP"};
    local ip
    local pip=${1}
    OIFS=$IFS;IFS='.';ip=(${pip});IFS=$OIFS
    [[ ${ip[0]} -eq 172 && ${ip[1]} -ge 16 && ${ip[1]} -le 31 ]] && return 0;
    [[ ${ip[0]} -eq 192 && ${ip[1]} -eq 168 ]] && return 0;
    [[ ${ip[0]} -eq 100 && ${ip[1]} -ge 64 && ${ip[1]} -le 127 ]] && return 0;
    [[ ${ip[0]} -eq 10 ]] && return 0;
    return 1
}

function validateExtIP(){
        isLANIP $EXT_IP || return 0 && echo "Error: External IP is required!"; exit 1;
}

function validateDNSSettings(){
    domain_list=$(echo $domain | sed "s/,/ /g")
        for single_domain in $domain_list
        do
            dig +short  @8.8.8.8 A $single_domain | grep -q $EXT_IP  || { echo "Error: Incorrect DNS Settings!"; exit 1; };
        done
    return 0
}
