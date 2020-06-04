Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 8DAAC1EE896
	for <lists+driverdev-devel@lfdr.de>; Thu,  4 Jun 2020 18:28:58 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 8984D24C8F;
	Thu,  4 Jun 2020 16:28:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id sOw-aXlI8-Eg; Thu,  4 Jun 2020 16:28:54 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 297D124BB3;
	Thu,  4 Jun 2020 16:28:53 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 4AB311BF338
 for <devel@linuxdriverproject.org>; Thu,  4 Jun 2020 16:28:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 4677886D88
 for <devel@linuxdriverproject.org>; Thu,  4 Jun 2020 16:28:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ZQHFYXT5PJHo for <devel@linuxdriverproject.org>;
 Thu,  4 Jun 2020 16:28:49 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f67.google.com (mail-wm1-f67.google.com
 [209.85.128.67])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id C07A786D38
 for <devel@driverdev.osuosl.org>; Thu,  4 Jun 2020 16:28:48 +0000 (UTC)
Received: by mail-wm1-f67.google.com with SMTP id r15so6319380wmh.5
 for <devel@driverdev.osuosl.org>; Thu, 04 Jun 2020 09:28:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=broadcom.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=CvFBAxlrt2J9jb0QdDsGu7K922VoXgCGTJpM/HBK+Qk=;
 b=Nwm8d//+sjH3Z9mufLz/+WKylqV8GnlqZP5cDZilNehMRs3XQT7l8Tg489oBe2Bv5H
 K23RVr8/sl/WjZcrBeLCXT1Z5LKkPJSqD059Mdrq9I69Yz6Dg0doVUUnBcL4wDHjhYva
 Qf30ZckaVxPcfdXWBXJlmMCnpDqNXJqy90Nhs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=CvFBAxlrt2J9jb0QdDsGu7K922VoXgCGTJpM/HBK+Qk=;
 b=uUhsw47Fx4g+bJWahUhE0Izc7lS96NuM996VoG6ADtgiK7KkUB8iYXHTrWrQ08Q3d8
 qqHF1e8Lx1F5+9uWtUgx2ojKWrKBuPXVltMoIrYo1CezTlTvYwhkxozq0SjYtw0pr6MC
 Fv2DRddU1V7YiCtw5zG/SLD4bhM3pvfe4HwNRUyvoHUJtIeLBz3XYDlrFb1xF/idGkC0
 1y9iDI1m53DXwBOpDNAZqgP4Uu2i+m4SQGU0r0bwl5Yd44kUEGJv7RJWKmnxJmugndZJ
 MtCSMtrgD3wpVZrgqXPPsibTzIGgvEIHvGD/gkJCwlL4xD2ouwT5nXsu+rogLhvlTt91
 sU2A==
X-Gm-Message-State: AOAM532LWlC0/QYJaXeFY/4PFJDUiz7G23kBEwDNIg29dqGI/sVitUpJ
 XlvWQDI6WAK2MojgvVm+D2BkW4dj5w1g/+E+3v/JbA==
X-Google-Smtp-Source: ABdhPJxNGHB1SSXPUoFwXoNSi05e8v/wl0KgveYrZK14zPrtDm8asHl5Z5GTJTxfyjyWg62aQanc89ULkV9YeVvY+YQ=
X-Received: by 2002:a1c:62d6:: with SMTP id w205mr4493336wmb.97.1591288126871; 
 Thu, 04 Jun 2020 09:28:46 -0700 (PDT)
MIME-Version: 1.0
References: <20200603192058.35296-1-james.quinlan@broadcom.com>
 <20200603192058.35296-10-james.quinlan@broadcom.com>
 <09c451e24f62e226e1ceaa0fe5d0a81109cace74.camel@suse.de>
 <CA+-6iNz1-1wOurKoOJzhbVL0_YP7dbmp0wy1GWkLW_61yhRXyA@mail.gmail.com>
 <20200604150535.GB2428291@smile.fi.intel.com>
