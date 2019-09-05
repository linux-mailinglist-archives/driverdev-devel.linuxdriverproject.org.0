Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id ABC2BA9E6E
	for <lists+driverdev-devel@lfdr.de>; Thu,  5 Sep 2019 11:32:19 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id C55F586B6C;
	Thu,  5 Sep 2019 09:32:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Epbl_bhFoQRH; Thu,  5 Sep 2019 09:32:17 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 6628B86B57;
	Thu,  5 Sep 2019 09:32:15 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 4F2DD1BF3BB
 for <devel@linuxdriverproject.org>; Thu,  5 Sep 2019 09:32:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 4BB6A87A33
 for <devel@linuxdriverproject.org>; Thu,  5 Sep 2019 09:32:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id umtT4Qu8IHbA for <devel@linuxdriverproject.org>;
 Thu,  5 Sep 2019 09:32:13 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from huawei.com (szxga04-in.huawei.com [45.249.212.190])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 19D13878F1
 for <devel@driverdev.osuosl.org>; Thu,  5 Sep 2019 09:32:13 +0000 (UTC)
Received: from DGGEMS410-HUB.china.huawei.com (unknown [172.30.72.59])
 by Forcepoint Email with ESMTP id B84C92026F6A311B2065;
 Thu,  5 Sep 2019 17:32:09 +0800 (CST)
Received: from localhost (10.202.226.61) by DGGEMS410-HUB.china.huawei.com
 (10.3.19.210) with Microsoft SMTP Server id 14.3.439.0; Thu, 5 Sep 2019
 17:32:05 +0800
Date: Thu, 5 Sep 2019 10:08:46 +0100
From: Jonathan Cameron <jonathan.cameron@huawei.com>
To: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
Subject: Re: [staging:staging-testing 314/401]
 drivers/iio/common/hid-sensors/hid-sensor-attributes.c:312: undefined
 reference to `__udivdi3'
Message-ID: <20190905100846.000045b4@huawei.com>
In-Reply-To: <20190904123711.GL2680@smile.fi.intel.com>
References: <201909041145.dxkxV8cJ%lkp@intel.com>
 <20190904123711.GL2680@smile.fi.intel.com>
Organization: Huawei
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; i686-w64-mingw32)
MIME-Version: 1.0
X-Originating-IP: [10.202.226.61]
X-CFilter-Loop: Reflected
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
Cc: devel@driverdev.osuosl.org, linux-iio@vger.kernel.org, kbuild-all@01.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Wed, 4 Sep 2019 15:37:11 +0300
Andy Shevchenko <andriy.shevchenko@linux.intel.com> wrote:

> On Wed, Sep 04, 2019 at 11:33:50AM +0800, kbuild test robot wrote:
> > tree:   https://kernel.googlesource.com/pub/scm/linux/kernel/git/gregkh/staging.git staging-testing
> > head:   74eb9c06b1d722468db397595ac6834b9e4ac235
> > commit: 473d12f7638c93acbd9296a8cd455b203d5eb528 [314/401] iio: hid-sensor-attributes: Convert to use int_pow()
> > config: i386-randconfig-e004-201935 (attached as .config)
> > compiler: gcc-7 (Debian 7.4.0-11) 7.4.0
> > reproduce:
> >         git checkout 473d12f7638c93acbd9296a8cd455b203d5eb528
> >         # save the attached .config to linux build tree
> >         make ARCH=i386 
> > 
> > If you fix the issue, kindly add following tag
> > Reported-by: kbuild test robot <lkp@intel.com>
> > 
> > All errors (new ones prefixed by >>):  
> 
> So, as far as I understood it wasn't compiled on 32-bit before, so, it's not a
> new error and thus would (has to?) be fixed separately.

I'm not convinced.  My assumption is this is triggered because the local pow_10
function was returning int whereas generic int_pow is returning an int64.
Whilst I would imagine it is fairly easy to fix, I'll not have a chance to do
so until the weekend.  Perhaps we should just revert this patch and revisit
in the next cycle?

0-day people, any idea why the iio.git/testing branch isn't getting built any
more?  I got lazy and started relying on your infrastructure and not bothering
with 32 bit local builds.  Somewhere along the way you stopped building it
and I'm afraid I didn't really notice.

Thanks for you all your hard work on 0day btw as it used to catch a lot
of stuff my local few builds didn't!

Jonathan



> 
> >    ld: drivers/iio/common/hid-sensors/hid-sensor-attributes.o: in function `adjust_exponent_nano':  
> > >> drivers/iio/common/hid-sensors/hid-sensor-attributes.c:312: undefined reference to `__udivdi3'
> > >> ld: drivers/iio/common/hid-sensors/hid-sensor-attributes.c:314: undefined reference to `__umoddi3'
> > >> ld: drivers/iio/common/hid-sensors/hid-sensor-attributes.c:324: undefined reference to `__udivdi3'  
> >    ld: drivers/iio/common/hid-sensors/hid-sensor-attributes.c:325: undefined reference to `__umoddi3'  
> 
> 


_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
