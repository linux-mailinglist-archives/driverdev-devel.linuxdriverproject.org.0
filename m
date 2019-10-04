Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 96AB1CB899
	for <lists+driverdev-devel@lfdr.de>; Fri,  4 Oct 2019 12:48:34 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id CE02220516;
	Fri,  4 Oct 2019 10:48:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id nQMbhlKAAUYh; Fri,  4 Oct 2019 10:48:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id AF9BB204EA;
	Fri,  4 Oct 2019 10:48:31 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 9DB5A1BF313
 for <devel@linuxdriverproject.org>; Fri,  4 Oct 2019 10:48:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 9A96C87AB6
 for <devel@linuxdriverproject.org>; Fri,  4 Oct 2019 10:48:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id dV1dQpLww19q for <devel@linuxdriverproject.org>;
 Fri,  4 Oct 2019 10:48:27 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by whitealder.osuosl.org (Postfix) with ESMTPS id B7F7487942
 for <devel@driverdev.osuosl.org>; Fri,  4 Oct 2019 10:48:27 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 04 Oct 2019 03:48:26 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.67,256,1566889200"; d="scan'208";a="182665062"
Received: from lkp-server01.sh.intel.com (HELO lkp-server01) ([10.239.97.150])
 by orsmga007.jf.intel.com with ESMTP; 04 Oct 2019 03:48:25 -0700
Received: from kbuild by lkp-server01 with local (Exim 4.89)
 (envelope-from <lkp@intel.com>)
 id 1iGL8K-0002ZA-GH; Fri, 04 Oct 2019 18:48:24 +0800
Date: Fri, 4 Oct 2019 18:48:12 +0800
From: kbuild test robot <lkp@intel.com>
To: =?iso-8859-1?B?Suly9G1l?= Pouiller <jerome.pouiller@silabs.com>
Subject: [staging:staging-testing 41/59] drivers/staging/wfx/main.c:47:14-21:
 ERROR: PTR_ERR applied after initialization to constant on line 42
Message-ID: <201910041809.W4MyUT1q%lkp@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
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
Cc: devel@driverdev.osuosl.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 kbuild-all@01.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/staging.git staging-testing
head:   40115bbc40e2fd2de0e01ef2a28e0d09a1b5d0d1
commit: 0096214a59a72b3c3c943e27bd03307324d3ce0f [41/59] staging: wfx: add support for I/O access

If you fix the issue, kindly add following tag
Reported-by: kbuild test robot <lkp@intel.com>


coccinelle warnings: (new ones prefixed by >>)

>> drivers/staging/wfx/main.c:47:14-21: ERROR: PTR_ERR applied after initialization to constant on line 42

vim +47 drivers/staging/wfx/main.c

    30	
    31	struct gpio_desc *wfx_get_gpio(struct device *dev, int override, const char *label)
    32	{
    33		struct gpio_desc *ret;
    34		char label_buf[256];
    35	
    36		if (override >= 0) {
    37			snprintf(label_buf, sizeof(label_buf), "wfx_%s", label);
    38			ret = ERR_PTR(devm_gpio_request_one(dev, override, GPIOF_OUT_INIT_LOW, label_buf));
    39			if (!ret)
    40				ret = gpio_to_desc(override);
    41		} else if (override == -1) {
  > 42			ret = NULL;
    43		} else {
    44			ret = devm_gpiod_get(dev, label, GPIOD_OUT_LOW);
    45		}
    46		if (IS_ERR(ret) || !ret) {
  > 47			if (!ret || PTR_ERR(ret) == -ENOENT)
    48				dev_warn(dev, "gpio %s is not defined\n", label);
    49			else
    50				dev_warn(dev, "error while requesting gpio %s\n", label);
    51			ret = NULL;
    52		} else {
    53			dev_dbg(dev, "using gpio %d for %s\n", desc_to_gpio(ret), label);
    54		}
    55		return ret;
    56	}
    57	

---
0-DAY kernel test infrastructure                Open Source Technology Center
https://lists.01.org/pipermail/kbuild-all                   Intel Corporation
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
