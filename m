Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id EA4813EE00C
	for <lists+driverdev-devel@lfdr.de>; Tue, 17 Aug 2021 00:44:17 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 04073608EB;
	Mon, 16 Aug 2021 22:44:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id PEbPBMWeo4KE; Mon, 16 Aug 2021 22:44:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id ECE496076A;
	Mon, 16 Aug 2021 22:44:07 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id C016E1BF348
 for <driverdev-devel@linuxdriverproject.org>;
 Mon, 16 Aug 2021 22:43:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id ACA4E40236
 for <driverdev-devel@linuxdriverproject.org>;
 Mon, 16 Aug 2021 22:43:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ofujtqrEoLii
 for <driverdev-devel@linuxdriverproject.org>;
 Mon, 16 Aug 2021 22:43:54 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 959AC40235
 for <driverdev-devel@linuxdriverproject.org>;
 Mon, 16 Aug 2021 22:43:54 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10078"; a="215682725"
X-IronPort-AV: E=Sophos;i="5.84,327,1620716400"; 
 d="gz'50?scan'50,208,50";a="215682725"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Aug 2021 15:43:53 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,327,1620716400"; 
 d="gz'50?scan'50,208,50";a="530787746"
Received: from lkp-server01.sh.intel.com (HELO d053b881505b) ([10.239.97.150])
 by fmsmga002.fm.intel.com with ESMTP; 16 Aug 2021 15:43:52 -0700
Received: from kbuild by d053b881505b with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1mFlKh-000R26-FJ; Mon, 16 Aug 2021 22:43:51 +0000
Date: Tue, 17 Aug 2021 06:43:29 +0800
From: kernel test robot <lkp@intel.com>
To: Leon Krieg <info@madcow.dev>, gregkh@linuxfoundation.org,
 driverdev-devel@linuxdriverproject.org
Subject: Re: [PATCH] staging/ks7010: Fix coding style problems
Message-ID: <202108170620.BIKabjaV-lkp@intel.com>
References: <20210816175503.GA17772@mad-cln-mothership-1.local>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="M9NhX3UHpAaciwkO"
Content-Disposition: inline
In-Reply-To: <20210816175503.GA17772@mad-cln-mothership-1.local>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-BeenThere: driverdev-devel@linuxdriverproject.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Linux Driver Project Developer List
 <driverdev-devel.linuxdriverproject.org>
List-Unsubscribe: <http://driverdev.linuxdriverproject.org/mailman/options/driverdev-devel>, 
 <mailto:driverdev-devel-request@linuxdriverproject.org?subject=unsubscribe>
List-Archive: <http://driverdev.linuxdriverproject.org/pipermail/driverdev-devel/>
List-Post: <mailto:driverdev-devel@linuxdriverproject.org>
List-Help: <mailto:driverdev-devel-request@linuxdriverproject.org?subject=help>
List-Subscribe: <http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel>, 
 <mailto:driverdev-devel-request@linuxdriverproject.org?subject=subscribe>
Cc: kbuild-all@lists.01.org
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>


--M9NhX3UHpAaciwkO
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi Leon,

Thank you for the patch! Yet something to improve:

[auto build test ERROR on staging/staging-testing]

url:    https://github.com/0day-ci/linux/commits/Leon-Krieg/staging-ks7010-Fix-coding-style-problems/20210817-020753
base:   https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/staging.git 9caf92ab573fd83c7455b65d4eefcefc1a9d2188
config: i386-tinyconfig (attached as .config)
compiler: gcc-9 (Debian 9.3.0-22) 9.3.0
reproduce (this is a W=1 build):
        # https://github.com/0day-ci/linux/commit/5e90bce950e7fa0f0331bb9620b538d3109f04c6
        git remote add linux-review https://github.com/0day-ci/linux
        git fetch --no-tags linux-review Leon-Krieg/staging-ks7010-Fix-coding-style-problems/20210817-020753
        git checkout 5e90bce950e7fa0f0331bb9620b538d3109f04c6
        # save the attached .config to linux build tree
        make W=1 ARCH=i386 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All errors (new ones prefixed by >>):

>> drivers/staging/ks7010/Kconfig:12: syntax error
   drivers/staging/ks7010/Kconfig:11: invalid statement
   drivers/staging/ks7010/Kconfig:12:warning: ignoring unsupported character '.'
   drivers/staging/ks7010/Kconfig:12: unknown statement "SDW-823"
