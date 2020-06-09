Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 050311F3B88
	for <lists+driverdev-devel@lfdr.de>; Tue,  9 Jun 2020 15:14:18 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id A43D386E77;
	Tue,  9 Jun 2020 13:14:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id aS0hCam6n9mD; Tue,  9 Jun 2020 13:14:15 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 4B8A386DF0;
	Tue,  9 Jun 2020 13:14:14 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 6C10C1BF5AA
 for <devel@linuxdriverproject.org>; Tue,  9 Jun 2020 13:14:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 66FC881AEC
 for <devel@linuxdriverproject.org>; Tue,  9 Jun 2020 13:14:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Y+ZS7IRexWAg for <devel@linuxdriverproject.org>;
 Tue,  9 Jun 2020 13:14:11 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f67.google.com (mail-wm1-f67.google.com
 [209.85.128.67])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 86179815D8
 for <devel@driverdev.osuosl.org>; Tue,  9 Jun 2020 13:14:11 +0000 (UTC)
Received: by mail-wm1-f67.google.com with SMTP id c71so2778647wmd.5
 for <devel@driverdev.osuosl.org>; Tue, 09 Jun 2020 06:14:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=broadcom.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=edVNPE5DX3OyCq+2fyjI6ylHeS+GOPrCyMzTtU1/fzY=;
 b=gDaD4KM/t8KX5Al7J/BjBhHccNF2kg3Pg0xh6Ed7ue9e77HSVyYvClYpogccUWVa0o
 sqMFc5fMJ7AvbB7JFU4K1yuD3yD/zO0J0V9y9SHUHDSSvISS8BVLyTPvZRaUOKotLugh
 kY/jDSW0d+ynzLoQkWgw09J4fzf/weK6pnQL0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=edVNPE5DX3OyCq+2fyjI6ylHeS+GOPrCyMzTtU1/fzY=;
 b=bm/Ah89bPRVwtC6ymmMIK8fSL1RI1YQlx/I5gUPROZAYx9ymD7p5E7uJIpL3HUXCKx
 5UY/pjrHRFKYUwizLD5dQA9nZlDFnhTYLEdubLfCQ7NQDsc13ft0k6Q3cOJJhWOTcZao
 lvWqiuoYxF9GMHacdYRvjOWSKaEimIc0mRD3n/fqbELedLIqRE4tnLwz/b3nkoUGEbAq
 t+XpwGxR8I4AA2pmWb0BRBRRcNFkqLbd14cwfPwHrYOuUMil5ndyiy4sEP0HakUGDO6Z
 EUyCkUqWaKsnx+pFcmlG6A6gQyXKeKww6kq9GRLXr2PokP2ZblEIOB78cQ99+FT+xAA6
 QquA==
X-Gm-Message-State: AOAM531/g4Pten8UlR1P7ttjy59vHMmXVPzSD6NAE42j9SOfYhNtWUMl
 F5FNZrgcdZUeaa2tmsXR0hvhCbNyajm/5+kwPJkEPQ==
X-Google-Smtp-Source: ABdhPJwjOaQHBYP5HBHod5WDWXLMU0/xp0eCkWKGBg/hRiGblG95btpxH0ojmWyIZmWbwAeUqcEutxDqrlqPy0PnDd4=
X-Received: by 2002:a1c:7305:: with SMTP id d5mr4103395wmb.85.1591708448748;
 Tue, 09 Jun 2020 06:14:08 -0700 (PDT)
MIME-Version: 1.0
References: <20200605212706.7361-1-james.quinlan@broadcom.com>
 <20200605212706.7361-9-james.quinlan@broadcom.com>
 <20200607164950.GX2428291@smile.fi.intel.com>
 <CA+-6iNyL12Z+igSrWnsmTzrwzyyeDtSK-9ULiZe0MwM5LO5bjQ@mail.gmail.com>
 <20200609111828.GI2428291@smile.fi.intel.com>
In-Reply-To: <20200609111828.GI2428291@smile.fi.intel.com>
From: Jim Quinlan <james.quinlan@broadcom.com>
Date: Tue, 9 Jun 2020 09:13:57 -0400
Message-ID: <CA+-6iNxPGKFd84zK3k2SsgZcC=ExR=fPsSM8KAxPDswnjzi7QQ@mail.gmail.com>
Subject: Re: [PATCH v4 08/12] device core: Introduce multiple dma pfn offsets
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

On Tue, Jun 9, 2020 at 7:18 AM Andy Shevchenko
<andriy.shevchenko@linux.intel.com> wrote:
>
> On Mon, Jun 08, 2020 at 11:48:51AM -0400, Jim Quinlan wrote:
> > On Sun, Jun 7, 2020 at 12:500f9bfe0fb8840b268af1bbcc51f1cd440514e PM
> > Andy Shevchenko <andriy.shevchenko@linux.intel.com> wrote:
> > > On Fri, Jun 05, 2020 at 05:26:48PM -0400, Jim Quinlan wrote:
>
> ...
>
> > > > +     *map_size = (num_ranges + 1) * sizeof(**map);
> > > > +     r = kzalloc(*map_size, GFP_KERNEL);
> > >
> > > kcalloc()
> > Since I have to calculate the size anyway I thought kzalloc was fine.
> > I'll switch.
>
> The point is to check multiplication overflow. See overflow.h for helpers.

I am aware of this check and didn't think of it as applicable here, as
the most dma-ranges I can envision is six. I suppose that it is
possible that this may change in the future to some big number.  At
any rate, the next version has kcalloc().

Regards,
Jim
>
>
> > > > +     if (!r)
> > > > +             return -ENOMEM;
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