In-Reply-To: <20200604150535.GB2428291@smile.fi.intel.com>
From: Jim Quinlan <james.quinlan@broadcom.com>
Date: Thu, 4 Jun 2020 12:28:34 -0400
Message-ID: <CA+-6iNxze_tfWBsE0FkSFcWgihx=CHgNBiHi=BUC+9_=x-TtUA@mail.gmail.com>
Subject: Re: [PATCH v3 09/13] device core: Introduce multiple dma pfn offsets
To: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
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
Cc: Ulf Hansson <ulf.hansson@linaro.org>, Rich Felker <dalias@libc.org>,
 "open list:SUPERH" <linux-sh@vger.kernel.org>, David Airlie <airlied@linux.ie>,
 "open list:PCI NATIVE HOST BRIDGE AND ENDPOINT DRIVERS"
 <linux-pci@vger.kernel.org>, Hanjun Guo <guohanjun@huawei.com>,
 "open list:REMOTE PROCESSOR \(REMOTEPROC\) SUBSYSTEM"
 <linux-remoteproc@vger.kernel.org>,
 "open list:DRM DRIVERS FOR ALLWINNER A10" <dri-devel@lists.freedesktop.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Julien Grall <julien.grall@arm.com>, "H. Peter Anvin" <hpa@zytor.com>,
 Will Deacon <will@kernel.org>, Christoph Hellwig <hch@lst.de>,
 Marek Szyprowski <m.szyprowski@samsung.com>,
 "open list:STAGING SUBSYSTEM" <devel@driverdev.osuosl.org>,
 Wolfram Sang <wsa@kernel.org>, Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Yoshinori Sato <ysato@users.sourceforge.jp>,
 Frank Rowand <frowand.list@gmail.com>, Joerg Roedel <joro@8bytes.org>,
 "maintainer:X86 ARCHITECTURE \(32-BIT AND 64-BIT\)" <x86@kernel.org>,
 Russell King <linux@armlinux.org.uk>,
 "open list:ACPI FOR ARM64 \(ACPI/arm64\)" <linux-acpi@vger.kernel.org>,
 Chen-Yu Tsai <wens@csie.org>, Ingo Molnar <mingo@redhat.com>,
 "maintainer:BROADCOM BCM7XXX ARM ARCHITECTURE"
 <bcm-kernel-feedback-list@broadcom.com>,
 Alan Stern <stern@rowland.harvard.edu>, Len Brown <lenb@kernel.org>,
 Ohad Ben-Cohen <ohad@wizery.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE"
 <devicetree@vger.kernel.org>, Arnd Bergmann <arnd@arndb.de>,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Dan Williams <dan.j.williams@intel.com>, Maxime Ripard <mripard@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Borislav Petkov <bp@alien8.de>,
 Yong Deng <yong.deng@magewell.com>, Santosh Shilimkar <ssantosh@kernel.org>,
 Bjorn Helgaas <bhelgaas@google.com>, Thomas Gleixner <tglx@linutronix.de>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 "moderated list:ARM PORT" <linux-arm-kernel@lists.infradead.org>,
 Saravana Kannan <saravanak@google.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Oliver Neukum <oneukum@suse.com>, "Rafael J. Wysocki" <rjw@rjwysocki.net>,
 open list <linux-kernel@vger.kernel.org>,
 Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 "open list:IOMMU DRIVERS" <iommu@lists.linux-foundation.org>,
 Mark Brown <broonie@kernel.org>, Stefano Stabellini <sstabellini@kernel.org>,
 Daniel Vetter <daniel@ffwll.ch>, Sudeep Holla <sudeep.holla@arm.com>,
 "open list:ALLWINNER A10 CSI DRIVER" <linux-media@vger.kernel.org>,
 Robin Murphy <robin.murphy@arm.com>,
 "open list:USB SUBSYSTEM" <linux-usb@vger.kernel.org>,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi Andy,

On Thu, Jun 4, 2020 at 11:05 AM Andy Shevchenko
<andriy.shevchenko@linux.intel.com> wrote:
>
> On Thu, Jun 04, 2020 at 10:35:12AM -0400, Jim Quinlan wrote:
> > On Thu, Jun 4, 2020 at 9:53 AM Nicolas Saenz Julienne
> > <nsaenzjulienne@suse.de> wrote:
> > > On Wed, 2020-06-03 at 15:20 -0400, Jim Quinlan wrote:
>
> ...
>
> > > > +     phys = virt_to_phys(ret);
> > > > +     pfn =  phys >> PAGE_SHIFT;
> > >
> > > nit: not sure it really pays off to have a pfn variable here.
> > Did it for readability; the compiler's optimization should take care
> > of any extra variables.  But I can switch if you insist.
>
> One side note: please, try to get familiar with existing helpers in the kernel.
> For example, above line is like
>
>         pfn = PFN_DOWN(phys);
I just used the term in the original code; will change to PFN_DOWN().

>
> ...
>
> > > > +     if (!WARN_ON(!dev) && dev->dma_pfn_offset_map)
>
> > > > +             *dma_handle -= PFN_PHYS(
> > > > +                     dma_pfn_offset_from_phys_addr(dev, phys));
>
> Don't do such indentation, esp. we have now 100! :-)

Got it.  Thanks,
Jim Quinlan
>
> --
> With Best Regards,
> Andy Shevchenko
>
>
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
