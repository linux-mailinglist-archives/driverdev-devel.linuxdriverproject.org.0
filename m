Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id BAACE7A34F3
	for <lists+driverdev-devel@lfdr.de>; Sun, 17 Sep 2023 11:42:38 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2104160F79;
	Sun, 17 Sep 2023 09:42:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2104160F79
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id MhEJYrinu9L4; Sun, 17 Sep 2023 09:42:34 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id A1D5260B92;
	Sun, 17 Sep 2023 09:42:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A1D5260B92
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id A608D1BF3E5
 for <devel@linuxdriverproject.org>; Sun, 17 Sep 2023 09:42:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 8C31440192
 for <devel@linuxdriverproject.org>; Sun, 17 Sep 2023 09:42:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 8C31440192
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id KET4cmfIkZIl for <devel@linuxdriverproject.org>;
 Sun, 17 Sep 2023 09:42:29 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.20])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 0BD6C400C1
 for <devel@driverdev.osuosl.org>; Sun, 17 Sep 2023 09:42:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 0BD6C400C1
X-IronPort-AV: E=McAfee;i="6600,9927,10835"; a="369809953"
X-IronPort-AV: E=Sophos;i="6.02,153,1688454000"; d="scan'208";a="369809953"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Sep 2023 02:42:27 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10835"; a="919143070"
X-IronPort-AV: E=Sophos;i="6.02,153,1688454000"; d="scan'208";a="919143070"
Received: from lkp-server02.sh.intel.com (HELO 9ef86b2655e5) ([10.239.97.151])
 by orsmga005.jf.intel.com with ESMTP; 17 Sep 2023 02:42:26 -0700
Received: from kbuild by 9ef86b2655e5 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1qhoIK-00057Q-0f;
 Sun, 17 Sep 2023 09:42:24 +0000
Date: Sun, 17 Sep 2023 17:42:12 +0800
From: kernel test robot <lkp@intel.com>
To: Philipp Hortmann <philipp.g.hortmann@gmail.com>
Subject: [staging:staging-testing 32/56]
 drivers/staging/rtl8192e/rtllib.h:735:1: warning: alignment 1 of 'struct
 rtllib_authentication' is less than 2
Message-ID: <202309171733.Gl96cmYd-lkp@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1694943749; x=1726479749;
 h=date:from:to:cc:subject:message-id:mime-version;
 bh=fGMtN/mVOzsT0GmWl1Fwug6G8L/janPTa86s5cscyRU=;
 b=NgbxolBnLjQyM0C3zd+SM13MM7sgXYFoISNO2FryIN+AHplbdv/6TW36
 YzYc0cfHF5BW+8rvaXxaT4UPjPOnUGHmGgYKvCWxJM/4rNMAKQXDKyss6
 vSvV+o952WzMNQkQlSpNGFFJup5fB+yMH7d+5ycIi1IPogzmPk2/xp8Gz
 xftGWNw6wV3gUWfHpqyf6XqoL6K/idjVicUEkBulzPP33CCnzDzVK+7n6
 frs2tc7/kCDHdlPZK0iX4wShC8EbUjxGvXw8/j1N3HB5T0EXnRPcRQho8
 Vhf6BWhda5JLjICTGrJQeVVidk/eQuIwF13A0e2lcpO7zJ8sztMnXMYJ7
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=NgbxolBn
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
 oe-kbuild-all@lists.linux.dev
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/staging.git staging-testing
head:   a7705e54e1c895713a09e17bdcfaf507f80de3a0
commit: 71ddc43ed7c712b386adeb3a16a616fa3a9e52c8 [32/56] staging: rtl8192e: Replace struct rtllib_hdr_3addr in structs of rtllib.h
config: alpha-allyesconfig (https://download.01.org/0day-ci/archive/20230917/202309171733.Gl96cmYd-lkp@intel.com/config)
compiler: alpha-linux-gcc (GCC) 13.2.0
reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20230917/202309171733.Gl96cmYd-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202309171733.Gl96cmYd-lkp@intel.com/

All warnings (new ones prefixed by >>):

   In file included from drivers/staging/rtl8192e/dot11d.h:11,
                    from drivers/staging/rtl8192e/dot11d.c:8:
>> drivers/staging/rtl8192e/rtllib.h:735:1: warning: alignment 1 of 'struct rtllib_authentication' is less than 2 [-Wpacked-not-aligned]
     735 | } __packed;
         | ^
