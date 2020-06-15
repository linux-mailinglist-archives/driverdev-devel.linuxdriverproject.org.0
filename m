Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id C14201F8C20
	for <lists+driverdev-devel@lfdr.de>; Mon, 15 Jun 2020 03:43:05 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 7E04023E65;
	Mon, 15 Jun 2020 01:43:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id oq8aCiTht-r8; Mon, 15 Jun 2020 01:43:01 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 92E1723B7F;
	Mon, 15 Jun 2020 01:42:57 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 4066B1BF2B5
 for <devel@linuxdriverproject.org>; Mon, 15 Jun 2020 01:42:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 2D10B87FD6
 for <devel@linuxdriverproject.org>; Mon, 15 Jun 2020 01:42:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id pAiu2WduO-7l for <devel@linuxdriverproject.org>;
 Mon, 15 Jun 2020 01:42:53 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by whitealder.osuosl.org (Postfix) with ESMTPS id A31F587FCE
 for <devel@driverdev.osuosl.org>; Mon, 15 Jun 2020 01:42:53 +0000 (UTC)
IronPort-SDR: RnCVpAOUZSHBsR/qU/uerCCJD8Hdpj6VWQLuTO51c+x0CTu9ZUC7UQRlXSeg1tCRj3B5DiQ62Q
 v5IfnbKXdZew==
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jun 2020 18:42:52 -0700
IronPort-SDR: rULnI5QJTAe2RuyLPPN745NEAzKtVGrn9sn15v6minIWyFcff9sEQc0l1IMFhxjfOJbcq+n8Ws
 5NtHYkTto+tQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,513,1583222400"; 
 d="gz'50?scan'50,208,50";a="276385874"
Received: from lkp-server01.sh.intel.com (HELO 890040dad2fb) ([10.239.97.150])
 by orsmga006.jf.intel.com with ESMTP; 14 Jun 2020 18:42:49 -0700
Received: from kbuild by 890040dad2fb with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1jke9A-00001N-Vx; Mon, 15 Jun 2020 01:42:48 +0000
Date: Mon, 15 Jun 2020 09:42:07 +0800
From: kernel test robot <lkp@intel.com>
To: Ricardo Ferreira <rikajff@gmail.com>,
 Larry Finger <Larry.Finger@lwfinger.net>
Subject: Re: [PATCH v2] Staging: rtl8712: Addressed checkpatch.pl issues
 related to macro parameter wrapping in parentheses.
Message-ID: <202006150942.vqCWyC24%lkp@intel.com>
References: <20200614173146.28292-1-rikajff@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="PEIAKu/WMn1b1Hv9"
Content-Disposition: inline
In-Reply-To: <20200614173146.28292-1-rikajff@gmail.com>
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
Cc: devel@driverdev.osuosl.org,
 Florian Schilhabel <florian.c.schilhabel@googlemail.com>,
 kbuild-all@lists.01.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-kernel@vger.kernel.org, Ricardo Ferreira <rikajff@gmail.com>,
 Nishka Dasgupta <nishkadg.linux@gmail.com>
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>


--PEIAKu/WMn1b1Hv9
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi Ricardo,

Thank you for the patch! Yet something to improve:

[auto build test ERROR on staging/staging-testing]

url:    https://github.com/0day-ci/linux/commits/Ricardo-Ferreira/Staging-rtl8712-Addressed-checkpatch-pl-issues-related-to-macro-parameter-wrapping-in-parentheses/20200615-013306
base:   https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/staging.git af7b4801030c07637840191c69eb666917e4135d
config: arm-randconfig-r025-20200614 (attached as .config)
compiler: arm-linux-gnueabi-gcc (GCC) 9.3.0
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=gcc-9.3.0 make.cross ARCH=arm 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All error/warnings (new ones prefixed by >>, old ones prefixed by <<):

