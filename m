Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B8A6915AC0
	for <lists+driverdev-devel@lfdr.de>; Tue, 25 Jun 2024 01:53:42 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id B4CC540B03;
	Mon, 24 Jun 2024 23:53:39 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ppuOBXiJ89HT; Mon, 24 Jun 2024 23:53:38 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=driverdev-devel-bounces@linuxdriverproject.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 626A840AF2
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 626A840AF2;
	Mon, 24 Jun 2024 23:53:38 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 6A1DD1BF23C
 for <devel@linuxdriverproject.org>; Mon, 24 Jun 2024 23:53:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 5666681F06
 for <devel@linuxdriverproject.org>; Mon, 24 Jun 2024 23:53:37 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id W_aRMhYELpmV for <devel@linuxdriverproject.org>;
 Mon, 24 Jun 2024 23:53:36 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.10;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 43B0481F01
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 43B0481F01
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 43B0481F01
 for <devel@driverdev.osuosl.org>; Mon, 24 Jun 2024 23:53:35 +0000 (UTC)
X-CSE-ConnectionGUID: xCZ8Uv5QQTWCXRpH2mMjkw==
X-CSE-MsgGUID: giGPslfoRPusuH23aOEyjQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11113"; a="27677245"
X-IronPort-AV: E=Sophos;i="6.08,263,1712646000"; d="scan'208";a="27677245"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jun 2024 16:53:35 -0700
X-CSE-ConnectionGUID: PlVxXWMOQre2Jc4suIX4TQ==
X-CSE-MsgGUID: CD767dqpSqaBcWJVjR9fdg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,263,1712646000"; d="scan'208";a="48410056"
Received: from lkp-server01.sh.intel.com (HELO 68891e0c336b) ([10.239.97.150])
 by orviesa005.jf.intel.com with ESMTP; 24 Jun 2024 16:53:34 -0700
Received: from kbuild by 68891e0c336b with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1sLtV5-000DpU-00;
 Mon, 24 Jun 2024 23:53:31 +0000
Date: Tue, 25 Jun 2024 07:53:10 +0800
From: kernel test robot <lkp@intel.com>
To: Philipp Hortmann <philipp.g.hortmann@gmail.com>
Subject: [staging:staging-testing 37/59]
 drivers/staging/rtl8723bs/os_dep/ioctl_cfg80211.c:2553:24: warning: variable
 'pwdev_priv' set but not used