>> drivers/staging/rtl8192e/rtllib.h:740:1: warning: alignment 1 of 'struct rtllib_disauth' is less than 2 [-Wpacked-not-aligned]
     740 | } __packed;
         | ^
>> drivers/staging/rtl8192e/rtllib.h:745:1: warning: alignment 1 of 'struct rtllib_disassoc' is less than 2 [-Wpacked-not-aligned]
     745 | } __packed;
         | ^
>> drivers/staging/rtl8192e/rtllib.h:751:1: warning: alignment 1 of 'struct rtllib_probe_request' is less than 2 [-Wpacked-not-aligned]
     751 | } __packed;
         | ^
>> drivers/staging/rtl8192e/rtllib.h:762:1: warning: alignment 1 of 'struct rtllib_probe_response' is less than 2 [-Wpacked-not-aligned]
     762 | } __packed;
         | ^
>> drivers/staging/rtl8192e/rtllib.h:773:1: warning: alignment 1 of 'struct rtllib_assoc_request_frame' is less than 2 [-Wpacked-not-aligned]
     773 | } __packed;
         | ^
>> drivers/staging/rtl8192e/rtllib.h:781:1: warning: alignment 1 of 'struct rtllib_assoc_response_frame' is less than 2 [-Wpacked-not-aligned]
     781 | } __packed;
         | ^
--
   In file included from drivers/staging/rtl8192e/rtllib_wx.c:19:
>> drivers/staging/rtl8192e/rtllib.h:735:1: warning: alignment 1 of 'struct rtllib_authentication' is less than 2 [-Wpacked-not-aligned]
     735 | } __packed;
         | ^
>> drivers/staging/rtl8192e/rtllib.h:740:1: warning: alignment 1 of 'struct rtllib_disauth' is less than 2 [-Wpacked-not-aligned]
     740 | } __packed;
         | ^
>> drivers/staging/rtl8192e/rtllib.h:745:1: warning: alignment 1 of 'struct rtllib_disassoc' is less than 2 [-Wpacked-not-aligned]
     745 | } __packed;
         | ^
>> drivers/staging/rtl8192e/rtllib.h:751:1: warning: alignment 1 of 'struct rtllib_probe_request' is less than 2 [-Wpacked-not-aligned]
     751 | } __packed;
         | ^
>> drivers/staging/rtl8192e/rtllib.h:762:1: warning: alignment 1 of 'struct rtllib_probe_response' is less than 2 [-Wpacked-not-aligned]
     762 | } __packed;
         | ^
>> drivers/staging/rtl8192e/rtllib.h:773:1: warning: alignment 1 of 'struct rtllib_assoc_request_frame' is less than 2 [-Wpacked-not-aligned]
     773 | } __packed;
         | ^
>> drivers/staging/rtl8192e/rtllib.h:781:1: warning: alignment 1 of 'struct rtllib_assoc_response_frame' is less than 2 [-Wpacked-not-aligned]
     781 | } __packed;
         | ^
   drivers/staging/rtl8192e/rtllib_wx.c: In function 'rtl819x_translate_scan':
   drivers/staging/rtl8192e/rtllib_wx.c:69:51: warning: '%s' directive output may be truncated writing up to 15 bytes into a region of size 6 [-Wformat-truncation=]
      69 |         snprintf(iwe.u.name, IFNAMSIZ, "IEEE802.11%s", proto_name);
         |                                                   ^~   ~~~~~~~~~~
   drivers/staging/rtl8192e/rtllib_wx.c:69:9: note: 'snprintf' output between 11 and 26 bytes into a destination of size 16
      69 |         snprintf(iwe.u.name, IFNAMSIZ, "IEEE802.11%s", proto_name);
         |         ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