In file included from drivers/staging/rtl8712/rtl871x_cmd.h:22,
from drivers/staging/rtl8712/drv_types.h:47,
from drivers/staging/rtl8712/hal_init.c:26:
drivers/staging/rtl8712/ieee80211.h:566:1: warning: alignment 1 of 'struct ieee80211_authentication' is less than 2 [-Wpacked-not-aligned]
566 | } __packed;
| ^
drivers/staging/rtl8712/ieee80211.h:574:1: warning: alignment 1 of 'struct ieee80211_probe_response' is less than 2 [-Wpacked-not-aligned]
574 | } __packed;
| ^
drivers/staging/rtl8712/ieee80211.h:578:1: warning: alignment 1 of 'struct ieee80211_probe_request' is less than 2 [-Wpacked-not-aligned]
578 | } __packed;
| ^
drivers/staging/rtl8712/ieee80211.h:585:1: warning: alignment 1 of 'struct ieee80211_assoc_request_frame' is less than 2 [-Wpacked-not-aligned]
585 | } __packed;
| ^
drivers/staging/rtl8712/ieee80211.h:592:1: warning: alignment 1 of 'struct ieee80211_assoc_response_frame' is less than 2 [-Wpacked-not-aligned]
592 | } __packed;
| ^
In file included from drivers/staging/rtl8712/osdep_service.h:31,
from drivers/staging/rtl8712/hal_init.c:25:
drivers/staging/rtl8712/hal_init.c: In function 'chk_fwhdr':
>> drivers/staging/rtl8712/basic_types.h:24:49: error: expected expression before ')' token
24 | #define FIELD_OFFSET(s, field) ((addr_t)&(((s) *)(0))->(field))
|                                                 ^
>> drivers/staging/rtl8712/hal_init.c:136:12: note: in expansion of macro 'FIELD_OFFSET'
136 |  fwhdrsz = FIELD_OFFSET(struct fw_hdr, fwpriv) + pfwhdr->fw_priv_sz;
|            ^~~~~~~~~~~~
drivers/staging/rtl8712/hal_init.c: In function 'rtl8712_dl_fw':
>> drivers/staging/rtl8712/basic_types.h:24:49: error: expected expression before ')' token
24 | #define FIELD_OFFSET(s, field) ((addr_t)&(((s) *)(0))->(field))
|                                                 ^
drivers/staging/rtl8712/hal_init.c:176:26: note: in expansion of macro 'FIELD_OFFSET'
176 |   ptr = (u8 *)mappedfw + FIELD_OFFSET(struct fw_hdr, fwpriv) +
|                          ^~~~~~~~~~~~
--
In file included from drivers/staging/rtl8712/rtl871x_cmd.h:22,
from drivers/staging/rtl8712/drv_types.h:47,
from drivers/staging/rtl8712/rtl871x_ioctl_linux.c:21:
drivers/staging/rtl8712/ieee80211.h:566:1: warning: alignment 1 of 'struct ieee80211_authentication' is less than 2 [-Wpacked-not-aligned]
566 | } __packed;
| ^
drivers/staging/rtl8712/ieee80211.h:574:1: warning: alignment 1 of 'struct ieee80211_probe_response' is less than 2 [-Wpacked-not-aligned]
574 | } __packed;
| ^
drivers/staging/rtl8712/ieee80211.h:578:1: warning: alignment 1 of 'struct ieee80211_probe_request' is less than 2 [-Wpacked-not-aligned]
578 | } __packed;
| ^
drivers/staging/rtl8712/ieee80211.h:585:1: warning: alignment 1 of 'struct ieee80211_assoc_request_frame' is less than 2 [-Wpacked-not-aligned]
585 | } __packed;
| ^
drivers/staging/rtl8712/ieee80211.h:592:1: warning: alignment 1 of 'struct ieee80211_assoc_response_frame' is less than 2 [-Wpacked-not-aligned]
592 | } __packed;
| ^
In file included from drivers/staging/rtl8712/osdep_service.h:31,
from drivers/staging/rtl8712/rtl871x_ioctl_linux.c:20:
drivers/staging/rtl8712/rtl871x_ioctl_linux.c: In function 'wpa_set_encryption':
>> drivers/staging/rtl8712/basic_types.h:24:49: error: expected expression before ')' token
24 | #define FIELD_OFFSET(s, field) ((addr_t)&(((s) *)(0))->(field))
|                                                 ^
>> drivers/staging/rtl8712/rtl871x_ioctl_linux.c:413:4: note: in expansion of macro 'FIELD_OFFSET'
413 |    FIELD_OFFSET(struct NDIS_802_11_WEP, KeyMaterial);
|    ^~~~~~~~~~~~
drivers/staging/rtl8712/rtl871x_ioctl_linux.c: In function 'r8711_wx_set_enc':
>> drivers/staging/rtl8712/basic_types.h:24:49: error: expected expression before ')' token
24 | #define FIELD_OFFSET(s, field) ((addr_t)&(((s) *)(0))->(field))
|                                                 ^
drivers/staging/rtl8712/rtl871x_ioctl_linux.c:1561:9: note: in expansion of macro 'FIELD_OFFSET'
1561 |         FIELD_OFFSET(struct NDIS_802_11_WEP, KeyMaterial);
|         ^~~~~~~~~~~~
In file included from drivers/staging/rtl8712/rtl871x_ioctl_linux.c:28:
At top level:
drivers/staging/rtl8712/rtl871x_mp_ioctl.h:256:34: warning: 'oid_rtl_seg_81_85' defined but not used [-Wunused-const-variable=]
256 | static const struct oid_obj_priv oid_rtl_seg_81_85[] = {
|                                  ^~~~~~~~~~~~~~~~~
drivers/staging/rtl8712/rtl871x_mp_ioctl.h:249:34: warning: 'oid_rtl_seg_81_80_80' defined but not used [-Wunused-const-variable=]
249 | static const struct oid_obj_priv oid_rtl_seg_81_80_80[] = {
|                                  ^~~~~~~~~~~~~~~~~~~~
drivers/staging/rtl8712/rtl871x_mp_ioctl.h:240:34: warning: 'oid_rtl_seg_81_80_40' defined but not used [-Wunused-const-variable=]
240 | static const struct oid_obj_priv oid_rtl_seg_81_80_40[] = {
|                                  ^~~~~~~~~~~~~~~~~~~~
drivers/staging/rtl8712/rtl871x_mp_ioctl.h:205:34: warning: 'oid_rtl_seg_81_80_20' defined but not used [-Wunused-const-variable=]
205 | static const struct oid_obj_priv oid_rtl_seg_81_80_20[] = {
|                                  ^~~~~~~~~~~~~~~~~~~~
drivers/staging/rtl8712/rtl871x_mp_ioctl.h:138:34: warning: 'oid_rtl_seg_81_80_00' defined but not used [-Wunused-const-variable=]
138 | static const struct oid_obj_priv oid_rtl_seg_81_80_00[] = {
|                                  ^~~~~~~~~~~~~~~~~~~~

vim +24 drivers/staging/rtl8712/basic_types.h

    21	
    22	#define SIZE_T __kernel_size_t
    23	#define sint signed int
  > 24	#define FIELD_OFFSET(s, field)	((addr_t)&(((s) *)(0))->(field))
    25	

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

--PEIAKu/WMn1b1Hv9
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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

--PEIAKu/WMn1b1Hv9
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

--PEIAKu/WMn1b1Hv9--
