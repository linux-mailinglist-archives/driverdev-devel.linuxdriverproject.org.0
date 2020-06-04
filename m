Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id BAB601EE6DA
	for <lists+driverdev-devel@lfdr.de>; Thu,  4 Jun 2020 16:44:02 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 3ECD123C58;
	Thu,  4 Jun 2020 14:44:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id U-2xbOoQtpsi; Thu,  4 Jun 2020 14:43:59 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 0F3E62413D;
	Thu,  4 Jun 2020 14:43:58 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 8B2C11BF681
 for <devel@linuxdriverproject.org>; Thu,  4 Jun 2020 14:43:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 8735586F96
 for <devel@linuxdriverproject.org>; Thu,  4 Jun 2020 14:43:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Cpx43X9-qIjU for <devel@linuxdriverproject.org>;
 Thu,  4 Jun 2020 14:43:54 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f68.google.com (mail-wm1-f68.google.com
 [209.85.128.68])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 5B0AB86F90
 for <devel@driverdev.osuosl.org>; Thu,  4 Jun 2020 14:43:54 +0000 (UTC)
Received: by mail-wm1-f68.google.com with SMTP id c71so5489220wmd.5
 for <devel@driverdev.osuosl.org>; Thu, 04 Jun 2020 07:43:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=broadcom.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=yrASyIBKHCebzBxwD+z9Y0Sx5KbX3AIS9EOUj/OsSEo=;
 b=Zo3wvxog4XFHb/YVpFj4s9xIrygC0gzFBySBqQZNw7sr6x//M1pIwpzb6eQiSawvt/
 lXxfDok/0izwAEybNnTwAlSClKsymf6ZNbvvqTZLcPoh0JmS53YoboI/Bc0cBmXUvBbS
 47R63jy0oSFePYBS0HLNUfVRO7FXvurSl7qQY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=yrASyIBKHCebzBxwD+z9Y0Sx5KbX3AIS9EOUj/OsSEo=;
 b=mrg3gTdNz7nZu9Q24VW8neSfclEJfGb7a5wnjgBg/bg4PoXUxBETllRojmjsq9mezJ
 LuXUDRmRA6P+F9g2Y156hcJ4cpdME2cB6fFfxGgPNWsKa0H5mFycn281PFRIs50Ml+gg
 4OZ2KLryRzESlPvoXoMT7xlu5A4QcpCDbBiuSpH/MUDz6JKnb775fSWmaZNfin7y2Uby
 a5N3LWe+kPqY8/SGqjGdOXRTugv8aMwXbmOSC2SA+dgpR3+edaGSot4BEIUvdvjmfLZ3
 gldOHJlTlvN+AfPi+DapyR9HoNEk/10xk3ulwUboFTgIrdBPOl3xln7L2szehCY+yyK7
 sbWQ==
X-Gm-Message-State: AOAM532iOAz6I7HnQrPKX/UiQIdPnEst3fewzR9ErMmMb2vNDAUSqnTL
 q7lC+nH/88EFV9aJ+sm9FHEVIzV8Jmi4JUcEQy1b+w==
X-Google-Smtp-Source: ABdhPJy6GhgxHSoger2ydUB8Z1ZADSP9s4xA+lVSOwpsNuaVTZK6gajJRSMryuNCt8+GdDFZpv9MjKz43PH9YKwUNdE=
X-Received: by 2002:a1c:4405:: with SMTP id r5mr4582574wma.72.1591281832459;
 Thu, 04 Jun 2020 07:43:52 -0700 (PDT)
MIME-Version: 1.0
References: <20200603192058.35296-1-james.quinlan@broadcom.com>
 <20200603192058.35296-10-james.quinlan@broadcom.com>
 <20200604110455.GO30374@kadam>
 <CA+-6iNyaL8izv5eHJyYkhwu9diPsqT0AD08UU_ECexNcdrT+jA@mail.gmail.com>
 <20200604141857.GH22511@kadam>
