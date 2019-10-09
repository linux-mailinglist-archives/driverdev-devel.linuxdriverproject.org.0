Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id D83CDD07A4
	for <lists+driverdev-devel@lfdr.de>; Wed,  9 Oct 2019 08:51:19 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 996B1228E3;
	Wed,  9 Oct 2019 06:51:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 95a4q0PwFD13; Wed,  9 Oct 2019 06:51:17 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 32216227CD;
	Wed,  9 Oct 2019 06:51:16 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id A6A751BF9B9
 for <devel@linuxdriverproject.org>; Wed,  9 Oct 2019 06:51:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 9CDF5204FC
 for <devel@linuxdriverproject.org>; Wed,  9 Oct 2019 06:51:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 0IiA04+Bu79k for <devel@linuxdriverproject.org>;
 Wed,  9 Oct 2019 06:51:07 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by silver.osuosl.org (Postfix) with ESMTPS id D6B8E204B8
 for <devel@driverdev.osuosl.org>; Wed,  9 Oct 2019 06:51:06 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 08 Oct 2019 23:51:06 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.67,273,1566889200"; d="scan'208";a="277338020"
Received: from shao2-debian.sh.intel.com (HELO [10.239.13.6]) ([10.239.13.6])
 by orsmga001.jf.intel.com with ESMTP; 08 Oct 2019 23:51:05 -0700
Subject: Re: [staging:staging-testing 41/59]
 drivers/staging/wfx/main.c:47:14-21: ERROR: PTR_ERR applied after
 initialization to constant on line 42
To: Jerome Pouiller <Jerome.Pouiller@silabs.com>,
 kbuild test robot <lkp@intel.com>
References: <201910041809.W4MyUT1q%lkp@intel.com> <3767201.AobC1b7GVW@pc-42>
From: Rong Chen <rong.a.chen@intel.com>
Message-ID: <21f8b824-2b17-7eaa-b0c4-510e89b798cb@intel.com>
Date: Wed, 9 Oct 2019 14:50:48 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <3767201.AobC1b7GVW@pc-42>
Content-Language: en-US
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
Cc: "devel@driverdev.osuosl.org" <devel@driverdev.osuosl.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 "kbuild-all@01.org" <kbuild-all@01.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>



On 10/7/19 4:36 PM, Jerome Pouiller wrote:
> On Friday 4 October 2019 12:48:32 CEST kbuild test robot wrote:
> [...]
>>>> drivers/staging/wfx/main.c:47:14-21: ERROR: PTR_ERR applied after initialization to constant on line 42
>> vim +47 drivers/staging/wfx/main.c
>>
>>      30
>>      31  struct gpio_desc *wfx_get_gpio(struct device *dev, int override, const char *label)
>>      32  {
>>      33          struct gpio_desc *ret;
>>      34          char label_buf[256];
>>      35
>>      36          if (override >= 0) {
>>      37                  snprintf(label_buf, sizeof(label_buf), "wfx_%s", label);
>>      38                  ret = ERR_PTR(devm_gpio_request_one(dev, override, GPIOF_OUT_INIT_LOW, label_buf));
>>      39                  if (!ret)
>>      40                          ret = gpio_to_desc(override);
>>      41          } else if (override == -1) {
>>    > 42                  ret = NULL;
>>      43          } else {
>>      44                  ret = devm_gpiod_get(dev, label, GPIOD_OUT_LOW);
>>      45          }
>>      46          if (IS_ERR(ret) || !ret) {
>>    > 47                  if (!ret || PTR_ERR(ret) == -ENOENT)
>>      48                          dev_warn(dev, "gpio %s is not defined\n", label);
>>      49                  else
>>      50                          dev_warn(dev, "error while requesting gpio %s\n", label);
>>      51                  ret = NULL;
>>      52          } else {
>>      53                  dev_dbg(dev, "using gpio %d for %s\n", desc_to_gpio(ret), label);
>>      54          }
>>      55          return ret;
>>      56  }
>>      57
> I think that this report is a false positive or I missed something?
>

Hi,

Sorry for the inconvenience, but we confirmed that the error first 
appeared since commit 0096214a59.

Best Regards,
Rong Chen

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