--
   In file included from drivers/staging/rtl8192e/rtl8192e/rtl_core.h:35,
                    from drivers/staging/rtl8192e/rtl8192e/r8192E_dev.c:10:
>> drivers/staging/rtl8192e/rtl8192e/../rtllib.h:735:1: warning: alignment 1 of 'struct rtllib_authentication' is less than 2 [-Wpacked-not-aligned]
     735 | } __packed;
         | ^
>> drivers/staging/rtl8192e/rtl8192e/../rtllib.h:740:1: warning: alignment 1 of 'struct rtllib_disauth' is less than 2 [-Wpacked-not-aligned]
     740 | } __packed;
         | ^
>> drivers/staging/rtl8192e/rtl8192e/../rtllib.h:745:1: warning: alignment 1 of 'struct rtllib_disassoc' is less than 2 [-Wpacked-not-aligned]
     745 | } __packed;
         | ^
>> drivers/staging/rtl8192e/rtl8192e/../rtllib.h:751:1: warning: alignment 1 of 'struct rtllib_probe_request' is less than 2 [-Wpacked-not-aligned]
     751 | } __packed;
         | ^
>> drivers/staging/rtl8192e/rtl8192e/../rtllib.h:762:1: warning: alignment 1 of 'struct rtllib_probe_response' is less than 2 [-Wpacked-not-aligned]
     762 | } __packed;
         | ^
>> drivers/staging/rtl8192e/rtl8192e/../rtllib.h:773:1: warning: alignment 1 of 'struct rtllib_assoc_request_frame' is less than 2 [-Wpacked-not-aligned]
     773 | } __packed;
         | ^
>> drivers/staging/rtl8192e/rtl8192e/../rtllib.h:781:1: warning: alignment 1 of 'struct rtllib_assoc_response_frame' is less than 2 [-Wpacked-not-aligned]
     781 | } __packed;
         | ^


vim +735 drivers/staging/rtl8192e/rtllib.h