In-Reply-To: <20200604141857.GH22511@kadam>
From: Jim Quinlan <james.quinlan@broadcom.com>
Date: Thu, 4 Jun 2020 10:43:40 -0400
Message-ID: <CA+-6iNwF6gwkCVBtbWcp-frCG01LddFprqo7UeWJZ3bzDwG8zw@mail.gmail.com>
Subject: Re: [PATCH v3 09/13] device core: Introduce multiple dma pfn offsets
To: Dan Carpenter <dan.carpenter@oracle.com>
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
 "open list:REMOTE PROCESSOR REMOTEPROC SUBSYSTEM"
 <linux-remoteproc@vger.kernel.org>,
 "open list:DRM DRIVERS FOR ALLWINNER A10" <dri-devel@lists.freedesktop.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Julien Grall <julien.grall@arm.com>, "H. Peter Anvin" <hpa@zytor.com>,
 Frank Rowand <frowand.list@gmail.com>, Christoph Hellwig <hch@lst.de>,
 Marek Szyprowski <m.szyprowski@samsung.com>,
 "open list:STAGING SUBSYSTEM" <devel@driverdev.osuosl.org>,
 Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Yoshinori Sato <ysato@users.sourceforge.jp>, Will Deacon <will@kernel.org>,
 Joerg Roedel <joro@8bytes.org>,
 "maintainer:X86 ARCHITECTURE 32-BIT AND 64-BIT" <x86@kernel.org>,
 Russell King <linux@armlinux.org.uk>,
 "open list:ACPI FOR ARM64 ACPI/arm64" <linux-acpi@vger.kernel.org>,
 Chen-Yu Tsai <wens@csie.org>, Ingo Molnar <mingo@redhat.com>,
 "maintainer:BROADCOM BCM7XXX ARM ARCHITECTURE"
 <bcm-kernel-feedback-list@broadcom.com>,
 Alan Stern <stern@rowland.harvard.edu>, Len Brown <lenb@kernel.org>,
 Ohad Ben-Cohen <ohad@wizery.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE"
 <devicetree@vger.kernel.org>, Arnd Bergmann <arnd@arndb.de>,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Maxime Ripard <mripard@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Borislav Petkov <bp@alien8.de>,
 Yong Deng <yong.deng@magewell.com>, Santosh Shilimkar <ssantosh@kernel.org>,
 Bjorn Helgaas <bhelgaas@google.com>, Dan Williams <dan.j.williams@intel.com>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 "moderated list:ARM PORT" <linux-arm-kernel@lists.infradead.org>,
 Saravana Kannan <saravanak@google.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Oliver Neukum <oneukum@suse.com>, "Rafael J. Wysocki" <rjw@rjwysocki.net>,
 open list <linux-kernel@vger.kernel.org>, Wolfram Sang <wsa@kernel.org>,
 "open list:IOMMU DRIVERS" <iommu@lists.linux-foundation.org>,
 Mark Brown <broonie@kernel.org>, Thomas Gleixner <tglx@linutronix.de>,
 Stefano Stabellini <sstabellini@kernel.org>, Daniel Vetter <daniel@ffwll.ch>,
 Sudeep Holla <sudeep.holla@arm.com>,
 "open list:ALLWINNER A10 CSI DRIVER" <linux-media@vger.kernel.org>,
 Robin Murphy <robin.murphy@arm.com>,
 "open list:USB SUBSYSTEM" <linux-usb@vger.kernel.org>,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Thu, Jun 4, 2020 at 10:20 AM Dan Carpenter <dan.carpenter@oracle.com> wrote:
>
> On Thu, Jun 04, 2020 at 09:48:49AM -0400, Jim Quinlan wrote:
> > > > +     r = devm_kcalloc(dev, 1, sizeof(struct dma_pfn_offset_region),
> > > > +                      GFP_KERNEL);
> > >
> > > Use:    r = devm_kzalloc(dev, sizeof(*r), GFP_KERNEL);
> > Will fix.
> >
> > >
> > >
> > > > +     if (!r)
> > > > +             return -ENOMEM;
> > > > +
> > > > +     r->uniform_offset = true;
> > > > +     r->pfn_offset = pfn_offset;
> > > > +
> > > > +     return 0;
> > > > +}
> > >
> > > This function doesn't seem to do anything useful.  Is part of it
> > > missing?
> > No, the uniform pfn offset is a special case.
>
> Sorry, I wasn't clear.  We're talking about different things.  The code
> does:
>
>         r = devm_kzalloc(dev, sizeof(*r), GFP_KERNEL);
>         if (!r)
>                 return -ENOMEM;
>
>         r->uniform_offset = true;
>         r->pfn_offset = pfn_offset;
>
>         return 0;
>
> The code allocates "r" and then doesn't save it anywhere so there is
> no point.
You are absolutely right, sorry I missed your point.  Will fix.

Thanks,
Jim Quinlan

>
> regards,
> dan carpenter
>
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