--
>> drivers/staging/ks7010/Kconfig:12: syntax error
   drivers/staging/ks7010/Kconfig:11: invalid statement
   drivers/staging/ks7010/Kconfig:12:warning: ignoring unsupported character '.'
   drivers/staging/ks7010/Kconfig:12: unknown statement "SDW-823"
   make[2]: *** [scripts/kconfig/Makefile:77: olddefconfig] Error 1
   make[1]: *** [Makefile:625: olddefconfig] Error 2
   make: *** [Makefile:220: __sub-make] Error 2
   make: Target 'olddefconfig' not remade because of errors.
--
>> drivers/staging/ks7010/Kconfig:12: syntax error
   drivers/staging/ks7010/Kconfig:11: invalid statement
   drivers/staging/ks7010/Kconfig:12:warning: ignoring unsupported character '.'
   drivers/staging/ks7010/Kconfig:12: unknown statement "SDW-823"
   make[3]: *** [scripts/kconfig/Makefile:77: syncconfig] Error 1
   make[2]: *** [Makefile:625: syncconfig] Error 2
   make[1]: *** [Makefile:735: include/config/auto.conf.cmd] Error 2
   make[1]: Failed to remake makefile 'include/config/auto.conf.cmd'.
   make[1]: Failed to remake makefile 'include/config/auto.conf'.
   make[1]: Target 'prepare' not remade because of errors.
   make: *** [Makefile:220: __sub-make] Error 2
   make: Target 'prepare' not remade because of errors.


vim +12 drivers/staging/ks7010/Kconfig

  > 12		  SDW-823).

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

--M9NhX3UHpAaciwkO
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