Message-ID: <202406250759.FnxzD3PK-lkp@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1719273216; x=1750809216;
 h=date:from:to:cc:subject:message-id:mime-version;
 bh=B/GFHm7zyq0ueXrJHR9jcizF4kP7pcHilfrk4JTO0gI=;
 b=iEmCvM4qbOCPX8cRM36xEEt2lwxlG8/qXxom+zHHW5zzKVCsIKXp5fjU
 IDTe88YLDdXzvnXS1bOezQ8QPF1Qmd1bPz4aaQYIHSubFzbYNLkeYnmJz
 /P/tvcckQACQueO+TwReHCeHLSlF6McKFrLiNMdMJTu1SYxpvFmzvgYNv
 Q2fM4xqgCJCKVxIIB209SZzeQz4A6LqNG4yY/YESBH0RPrJot8lTUG8aU
 qHPWNyeKe51X6j/aJJRkrF3/n9vbjRpZm3406pRxkWwCih87pb0+h4vHT
 74l34fPl5C0Q4e9sxmLM+YZoJU8o+XupCPCVjlu1Wg7ZycIsLY4JwiFe4
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=iEmCvM4q
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
Cc: devel@driverdev.osuosl.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 llvm@lists.linux.dev, oe-kbuild-all@lists.linux.dev
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/staging.git staging-testing
head:   921190437a4827667cceef10202b2150571ebe5c
commit: bdee203cd80ce2d3b0a52015ecfde6ad45d01eb9 [37/59] staging: rtl8723bs: Remove switch(type) as type is constant
config: x86_64-buildonly-randconfig-004-20240625 (https://download.01.org/0day-ci/archive/20240625/202406250759.FnxzD3PK-lkp@intel.com/config)
compiler: clang version 18.1.5 (https://github.com/llvm/llvm-project 617a15a9eac96088ae5e9134248d8236e34b91b1)
reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20240625/202406250759.FnxzD3PK-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202406250759.FnxzD3PK-lkp@intel.com/

All warnings (new ones prefixed by >>):

>> drivers/staging/rtl8723bs/os_dep/ioctl_cfg80211.c:2553:24: warning: variable 'pwdev_priv' set but not used [-Wunused-but-set-variable]
    2553 |         struct rtw_wdev_priv *pwdev_priv;
         |                               ^
   1 warning generated.


vim +/pwdev_priv +2553 drivers/staging/rtl8723bs/os_dep/ioctl_cfg80211.c

554c0a3abf216c Hans de Goede     2017-03-29  2536  
1d85bb7fd66aa1 Franziska Naepelt 2023-07-01  2537  static int cfg80211_rtw_mgmt_tx(struct wiphy *wiphy, struct wireless_dev *wdev,
554c0a3abf216c Hans de Goede     2017-03-29  2538  				struct cfg80211_mgmt_tx_params *params,
554c0a3abf216c Hans de Goede     2017-03-29  2539  				u64 *cookie)
554c0a3abf216c Hans de Goede     2017-03-29  2540  {
554c0a3abf216c Hans de Goede     2017-03-29  2541  	struct net_device *ndev = wdev_to_ndev(wdev);
554c0a3abf216c Hans de Goede     2017-03-29  2542  	struct ieee80211_channel *chan = params->chan;
554c0a3abf216c Hans de Goede     2017-03-29  2543  	const u8 *buf = params->buf;
554c0a3abf216c Hans de Goede     2017-03-29  2544  	size_t len = params->len;
554c0a3abf216c Hans de Goede     2017-03-29  2545  	int ret = 0;
554c0a3abf216c Hans de Goede     2017-03-29  2546  	int tx_ret;
554c0a3abf216c Hans de Goede     2017-03-29  2547  	u32 dump_limit = RTW_MAX_MGMT_TX_CNT;
554c0a3abf216c Hans de Goede     2017-03-29  2548  	u32 dump_cnt = 0;
554c0a3abf216c Hans de Goede     2017-03-29  2549  	bool ack = true;
554c0a3abf216c Hans de Goede     2017-03-29  2550  	u8 tx_ch = (u8)ieee80211_frequency_to_channel(chan->center_freq);
554c0a3abf216c Hans de Goede     2017-03-29  2551  	u8 category, action;
554c0a3abf216c Hans de Goede     2017-03-29  2552  	struct adapter *padapter;
554c0a3abf216c Hans de Goede     2017-03-29 @2553  	struct rtw_wdev_priv *pwdev_priv;
554c0a3abf216c Hans de Goede     2017-03-29  2554  
cd1f1450092216 Michael Straube   2021-08-29  2555  	if (!ndev) {
554c0a3abf216c Hans de Goede     2017-03-29  2556  		ret = -EINVAL;
554c0a3abf216c Hans de Goede     2017-03-29  2557  		goto exit;
554c0a3abf216c Hans de Goede     2017-03-29  2558  	}
554c0a3abf216c Hans de Goede     2017-03-29  2559  
42a18f09bcb900 Ivan Safonov      2020-10-11  2560  	padapter = rtw_netdev_priv(ndev);
554c0a3abf216c Hans de Goede     2017-03-29  2561  	pwdev_priv = adapter_wdev_data(padapter);
554c0a3abf216c Hans de Goede     2017-03-29  2562  
554c0a3abf216c Hans de Goede     2017-03-29  2563  	/* cookie generation */
554c0a3abf216c Hans de Goede     2017-03-29  2564  	*cookie = (unsigned long)buf;
554c0a3abf216c Hans de Goede     2017-03-29  2565  
554c0a3abf216c Hans de Goede     2017-03-29  2566  	/* indicate ack before issue frame to avoid racing with rsp frame */
554c0a3abf216c Hans de Goede     2017-03-29  2567  	rtw_cfg80211_mgmt_tx_status(padapter, *cookie, buf, len, ack, GFP_KERNEL);
554c0a3abf216c Hans de Goede     2017-03-29  2568  
04c35396c5c6c6 Fabio Aiuto       2021-04-10  2569  	if (rtw_action_frame_parse(buf, len, &category, &action) == false)
554c0a3abf216c Hans de Goede     2017-03-29  2570  		goto exit;
554c0a3abf216c Hans de Goede     2017-03-29  2571  
554c0a3abf216c Hans de Goede     2017-03-29  2572  	rtw_ps_deny(padapter, PS_DENY_MGNT_TX);
51c8299a031c19 Kang Minchul      2022-09-22  2573  	if (rtw_pwr_wakeup(padapter) == _FAIL) {
554c0a3abf216c Hans de Goede     2017-03-29  2574  		ret = -EFAULT;
554c0a3abf216c Hans de Goede     2017-03-29  2575  		goto cancel_ps_deny;
554c0a3abf216c Hans de Goede     2017-03-29  2576  	}
554c0a3abf216c Hans de Goede     2017-03-29  2577  
554c0a3abf216c Hans de Goede     2017-03-29  2578  	do {
554c0a3abf216c Hans de Goede     2017-03-29  2579  		dump_cnt++;
554c0a3abf216c Hans de Goede     2017-03-29  2580  		tx_ret = _cfg80211_rtw_mgmt_tx(padapter, tx_ch, buf, len);
554c0a3abf216c Hans de Goede     2017-03-29  2581  	} while (dump_cnt < dump_limit && tx_ret != _SUCCESS);
554c0a3abf216c Hans de Goede     2017-03-29  2582  
554c0a3abf216c Hans de Goede     2017-03-29  2583  cancel_ps_deny:
554c0a3abf216c Hans de Goede     2017-03-29  2584  	rtw_ps_deny_cancel(padapter, PS_DENY_MGNT_TX);
554c0a3abf216c Hans de Goede     2017-03-29  2585  exit:
554c0a3abf216c Hans de Goede     2017-03-29  2586  	return ret;
554c0a3abf216c Hans de Goede     2017-03-29  2587  }
554c0a3abf216c Hans de Goede     2017-03-29  2588  

:::::: The code at line 2553 was first introduced by commit
:::::: 554c0a3abf216c991c5ebddcdb2c08689ecd290b staging: Add rtl8723bs sdio wifi driver

:::::: TO: Hans de Goede <hdegoede@redhat.com>
:::::: CC: Greg Kroah-Hartman <gregkh@linuxfoundation.org>

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
