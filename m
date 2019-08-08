Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E8B886440
	for <lists+driverdev-devel@lfdr.de>; Thu,  8 Aug 2019 16:24:04 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 7CABF20499;
	Thu,  8 Aug 2019 14:24:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id NWVr23H9xwhu; Thu,  8 Aug 2019 14:24:01 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 644AA20427;
	Thu,  8 Aug 2019 14:23:59 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 6AC001BF5DF
 for <devel@linuxdriverproject.org>; Thu,  8 Aug 2019 14:23:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 67DF520340
 for <devel@linuxdriverproject.org>; Thu,  8 Aug 2019 14:23:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id IFCCBKgGwstu for <devel@linuxdriverproject.org>;
 Thu,  8 Aug 2019 14:23:56 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by silver.osuosl.org (Postfix) with ESMTPS id BF98A20018
 for <devel@driverdev.osuosl.org>; Thu,  8 Aug 2019 14:23:56 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 08 Aug 2019 07:23:56 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,361,1559545200"; d="scan'208";a="350187610"
Received: from lkp-server01.sh.intel.com (HELO lkp-server01) ([10.239.97.150])
 by orsmga005.jf.intel.com with ESMTP; 08 Aug 2019 07:23:54 -0700
Received: from kbuild by lkp-server01 with local (Exim 4.89)
 (envelope-from <lkp@intel.com>)
 id 1hvjKc-0009E8-1b; Thu, 08 Aug 2019 22:23:54 +0800
Date: Thu, 8 Aug 2019 22:23:40 +0800
From: kbuild test robot <lkp@intel.com>
To: Gabriel Beauchamp <beauchampgabriel@gmail.com>
Subject: Re: [PATCH v3] Staging: most: fix coding style issues
Message-ID: <201908082224.xkj3s0FR%lkp@intel.com>
References: <20190630165604.2452-1-beauchampgabriel@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190630165604.2452-1-beauchampgabriel@gmail.com>
X-Patchwork-Hint: ignore
User-Agent: NeoMutt/20170113 (1.7.2)
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
Cc: devel@driverdev.osuosl.org, gustavo@embeddedor.com,
 gregkh@linuxfoundation.org, linux-kernel@vger.kernel.org,
 Gabriel Beauchamp <beauchampgabriel@gmail.com>, kbuild-all@01.org,
 christian.gromm@microchip.com, joe@perches.com, colin.king@canonical.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi Gabriel,

Thank you for the patch! Perhaps something to improve:

[auto build test WARNING on staging/staging-testing]
[cannot apply to v5.3-rc3 next-20190808]
[if your patch is applied to the wrong git tree, please drop us a note to help improve the system]

url:    https://github.com/0day-ci/linux/commits/Gabriel-Beauchamp/Staging-most-fix-coding-style-issues/20190701-203804
reproduce:
        # apt-get install sparse
        # sparse version: v0.6.1-rc1-7-g2b96cd8-dirty
        make ARCH=x86_64 allmodconfig
        make C=1 CF='-fdiagnostic-prefix -D__CHECK_ENDIAN__'

If you fix the issue, kindly add following tag
Reported-by: kbuild test robot <lkp@intel.com>


sparse warnings: (new ones prefixed by >>)

>> drivers/staging/most/core.c:308:30: sparse: sparse: incorrect type in assignment (different modifiers) @@    expected char *type @@    got char const *char *type @@
>> drivers/staging/most/core.c:308:30: sparse:    expected char *type
>> drivers/staging/most/core.c:308:30: sparse:    got char const *const name

vim +308 drivers/staging/most/core.c

   296	
   297	static ssize_t set_datatype_show(struct device *dev,
   298					 struct device_attribute *attr,
   299					 char *buf)
   300	{
   301		int i;
   302		char *type = "unconfigured\n";
   303	
   304		struct most_channel *c = to_channel(dev);
   305	
   306		for (i = 0; i < ARRAY_SIZE(ch_data_type); i++) {
   307			if (c->cfg.data_type & ch_data_type[i].most_ch_data_type) {
 > 308				type = ch_data_type[i].name;
   309				break;
   310			}
   311		}
   312		return snprintf(buf, PAGE_SIZE, "%s", type);
   313	}
   314	

---
0-DAY kernel test infrastructure                Open Source Technology Center
https://lists.01.org/pipermail/kbuild-all                   Intel Corporation
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