H4sICMnkGmEAAy5jb25maWcAlFxZc+O2sn7Pr2AlVbeSh0y8jH0mdcsPEAiKiLgNQWrxC0uR
6RlVbMlHkpPMv7/dACmCZEPJTVVmPOjG3uj+eqF/+O4Hj72f9q/r03azfnn55n2pd/Vhfaqf
vOftS/2/np96SVp4wpfFB2COtrv3v3/Z3n669+4+XF99uPvkzerDrn7x+H73vP3yDn23+913
P3zH0ySQ04rzai5yJdOkKsSyePj+y2bz86/ej379+3a98379cPvh6uebm5/MT99b3aSqppw/
fGubpt1QD79e3V5dtYTIP7ff3N5d3VxddTQesWR6JnddrD5X1pycJVUkk1k3q9VYqYIVkvdo
IVMVU3E1TYuUJMgEuoqOJPPP1SLNrRkmpYz8QsaiKtgkEpVK86KjFmEumA/DBCn8ASwKu8L5
/uBN9VW9eMf69P7WnfgkT2ciqeDAVZxZEyeyqEQyr1gO+5exLB5ub2CUdslpnEmYvRCq8LZH
b7c/4cDnA0s5i9oT+/77rp9NqFhZpERnvcNKsajArk1jyOaimok8EVE1fZTWSm3KBCg3NCl6
jBlNWT66eqQuwkea8KgKHyjn3Vrrtfc5pOtVX2LAtRMHZa9/3CW9POLHS2TcCDGhLwJWRoUW
Dutu2uYwVUXCYvHw/Y+7/a7+ybp3tVJzmXFyzgUreFh9LkUpSDrPU6WqWMRpvqpYUTAeknyl
EpGcEMvWV8RymISVoJhgLSCEUfsu4Il5x/ffj9+Op/q1exdTkYhccv0CszydWI/SJqkwXdjC
kPvQqiq1qHKhROLTvZCWz0E9wCuIU3/w4IM058Jv3rJMph1VZSxXApn0lde7J2//PNhBp8tS
PlNpCWOZI/ZTayR9HDaLvtNvVOc5i6TPClFFTBUVX/GIOAutkebd0Q7IejwxF0mhLhKrGLQW
838rVUHwxamqygzXMnh/WarksuJZqdeRK634WsWpb7nYvtaHI3XR4WOVwfCpr3X1WZqSFCnS
j2ih1GSSEsppiBfcLKXP09zYaDXtYrJciDgrYHhtBc6Dtu3zNCqTguUrcuqGy6bpzcPB/FKs
j394J5jXW8Majqf16eitN5v9++603X3pjgNM1kyfJOM8hbmM/J2nQPnUd92R6aUoSe78XyxF
LznnpafGlwXzrSqg2UuCf1ZiCXdIWSJlmO3uqu3fLKk/lbXVmfnBpVHKRDUmmIfwXLUUt+Km
Nl/rp/eX+uA91+vT+6E+6uZmRoLae5cLlhTVBN8sjFsmMcuqIppUQVSq0N45n+ZpmSlaa4aC
z7JUwkggjEWa03Js1o6WWI9F8uQiYrTATaIZaP+5Vh65T7OkKSgN10EC9EkzkCf5KFDt4UuE
v2KW8J74D9kU/EDBDr9K8ywEALZgeTLQEaX0r+8tVQqqqohAcLjItB4ucsZHeoWrbAariliB
y+qoRt7sJcZgASWYoJw+5qkoYtRJjYakmVYqUBc5AtibSyMZHUgpnbN2AGGY0ZdUOl5xf/90
XwYWKShdKy4Bx5MUkaWuc5DThEUBLU96gw6atiEOmgoBQZAUJmmoJNOqzF36jflzCftuLos+
cJhwwvJcOmRihh1XMd13kgUXJQElTaOugAJqWougT9EtAUZLwISCHujpTiU+E/2hl/B94Q+f
A8xZna24JSXXVz04qXVd4+hl9eF5f3hd7za1J/6sd6DrGWhBjtoebGCn2h2D+wKE0xBhz9U8
hhNJB0CyUav/csZu7HlsJqy0KXO9G/R1GOjjnH47KmITB6Gk0KiK0om9QewP95RPRQukHfJb
BgEYm4wBoz4DBkrd8dDTQEYjyW1Oqe8Htqtafrqvbi3XCf5tO4OqyEuu1aQvOADWvCOmZZGV
RaXVNngF9cvz7c3P6PKf/QM0jL7IKlVmWc9bBfvJZ1rvjmlxXA7Qaox2ME/8aiINUHz4dInO
lg/X9zRDe6P/ME6PrTfcGcsrVvm2X2kGYKvWfFSBzwkgC4h6kiOk9tG0Drrju0UAhmZ3SdHA
ARIYYhDaDhIccPsgzVU2BUkoBm9YiaLM8D0ZkAcuRseQCMACLUnrABgqR9AflnaUo8enBZJk
M+uRE/ApjasDJkrJSTRcsipVBq6Si6zRkD46FlVhCZY0moxG0NKjWm0BS9JPpCfPIN/gwjyu
qqlydS+1p2eRAzCpguXRiqOnJiwEkE0N+ItAg0Tq4WYQzFEMrwflG+9AcHirLTbMDvtNfTzu
D97p25vBwD2Q2Az0CC4AChetDWIaquE2A8GKMhcVuuK0RpumkR9IRbvRuSjAMoN0OScwwgnw
KadtE/KIZQFXimJyCTs0tyJzSS/UoNM0lqBfcthOpQGtw56GKxBJsMqAD6flIC7V2eSPn+4V
DUiQRBPuLhAKRUc1kBbHS8IAxPdat3acIPwAHWMp6YHO5Mt0+oRbKh3uiWeOjc3+42j/RLfz
vFQpLTGxCALJRZrQ1IVMeCgz7lhIQ76lQV0MKtIx7lSAmZoury9Qq8ghCHyVy6XzvOeS8duK
DthpouPsEHs5eoEpdz+QxmoQkoRU/R4S3I2xCyqUQfFwZ7NE124aYqoMVJTxF1UZ91UmSHe/
gcfZkofT+4/D5nTebwG7KuMy1soiYLGMVg/3Nl1ravDAYmVhCclAG6D+qoDSj3+kXCh82kpE
oE0pVxImAkWuD8SKQLXN+k57EKelsNgfN4araZoQo8BrYmU+JgCKSVQsCkZOUcacbH8MWbqU
ib3TMBOFcXJIgfBjSew90aZYVbAIMMYTMYUxr2kixiRHpAZ4jgjQ0BNFPK1M0gpPXzrv6QBj
7iw4/rrfbU/7gwk4dZfbIX+8DFDyi+HuG+zqGKu/iEhMGV8BuHdobf1q0izCP4TDMBUpvJUJ
bXvlJ9oRwHFzgfEOQA2usEwsOYgyPFf3GSr65hvLKyl/L0kx6mjwSS8QCU0faQe2od5/pMIy
81hlERjd217sr2vFaAw5astyQ0/akf9xhGtqXRprpkEAIPbh6m9+Zf7rn1HGqNCQxnkBYBHY
M7wBRqBQHVt3k7XeadMQGLS3lIyMUOiiFp5gyLwUD4OFaQ0L3kSq0A3PSx12cmh1kyAAC5Uu
Hu4/WuJT5LR06DXCC/cvGBIFjo2TCAAju2BiIjAFS71tPH9bKigO2iYTnMMUYCeej9X11RUV
en2sbu6uenL+WN32WQej0MM8wDBWMEYsBWVis3ClJPhriOVzFLrrocyBm4a+OIrMpf7g8k0T
6H8z6N44mXNf0QfBY1+7eqBXaLQN5yiDVRX5BR0walXnBa/D6On9X/XBA926/lK/1ruTZmE8
k97+DZP0Peekcdno8EPsen9nPwuHta9QT0M6AEGvvc1meMGh/u97vdt8846b9cvAnmjIkfcD
W3YCguh9Hlg+vdTDscZJIGss0+F8yv94iHrwyfuxbfB+zLj06tPmw0/2vBhZmJSKOMkm5oCG
uJeYUQ5PkaPIkaQ0cmRkQVZpZJyI4u7uisbUWsOsVDAhj8qxY3Ma29368M0Tr+8v61bS+q9D
Y6durBF/P9MLYBpjMymou9bnDraH17/Wh9rzD9s/Tdixixr7tBwHMo8XDBxp0PkuzTlN02kk
zqwjWS3qL4e199zO/qRnt1NBDoaWPFp3v+xg3jP4c5kXJdzdI3NYFiwymS/vri0kiqGKkF1X
iRy23dzdD1uLjIG/MCwoWR82X7eneoO65Oen+g2WjpLfaY32rJroF+C83Ip56Z2kJmZpGd22
pUpiafCwvdXfyjirIjYRjgyCLr3BOFuEhjtwlKnoqbV7KjEKXCZaSWM+jKO3MUAA6CphbUoh
k2qiFmxYgyLBv8PQIRF0mw3jSqYVQy0UAbAR3cG0YrFOQKWrgjIxQVqR5+AqyeQ3of89YIMT
HbTo/ekRwzSdDYiobODfhZyWaUmk7xVcBarIpmCBikeC0kcbZQoKCAbAcw2ychB9mWv0NTp0
s3JT9WSC1NUilIAxpF1BcI4jgquzShiqB10hYHoM+G5vJoA/AeVUw2vECi0wt0390vB2cjGF
95X4JuzXyFCjpnt8Snx2XRxWWzk7hotqAhs1Wd0BLZZLkNuOrPRyhilQAJUY3yvzBFwGuBJp
B/KHKR5CTrC+BaP54Af6wkQ1dQ9qEGL+NouTN0fklzF5n93rvkzVIfJCzsciZaS8UiwQbchi
MFTTairSHDQ/LR3haJnxytTitFVuxEKV4Gi/LpCaSH0vHWQoLm1leuPpRXDVw9j+MN5sK0SL
cnHwhSxC0HDmhnTUdXiNRA3IUBpTvO14mD9s1UyCvhZqXIzmo09HHTHScAy0RflQ08ErbL02
wUGOrSgVkMoIlCSqa1D9KCOEUtEU7S71UijdMnvZpAGDWIKCILVdv9c5r8QjDOZP4EQBJfjW
cClWOsppA6dvRwTW6u+hv2CUFN7CpfQv6DcJGrGp6ssXVjrpAmnY3Zxon6c7qAwO+PamdYP6
etHOQ4Pd5/kqG+WjOlNNSYGrpKO5fIwUgM7U4UgDSng6//n39bF+8v4w6eC3w/55+9KrcTov
C7mrFmiYFXR50gsj9XaAlcZZVE5lonr9/x08aofSZRQKs9t20K0RZiqL0Ih5kQsME6Sgk20x
maCapryHxCQOM3jiZYJMTTVhn67tqaFfopF9FznYX1dnm9jvPfAQDYgHWE2gMF0r6utN6DpF
N0u+oBjw6hOwtqCl8ohlMAwWdPg5ml1QTTREacsnqokI8C+0Y/3aTYtX++GwWRhcnBN/4u96
835a//5S62p5T4cyTz1fZCKTIC5QO9FVIYaseC4d4bOGI5aOtBTuAM0u6aS5FqhXGNeve/C6
4s63HSH8izGyNvgWs6RkveB+F3kzNEJsm8790Sqd9jD9LCvbDTeswDdYC6tYp2WvA6qRrNAy
qcPeHwf6lg8dqi7YgRHJXKDQDgouLKesKlJ05u09zxQVJWkrqbUZMaWwfv7w8erXc+pEU5IU
o1UAYREHWtqCMq1UtNhO3896LiQHVJHoZJEjGEUHGR4zV3TqcVLS3vWjGlfyDB1FTLy3blUv
GyRynUGB63UkuAGgTsDehDHLKS14fqlZIQyEsDHgDM+4xYXnMaN0oWVNA2e6HDLKS1w8+bbc
z6cXXnF6qVgQ9psu0dav0a//3G7scEaPWSpmL10MgkM9TM57YSQMzZByzjnrV3h2MYDtplmH
l44jhaWpsApFlLlSWmJexFngqAAoAKQxhE+OUicz/DlWoz8eGS3zHEZ52a+fmgBMq0gWcLPM
dySchh3tGBkKBBa/0ir1vDksSPFzcFJcu9cMYp47ijUMA0YwmmFA3SC+vvBwdGVPWaSO7xaQ
PC8jLKiZSFB9UoyBy/hOz4HLJy16vUuOQzmMVvYif20X64UmypEgK2h9kQaudxzLaVicC65A
/TWFZJaO1k0jqUjmgJ7V+9vb/nCyY3K9dmP7tscNtW+49niFMIZcMiigKFVYioPJHMkdF6zA
x6IjqljEt6yUHwiHMb8h9yUEXHzsHa2dtSvSlOrXW768Jy9r0LWJYf69Pnpydzwd3l91OeXx
KzyJJ+90WO+OyOcBKK69Jzik7Rv+2A9w/r976+7s5QTw2QuyKbPCo/u/dvgSvdc91s97P2Ig
f3uoYYIb3oufCx6mtB62r7Lv1vrn0KbiSjZM1jG29wVEBDf2m6E6WDLNOFjqVIXNC1ajK5O7
t/fTeMYuup9k5fiiw/XhSZ+L/CX1sEs/R4Nftfy7R6NZ7SczBbd/KFvnzVLTnr9FojZiVgXX
vt7ApVIPqShoi4oLY5FWsyP90h5NFsvK1MU76sIWlxKjGf/0n9v7v6tp5igDTxR3E2FhrrJy
IM1ctGTuevOwkalJFLtrQAoO/2eOwgUR8aHr1+WrRlfQdTRHBBCyBEODRQxjq2gk9YaTAnpD
12Tb7Bb3La3QlCsNmMU0IRx+ZtTeajZ+Y1mReZuX/eYPa/1GX+60y5OFK/x+EDN2AMTw4zHM
3up7ABQSo5fonfYwXu2dvtbe+ulpi5YRXHw96vGDrfbGk1mLk4mzdhIlbfAV45m2oBNvulxG
VwzQLqGho2cd0Y8sXMQO76YIwcdl9ErbbwoJDaPUxC7m7a5RUQXxE/AqSPbJwN0wpvj95bR9
ft9t8OxbRfM0zurFgQ96FySY9ljCAqGCkvyWRiHQeybiLHLUHeLgxf3tr45SPyCr2JUoZZPl
3dWVho3u3ivFXRWTQC5kxeLb27slFugx31GBioyf4+WwDKo1hJcO0tILYlpGzk8NYuFLVnFw
RpvIzQUugsP4EIf129ft5kipFb9fn2WQAbTZJqTZj9185ptmpetXDYBcSyzUCTFSkwusLV/Y
0tejz8oiIE+RnsQ4HYf1a+39/v78DArXH9s8R6ac7GbA93rzx8v2y9eT9z9exP0LcAGo+LsM
FFb2IfCkQ0WYRNAwwM3aYvh/mPnsOgyv0nr7aZlQpWsl6Io05LICR6SIdH2iZL2IN3JclK7Y
If8iVvg1q6OSAfw+4dOQwmTgpHaOVsSahc94G6FUPC+tzxE0afQxSw7aBrR6vyHm1x/vP11/
aijdiyu4uREaVqBSGzkTJiYQs0kZkOU6GLzEILdrSOhnkjYXohsNm/ZHLzGEgg2LHxvxGCzQ
OvBy6UuVuT4zLR3oax64CBh0I7B2j0GmICJJSdP9jLYbc/wlB6N+jZO4OeyP++eTF357qw8/
z70v7/Xx1HufZyfkMqt1cwWbur5B1NWOzecVFSEUnZ8YglMnzryurxWjiCXp8vIXGzyNASyA
fNLPKly0QfnR8XCNhtT+/dAz2O240UzlvJKfbu6sLBi0inlBtE4i/9zawVtqBluhy2iS0oVN
ErZVOi1UXr/uT/XbYb+hkAaGYwr0m2kETHQ2g769Hr+Q42WxaiWUHrHX0zisMPmPSn/B7qU7
APrbt5+841u92T6fIznHFu+y15f9F2hWe96bvzVpBNn0gwHBcXd1G1ON1TqAw77Zv7r6kXQT
n1lmvwSHusYivdr7vD/Iz65B/olV824/xEvXACOaJn5+X7/A0pxrJ+m2zcNfjDESpyUmEf8e
jdmP+sx5SV4+1fkchfhXUmB5BlptjEslW1u2LJwgVKd46Kfk0MnZYgzlMHK2gVVSOnJEs11+
rE1wBQS0J6QrlvI0iggXFry63u+W6JyvJkCKDCRi4nE1SxOGkOTGyYVOY7Zk1c2nJEYHlUYn
PS4cz8llSqajaVyJEdRpvc3ejgauH3fULsZ8Mj6a8QcW1N1cYrMugo0xCts9HfbbJ/vUWeLn
qfTJjbXsFshgjtLUYSDGRMgWGGfcbHdfKJisCtrINUXqIbkkYkgL02O4ko7LOH7/hnRYJBXJ
2Bnywo8M4Odk8CWUZaVL52eS2WyKxXE0QOtnlZrcCWhUI1mWvfbNF2WLNLeqJTuU1P7KoECZ
Mil6KWKJ5hZ4dLVClTq+mdHVGcjhAkIwQlNc4krTAgdgQemIMvoXUK80tMr5qz0CdqH35zIt
aIHA/EygPlaOvJchu6gBljg4aKaoYTUgG7Ffb74OfFBFJHtbOGW4jV441u9Pe10V0IlCJ1KA
fVzL0TQeysjPh5nRs3OiHH2bj70dVPMXcUitkhqv2VJ+UhmPCGYvhAMSJ45f7FEmcvwJ1zlj
aD0Xg83qzfth+3+VXU1z2zYQvfdXeHLqQe3YiSdJDzlQ1Ic5okiZoEy7F41sK6rGta2R7U7S
X1+8BUgC4C6tnuJolyAIAosF8N7j609uYTYb3wiHQuN4if6qF1VjRXMaYbF6faXO4qFv+RIM
CKuGtPQc1jb1ojVFsoQkFwBBeZbemHcNvPUqiMX1OLPwhvbhIgedkar5tw9I4XHKM/i5flwP
cNaz3z0NXtbfN7qc3f1g9/S62aI1B7f77x88pZG/1of7zRPictvQLnJlp+ep3frv3b/BRhBJ
HRq4Yyi7RSbAcoFUaKovxJjaeQJEluTrowHCKgVKJswTNale2KmccYFAmHcGf7q7PYA2cXh+
e909+WEA+RQPX2lA3mWRxQsdVXB+iH7C4MC1SzrOBOskyWo1iWHiHc/Geg6RkqQCMNNsOR8G
C/kwYYuThu8RmIKfW0w6YEAk2rRIPRh0AyFTN3Odm+jg3qAanSbWMS1OSmH2LeIznnqK68qz
01HCw7tgTsrlSiz2E58lastnnuCvLaKB37tOkyHdSDhxLmJeAcAcH336yNIt2rXNn9CPYV4k
3oh+Uy7Cy/yEBCGE/Stfc4XgTIq2n1a6/01LTyPNUqV6tq1I4THQomruBXyn7Umg6HX7l56h
cEKUT0aukIt7jcf89gwEou7gZSkUVVE68wHckKISWtfGhM4I96Pj3YMBwdKv+4OOpA902HX/
uHnZdsF8+h+VU+I1JY2ThiT+RfS4XCbj8tt5s8Ous0LA4zolnLuT/3yYpwB7FQUES9gHEytr
Ytjz415Pur+RoqBOWe4eXsj1zvx+4OZdA6qBTC6fmBIDWIcHErUZs0haI0hCqOSz04/n/qta
EFdEVPfCjEl3iJRwDDzG0ZUi5aWI7ZrmCZQh+CCdmeM8zgE1Bhaq6QrTtDc6qBQSHHVIKGBB
AWHOJ8vOJdU4mtVIQj6HPPbdeGgy22VHm9u37RbTnwMf8c74oinmnRslAHBsVbmZo8Wvz6Yj
b/sd/2cuaCaO5VBFGfR9khJyhDVqvE4NYWWb4qiH89+uAed331eI7nWznKZcf36H8gMkeZS0
QgqUk/jpmOj3VSatLGFe5InKM2mlZu5S5HpxGEni0U1LG2diHQQFVJyuTpMMlJZXFFyUD0GH
EzuDbXI9B1lmTXB5bel5LpNELlUAu20jA8kZGS8IXkmhJWiBq3mtNtWt1ZUEPvEvPOImhjzK
3MEYem5j8d7If3u8WlStVJkG/N+62jgT4H/DAluv/pdLLY/18STNq26BnpkpyUp7zSIEANvb
nFMJYwVuBDN1lrchwlAL3KOKzmDt1OUiQBVa1K/2P8mf9y+Dk1SvlN72JpxerJ+2QUKvl6hY
jOTBpgpnb+QqPCNlNcvSVbFQ+aQM6H/87NWlCQodA0a9zNftBT4m61RdslATZ8+qr01+8dV4
/ejYkeOV3wdaYzYeL4LAZlZWOHZq4/mvL3rJSoigwcnj2+vmx0b/Abr770Txr/Ns7HhR2VNK
7JojY3fn5Kp/34vKwNq9LyYx53Hh+IVGay/6uKqME8Qrq0UU7oz6wb1S0n6KcaBay5OMcapP
11Pd5u+URewdneHXuTF/b7qr7ogkjScuUNoH7VvGqHjSU1Sdjf+PXuHtxFhJTL5+SOIASFlm
Si97wHCSoY02TJp5T4glltp2v35dnyANuevoENqG7mwZ+3nDO3bVlw7UVGRBCRdTd7aijIHX
zQlCgfBI4V3jQrdfViZR2t0ohSQ4m0hBaxzcrp4uBJd3+xmcivHkqLLEzkDC55eKW9o60uZy
TKvspwZWRSeBr7PZhqstqLT67HVyChnljXVaRIsL3qcm5bOqBr6R+MkcuZxzs7IBJNEcVsu4
zemoRJeHXaiQmmppfORpWPUhUdxeaEppjbhCiOoT+X2qaL7gyZ5OroZjLnzshvgnpNBM/fPH
189ej3UqQoTtSRpNVff9BXbizHfrDKCJTouGuSIdolLQiTd8rR6ZcTuVpkNSspdytfk8ycPu
5lXFShD3KXskuZHWXZ1ef/XEohzDmMd2Nh7Lkah73/hkEjEpXkR9SClqCBJC4ffJaoHE1SRc
WNcjM6uSDI0g6qKGjtBE9XJQv8u4e0Xl5gVfYqA0Kn7+Z3NYbz1RpNlSSvXrUB4qkAgnZ+Zj
MoyPn1PrTBpEbdMpFt5nOgroD8xNCMWIExFdetiIU3XfYzvdmx4pN0x0SV072G0LtnNowdeO
PvOlo1Eeq8J7qCrKrlNr5aSF2hRRKTNmMCpZjxKql/0uURJ/ub6+PuZ+cP3jOFdCbRr2Rslj
9B3ePGundRY/uOJA0AJ7brmQJLe3wbdriM+bQsDBG3n/ASsjo2XabAAA

--M9NhX3UHpAaciwkO
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

--M9NhX3UHpAaciwkO--