94a799425eee82 Larry Finger        2011-08-23  727  
94a799425eee82 Larry Finger        2011-08-23  728  struct rtllib_authentication {
71ddc43ed7c712 Philipp Hortmann    2023-09-15  729  	struct ieee80211_hdr_3addr header;
94a799425eee82 Larry Finger        2011-08-23  730  	__le16 algorithm;
94a799425eee82 Larry Finger        2011-08-23  731  	__le16 transaction;
94a799425eee82 Larry Finger        2011-08-23  732  	__le16 status;
94a799425eee82 Larry Finger        2011-08-23  733  	/*challenge*/
5979afa2c4d1c8 Gustavo A. R. Silva 2020-02-20  734  	struct rtllib_info_element info_element[];
8567829a6cfe13 Larry Finger        2011-08-25 @735  } __packed;
94a799425eee82 Larry Finger        2011-08-23  736  
94a799425eee82 Larry Finger        2011-08-23  737  struct rtllib_disauth {
71ddc43ed7c712 Philipp Hortmann    2023-09-15  738  	struct ieee80211_hdr_3addr header;
94a799425eee82 Larry Finger        2011-08-23  739  	__le16 reason;
8567829a6cfe13 Larry Finger        2011-08-25 @740  } __packed;
94a799425eee82 Larry Finger        2011-08-23  741  
94a799425eee82 Larry Finger        2011-08-23  742  struct rtllib_disassoc {
71ddc43ed7c712 Philipp Hortmann    2023-09-15  743  	struct ieee80211_hdr_3addr header;
94a799425eee82 Larry Finger        2011-08-23  744  	__le16 reason;
8567829a6cfe13 Larry Finger        2011-08-25 @745  } __packed;
94a799425eee82 Larry Finger        2011-08-23  746  
94a799425eee82 Larry Finger        2011-08-23  747  struct rtllib_probe_request {
71ddc43ed7c712 Philipp Hortmann    2023-09-15  748  	struct ieee80211_hdr_3addr header;
94a799425eee82 Larry Finger        2011-08-23  749  	/* SSID, supported rates */
5979afa2c4d1c8 Gustavo A. R. Silva 2020-02-20  750  	struct rtllib_info_element info_element[];
8567829a6cfe13 Larry Finger        2011-08-25 @751  } __packed;
94a799425eee82 Larry Finger        2011-08-23  752  
94a799425eee82 Larry Finger        2011-08-23  753  struct rtllib_probe_response {
71ddc43ed7c712 Philipp Hortmann    2023-09-15  754  	struct ieee80211_hdr_3addr header;
94a799425eee82 Larry Finger        2011-08-23  755  	u32 time_stamp[2];
94a799425eee82 Larry Finger        2011-08-23  756  	__le16 beacon_interval;
94a799425eee82 Larry Finger        2011-08-23  757  	__le16 capability;
94a799425eee82 Larry Finger        2011-08-23  758  	/* SSID, supported rates, FH params, DS params,
14b40d92881533 Mateusz Kulikowski  2015-04-01  759  	 * CF params, IBSS params, TIM (if beacon), RSN
14b40d92881533 Mateusz Kulikowski  2015-04-01  760  	 */
5979afa2c4d1c8 Gustavo A. R. Silva 2020-02-20  761  	struct rtllib_info_element info_element[];
8567829a6cfe13 Larry Finger        2011-08-25 @762  } __packed;
94a799425eee82 Larry Finger        2011-08-23  763  
94a799425eee82 Larry Finger        2011-08-23  764  /* Alias beacon for probe_response */
94a799425eee82 Larry Finger        2011-08-23  765  #define rtllib_beacon rtllib_probe_response
94a799425eee82 Larry Finger        2011-08-23  766  
94a799425eee82 Larry Finger        2011-08-23  767  struct rtllib_assoc_request_frame {
71ddc43ed7c712 Philipp Hortmann    2023-09-15  768  	struct ieee80211_hdr_3addr header;
94a799425eee82 Larry Finger        2011-08-23  769  	__le16 capability;
94a799425eee82 Larry Finger        2011-08-23  770  	__le16 listen_interval;
94a799425eee82 Larry Finger        2011-08-23  771  	/* SSID, supported rates, RSN */
5979afa2c4d1c8 Gustavo A. R. Silva 2020-02-20  772  	struct rtllib_info_element info_element[];
8567829a6cfe13 Larry Finger        2011-08-25 @773  } __packed;
94a799425eee82 Larry Finger        2011-08-23  774  
94a799425eee82 Larry Finger        2011-08-23  775  struct rtllib_assoc_response_frame {
71ddc43ed7c712 Philipp Hortmann    2023-09-15  776  	struct ieee80211_hdr_3addr header;
94a799425eee82 Larry Finger        2011-08-23  777  	__le16 capability;
94a799425eee82 Larry Finger        2011-08-23  778  	__le16 status;
94a799425eee82 Larry Finger        2011-08-23  779  	__le16 aid;
5979afa2c4d1c8 Gustavo A. R. Silva 2020-02-20  780  	struct rtllib_info_element info_element[]; /* supported rates */
8567829a6cfe13 Larry Finger        2011-08-25 @781  } __packed;
94a799425eee82 Larry Finger        2011-08-23  782  

:::::: The code at line 735 was first introduced by commit
:::::: 8567829a6cfe13e2a8b366794fffa54e5fd06e9f staging: rtl8192e: Cleanup checkpatch -f warnings and errors - Part XII

:::::: TO: Larry Finger <Larry.Finger@lwfinger.net>
:::::: CC: Greg Kroah-Hartman <gregkh@suse.de>

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
