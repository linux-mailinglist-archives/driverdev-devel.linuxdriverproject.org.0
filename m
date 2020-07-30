Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 4527B2337A3
	for <lists+driverdev-devel@lfdr.de>; Thu, 30 Jul 2020 19:26:03 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 5E9AE2052D;
	Thu, 30 Jul 2020 17:26:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id cD6ysaAgfcpP; Thu, 30 Jul 2020 17:25:59 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id D846B2107A;
	Thu, 30 Jul 2020 17:25:57 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id AF86C1BF3A1
 for <devel@linuxdriverproject.org>; Thu, 30 Jul 2020 17:25:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 991AE2052D
 for <devel@linuxdriverproject.org>; Thu, 30 Jul 2020 17:25:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id pUUJgk1q2ZMz for <devel@linuxdriverproject.org>;
 Thu, 30 Jul 2020 17:25:54 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f66.google.com (mail-wr1-f66.google.com
 [209.85.221.66])
 by silver.osuosl.org (Postfix) with ESMTPS id 2B7C120368
 for <devel@driverdev.osuosl.org>; Thu, 30 Jul 2020 17:25:54 +0000 (UTC)
Received: by mail-wr1-f66.google.com with SMTP id f1so25091499wro.2
 for <devel@driverdev.osuosl.org>; Thu, 30 Jul 2020 10:25:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=broadcom.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=sNCo6OJL+Y5+7WCILwksqAoVSYtXLlNGjRLNsvxRptk=;
 b=AkMCmmdx4ZYztnIqSxTU7eHQ7kz3Bgwfdvyvk3PbB8Ufzi1fnd6wpYsukRza3AjZKO
 f9GrP+jyVuj94/4zxrK7UVD3fTxTX4QTD6xD49ZS3okDsAmexy29Vj0VOeVrFGIWgf9c
 5J0nRQGVZGHveCiYa7R8OIsik4aMGkHCjpHrA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=sNCo6OJL+Y5+7WCILwksqAoVSYtXLlNGjRLNsvxRptk=;
 b=kGjwCO1n9DntHG62z8grNhbjdg692WviBgb12pDabsNKbJuEjOMjHH431rP+veRrxa
 Zn5JuwwOVXRWKppQZD98/ON8OtKx7cJqaqy68F2p9oH4wMAoHYMXlaxZuC5vdqTSNAOo
 E/VbyzT+7FgFdVTZRVQfzo8KITqwa8pWPuvqQgRWWk1GUedrCs5eLL+Ydca8Mrg8Rm5U
 S7vNH4jf8Yl51geJS2xh/NLDavUHMc0BpZ1sphVj2AnRuZjIzIfggarpbbDuP79xBtXg
 1Z8JdIaPtHOcDekN6U7v9xafQvjYA4L9osekP9ix6KXC0PLHYNinkgRPyOyFqGOWY2qf
 TupQ==
X-Gm-Message-State: AOAM530CC0dt5F5LAoD5YWVLf47bM9Dyz00DNID9QQ7owaFQ7aiWmOA8
 P9u4LIeZ/H0tJOGiitNvG7U9BoQ7PMGmgecSDAXkbg==
X-Google-Smtp-Source: ABdhPJxTkYgyrGJD0qoy7N/a5I5qMSrg3FcI44+ukNzAvdEAsGO6nqACjClSIjeMLjqunOwwyXtKLsvE1bArMJ5wOXQ=
X-Received: by 2002:adf:9501:: with SMTP id 1mr27386326wrs.413.1596129952322; 
 Thu, 30 Jul 2020 10:25:52 -0700 (PDT)
MIME-Version: 1.0
References: <20200724203407.16972-1-james.quinlan@broadcom.com>
 <20200724203407.16972-9-james.quinlan@broadcom.com>
 <e0a46f4cd0a603801d343c15d807d0f08c42e900.camel@suse.de>
