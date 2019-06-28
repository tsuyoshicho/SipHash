let s:SipHash = g:V.import('Hash.SipHash')

let result =  [ 0x31, 0x0e, 0x0e, 0xdd, 0x47, 0xdb, 0x6f, 0x72 ]

let key = range(0,15)
let inputdata = [0]

call s:SipHash.setkey(key)

let outputdata = s:SipHash.digest_raw([])

echomsg 'output:' . string(outputdata)
echomsg 'result:' . string(result)


let result = [ 0xfd, 0x67, 0xdc, 0x93, 0xc5, 0x39, 0xf8, 0x74 ]

let key = range(0,15)
let inputdata = [0, 1]

call s:SipHash.setkey(key)

let outputdata = s:SipHash.digest_raw(inputdata[0: 0 + 1 -1])

echomsg 'output:' . string(outputdata)
echomsg 'result:' . string(result)
