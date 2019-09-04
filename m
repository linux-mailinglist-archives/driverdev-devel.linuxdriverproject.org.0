Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 8091BA8289
	for <lists+driverdev-devel@lfdr.de>; Wed,  4 Sep 2019 14:37:22 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id AFDEF87951;
	Wed,  4 Sep 2019 12:37:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id SYi6GnupS46e; Wed,  4 Sep 2019 12:37:20 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 5D8FC87998;
	Wed,  4 Sep 2019 12:37:18 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 99F601BF3DE
 for <devel@linuxdriverproject.org>; Wed,  4 Sep 2019 12:37:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 95A158574A
 for <devel@linuxdriverproject.org>; Wed,  4 Sep 2019 12:37:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id lvhBzUWpNaXh for <devel@linuxdriverproject.org>;
 Wed,  4 Sep 2019 12:37:14 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 61B4584C2C
 for <devel@driverdev.osuosl.org>; Wed,  4 Sep 2019 12:37:14 +0000 (UTC)
X-Amp-Result: UNSCANNABLE
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 04 Sep 2019 05:37:13 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,467,1559545200"; d="scan'208";a="212378188"
Received: from smile.fi.intel.com (HELO smile) ([10.237.68.40])
 by fmsmga002.fm.intel.com with ESMTP; 04 Sep 2019 05:37:12 -0700
Received: from andy by smile with local (Exim 4.92.1)
 (envelope-from <andriy.shevchenko@linux.intel.com>)
 id 1i5UX9-0000pS-5I; Wed, 04 Sep 2019 15:37:11 +0300
Date: Wed, 4 Sep 2019 15:37:11 +0300
From: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
To: kbuild test robot <lkp@intel.com>
Subject: Re: [staging:staging-testing 314/401]
 drivers/iio/common/hid-sensors/hid-sensor-attributes.c:312: undefined
 reference to `__udivdi3'
Message-ID: <20190904123711.GL2680@smile.fi.intel.com>
References: <201909041145.dxkxV8cJ%lkp@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <201909041145.dxkxV8cJ%lkp@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
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
Cc: devel@driverdev.osuosl.org, kbuild-all@01.org,
 Jonathan Cameron <Jonathan.Cameron@huawei.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Wed, Sep 04, 2019 at 11:33:50AM +0800, kbuild test robot wrote:
> tree:   https://kernel.googlesource.com/pub/scm/linux/kernel/git/gregkh/staging.git staging-testing
> head:   74eb9c06b1d722468db397595ac6834b9e4ac235
> commit: 473d12f7638c93acbd9296a8cd455b203d5eb528 [314/401] iio: hid-sensor-attributes: Convert to use int_pow()
> config: i386-randconfig-e004-201935 (attached as .config)
> compiler: gcc-7 (Debian 7.4.0-11) 7.4.0
> reproduce:
>         git checkout 473d12f7638c93acbd9296a8cd455b203d5eb528
>         # save the attached .config to linux build tree
>         make ARCH=i386 
> 
> If you fix the issue, kindly add following tag
> Reported-by: kbuild test robot <lkp@intel.com>
> 
> All errors (new ones prefixed by >>):

So, as far as I understood it wasn't compiled on 32-bit before, so, it's not a
new error and thus would (has to?) be fixed separately.

>    ld: drivers/iio/common/hid-sensors/hid-sensor-attributes.o: in function `adjust_exponent_nano':
> >> drivers/iio/common/hid-sensors/hid-sensor-attributes.c:312: undefined reference to `__udivdi3'
> >> ld: drivers/iio/common/hid-sensors/hid-sensor-attributes.c:314: undefined reference to `__umoddi3'
> >> ld: drivers/iio/common/hid-sensors/hid-sensor-attributes.c:324: undefined reference to `__udivdi3'
>    ld: drivers/iio/common/hid-sensors/hid-sensor-attributes.c:325: undefined reference to `__umoddi3'


-- 
With Best Regards,
Andy Shevchenko


_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