In-Reply-To: <e0a46f4cd0a603801d343c15d807d0f08c42e900.camel@suse.de>
From: Jim Quinlan <james.quinlan@broadcom.com>
Date: Thu, 30 Jul 2020 13:25:40 -0400
Message-ID: <CA+-6iNzWYvX_7G8=EOMt5X5U8_csymyvDwKVUwRBzw_dF_YYjQ@mail.gmail.com>
Subject: Re: [PATCH v9 08/12] device core: Introduce DMA range map,
 supplanting dma_pfn_offset
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
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
Cc: Rich Felker <dalias@libc.org>,
 "open list:SUPERH" <linux-sh@vger.kernel.org>, David Airlie <airlied@linux.ie>,
 "open list:PCI NATIVE HOST BRIDGE AND ENDPOINT DRIVERS"
 <linux-pci@vger.kernel.org>, Hanjun Guo <guohanjun@huawei.com>,
 "open list:REMOTE PROCESSOR \(REMOTEPROC\) SUBSYSTEM"
 <linux-remoteproc@vger.kernel.org>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Julien Grall <julien.grall@arm.com>,
 Heikki Krogerus <heikki.krogerus@linux.intel.com>,
 "H. Peter Anvin" <hpa@zytor.com>, Will Deacon <will@kernel.org>,
 Christoph Hellwig <hch@lst.de>, Marek Szyprowski <m.szyprowski@samsung.com>,
 "open list:STAGING SUBSYSTEM" <devel@driverdev.osuosl.org>,
 Jean-Philippe Brucker <jean-philippe@linaro.org>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
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
 <devicetree@vger.kernel.org>, Philipp Zabel <p.zabel@pengutronix.de>,
 Arnd Bergmann <arnd@arndb.de>, Suzuki K Poulose <suzuki.poulose@arm.com>,
 Maxime Ripard <mripard@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Borislav Petkov <bp@alien8.de>,
 "open list:DRM DRIVERS FOR ALLWINNER A10" <dri-devel@lists.freedesktop.org>,
 Yong Deng <yong.deng@magewell.com>, Santosh Shilimkar <ssantosh@kernel.org>,
 Bjorn Helgaas <bhelgaas@google.com>, Florian Fainelli <f.fainelli@gmail.com>,
 Thomas Gleixner <tglx@linutronix.de>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 "moderated list:ARM PORT" <linux-arm-kernel@lists.infradead.org>,
 Saravana Kannan <saravanak@google.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Oliver Neukum <oneukum@suse.com>, "Rafael J. Wysocki" <rjw@rjwysocki.net>,
 open list <linux-kernel@vger.kernel.org>,
 Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 "open list:IOMMU DRIVERS" <iommu@lists.linux-foundation.org>,
 "open list:USB SUBSYSTEM" <linux-usb@vger.kernel.org>,
 Stefano Stabellini <sstabellini@kernel.org>, Daniel Vetter <daniel@ffwll.ch>,
 Sudeep Holla <sudeep.holla@arm.com>,
 "open list:ALLWINNER A10 CSI DRIVER" <linux-media@vger.kernel.org>,
 Robin Murphy <robin.murphy@arm.com>,
 "moderated list:BROADCOM BCM2711/BCM2835 ARM ARCHITECTURE"
 <linux-rpi-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Thu, Jul 30, 2020 at 1:05 PM Nicolas Saenz Julienne
<nsaenzjulienne@suse.de> wrote:
>
> Hi Jim,
>
> On Fri, 2020-07-24 at 16:33 -0400, Jim Quinlan wrote:
> >  static void __init of_unittest_pci_dma_ranges(void)
> > diff --git a/drivers/pci/controller/pcie-brcmstb.c b/drivers/pci/controller/pcie-brcmstb.c
> > index bfc2542d54a8..8dacb9d3b7b6 100644
> > --- a/drivers/pci/controller/pcie-brcmstb.c
> > +++ b/drivers/pci/controller/pcie-brcmstb.c
> > @@ -1197,6 +1197,7 @@ static int brcm_pcie_probe(struct platform_device *pdev)
> >       ret = brcm_phy_start(pcie);
> >       if (ret) {
> >               dev_err(pcie->dev, "failed to start phy\n");
> > +             reset_control_assert(pcie->rescal);
> >               return ret;
> >       }
>
> I think this sneaked in from another patch.
Thanks Nicolas.  BTW, at some point will you be able to test my
patchset on the RP4 to see if I broke anything?

Thanks again,
Jim

>
> Regards,
> Nicolas
>
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
