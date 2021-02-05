Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 831703111F1
	for <lists+driverdev-devel@lfdr.de>; Fri,  5 Feb 2021 21:09:11 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 6BAA12E13C;
	Fri,  5 Feb 2021 20:09:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id yGyXBNueViOI; Fri,  5 Feb 2021 20:09:08 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 713422E135;
	Fri,  5 Feb 2021 20:09:07 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id A3C411BF831
 for <devel@linuxdriverproject.org>; Fri,  5 Feb 2021 20:09:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id A04A086435
 for <devel@linuxdriverproject.org>; Fri,  5 Feb 2021 20:09:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id XRIkZ0Of0G40 for <devel@linuxdriverproject.org>;
 Fri,  5 Feb 2021 20:09:02 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id B790A862FC
 for <devel@driverdev.osuosl.org>; Fri,  5 Feb 2021 20:09:02 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id EC17364FBA;
 Fri,  5 Feb 2021 20:09:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1612555742;
 bh=beiP1QVTcTtnz/28je3Db2hFbKVGRBpJgYPrzRQ3FJY=;
 h=Date:From:To:Cc:Subject:In-Reply-To:From;
 b=HiHatxkiTqo19TZ7agC6KDqUsgXV67Li8ly2L0wqDAIgO/TnRxAG2RsEVs5oqP6c+
 UaOzHqagc4QJeLih2kXFAEt5d7GhSEhvjlhL3gH10/QCgaTVU1AQai8Mn1NFjTiezP
 i1wgd9CTA84LgzCyhkwn5/kx2hr1+O0JvExsTupHij3anIzI/f4gsgHmz14r0nXCYL
 l0+YcKZuoB+EBsv5ijeTNTCycIDJJ3bqKmtNaMYKKxf/lWGat0JwJxc2r6hSYJ80aS
 IrqB6hXBSMagUQ342uqUdCGIfPNEt/aJJPrbGL+JfG1RPWW1Icry7tJhu+BlO9Wj7x
 cGUyryDyXIy7Q==
Date: Fri, 5 Feb 2021 14:08:59 -0600
From: Bjorn Helgaas <helgaas@kernel.org>
To: Guenter Roeck <linux@roeck-us.net>
Subject: Re: [PATCH 2/4] hwmon: Use subdir-ccflags-* to inherit debug flag
Message-ID: <20210205200859.GA193526@bjorn-Precision-5520>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210205182832.GA186268@roeck-us.net>
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
Cc: linux-hwmon@vger.kernel.org, kw@linux.com, giometti@enneenne.com,
 jdelvare@suse.com, prime.zeng@huawei.com, linux-pm@vger.kernel.org,
 gregkh@linuxfoundation.org, masahiroy@kernel.org, devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org, Yicong Yang <yangyicong@hisilicon.com>,
 linuxarm@openeuler.org, abbotti@mev.co.uk, michal.lkml@markovi.net,
 linux-kbuild@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Fri, Feb 05, 2021 at 10:28:32AM -0800, Guenter Roeck wrote:
> On Fri, Feb 05, 2021 at 05:44:13PM +0800, Yicong Yang wrote:
> > From: Junhao He <hejunhao2@hisilicon.com>
> > 
> > Use subdir-ccflags-* instead of ccflags-* to inherit the debug
> > settings from Kconfig when traversing subdirectories.
> > 
> > Suggested-by: Bjorn Helgaas <bhelgaas@google.com>
> > Signed-off-by: Junhao He <hejunhao2@hisilicon.com>
> > Signed-off-by: Yicong Yang <yangyicong@hisilicon.com>
> 
> What problem does this fix ? Maybe I am missing it, but I don't see
> DEBUG being used in a subdirectory of drivers/hwmon.

It's my fault for raising this question [1].  Yicong fixed a real
problem in drivers/pci, where we are currently using

  ccflags-$(CONFIG_PCI_DEBUG) := -DDEBUG

so CONFIG_PCI_DEBUG=y turns on debug in drivers/pci, but not in the
subdirectories.  That's surprising to users.

So my question was whether we should default to using subdir-ccflags
for -DDEBUG in general, and only use ccflags when we have
subdirectories that have their own debug options, e.g.,

  drivers/i2c/Makefile:ccflags-$(CONFIG_I2C_DEBUG_CORE) := -DDEBUG
  drivers/i2c/algos/Makefile:ccflags-$(CONFIG_I2C_DEBUG_ALGO) := -DDEBUG
  drivers/i2c/busses/Makefile:ccflags-$(CONFIG_I2C_DEBUG_BUS) := -DDEBUG
  drivers/i2c/muxes/Makefile:ccflags-$(CONFIG_I2C_DEBUG_BUS) := -DDEBUG

I mentioned drivers/hwmon along with a few others that have
subdirectories, do not have per-subdirectory debug options, and use
ccflags.  I didn't try to determine whether those subdirectories
currently use -DDEBUG.

In the case of drivers/hwmon, several drivers do use pr_debug(),
and CONFIG_HWMON_DEBUG_CHIP=y turns those on.  But if somebody
were to add pr_debug() to drivers/hwmon/occ/common.c, for example,
CONFIG_HWMON_DEBUG_CHIP=y would *not* turn it on.  That sounds
surprising to me, but if that's what you intend, that's totally fine.

[1] https://lore.kernel.org/r/20210204161048.GA68790@bjorn-Precision-5520

> > ---
> >  drivers/hwmon/Makefile | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> > 
> > diff --git a/drivers/hwmon/Makefile b/drivers/hwmon/Makefile
> > index 09a86c5..1c0c089 100644
> > --- a/drivers/hwmon/Makefile
> > +++ b/drivers/hwmon/Makefile
> > @@ -201,5 +201,5 @@ obj-$(CONFIG_SENSORS_XGENE)	+= xgene-hwmon.o
> >  obj-$(CONFIG_SENSORS_OCC)	+= occ/
> >  obj-$(CONFIG_PMBUS)		+= pmbus/
> >  
> > -ccflags-$(CONFIG_HWMON_DEBUG_CHIP) := -DDEBUG
> > +subdir-ccflags-$(CONFIG_HWMON_DEBUG_CHIP) := -DDEBUG
> >  
> > -- 
> > 2.8.1
> > 
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
