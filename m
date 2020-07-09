Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id AE83A21A0DE
	for <lists+driverdev-devel@lfdr.de>; Thu,  9 Jul 2020 15:28:22 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 4976C89100;
	Thu,  9 Jul 2020 13:28:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id yj3VMjNFGA2Y; Thu,  9 Jul 2020 13:28:20 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 477EB88D41;
	Thu,  9 Jul 2020 13:28:20 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id B3E6A1BF400
 for <devel@linuxdriverproject.org>; Thu,  9 Jul 2020 13:28:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 968788621D
 for <devel@linuxdriverproject.org>; Thu,  9 Jul 2020 13:27:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id vOjxFRqqe6Jr for <devel@linuxdriverproject.org>;
 Thu,  9 Jul 2020 13:27:21 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f67.google.com (mail-wr1-f67.google.com
 [209.85.221.67])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id E2D40860F9
 for <devel@driverdev.osuosl.org>; Thu,  9 Jul 2020 13:27:20 +0000 (UTC)
Received: by mail-wr1-f67.google.com with SMTP id f7so2381739wrw.1
 for <devel@driverdev.osuosl.org>; Thu, 09 Jul 2020 06:27:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=broadcom.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=mWaS66ErLv63ISCBUv8Nr9+dmGgRCUtKHJMxssgE/AI=;
 b=CSHkHm9+F0ACxplsmgNYxr1myHYkKAn1Lpbiz/LCkZ9AKuceusLCQCIn83wvXUXLa2
 FURtCNllrVje+9rih8o1RYY4qf8+GSnJN2VDH2inYDambwg35p0jpUpsJ8UFZPweg3Zz
 VkoegZsvt0AfQk1WDxeI9lxqIFwVtoc6An0vA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=mWaS66ErLv63ISCBUv8Nr9+dmGgRCUtKHJMxssgE/AI=;
 b=bz5YtvExQuBhQvNrWYYq5D0P3OB1r5sgQmNC+EuobygMKGSE7KCfhJo7U7dr/9tJnB
 EiN2zWAsoIM5B1QjlYK62n6ZnOZp9CZsJtOLnnJFfq3PSGSi052HcVrckz7e+g48pP1N
 Z6Vjm6P+8M4w3pf+6G8ybmmb7VPa2PwLOWk/MZE86L3Bfqejp9EEOgDhuFhw4H96qaan
 FVN3nk5Az3FsrI6EbWTQlPOA4R4QW0vFVwzoKU/AGe311M1U+yyZbCP7lAUqVXrPwwE7
 sFgRd/Yrz2LpCCRjIuhjg4GJ57VqfgcuNfftiEeAqRyPzF/Vp4l5gKasnlQoZ3uDRdDM
 r4xg==
X-Gm-Message-State: AOAM533aa0yO6rWAxibv2dZL3rqanrP4li/pJb3CAdamI6QIe63zIIkO
 3wJQXorQFpfUS6BJRUMJKQWYhHat+qp84+uSPecqJg==
X-Google-Smtp-Source: ABdhPJyteHtv7vdDEbgqKCKSc6w9IMCW96FtUoZOjYuTSNpsCwUREsQgtMax8Ea9/qQOrx7ySkJfRSX5QGPcwUqrJm8=
X-Received: by 2002:a5d:4a4f:: with SMTP id v15mr60437347wrs.87.1594301239133; 
 Thu, 09 Jul 2020 06:27:19 -0700 (PDT)
MIME-Version: 1.0
References: <20200708193219.47134-1-james.quinlan@broadcom.com>
 <20200708193219.47134-9-james.quinlan@broadcom.com>
 <20200709103108.GA20255@lst.de>
In-Reply-To: <20200709103108.GA20255@lst.de>
From: Jim Quinlan <james.quinlan@broadcom.com>
Date: Thu, 9 Jul 2020 09:27:06 -0400
Message-ID: <CA+-6iNz8NWuBR=PMiiuROneXY_YhMHCkSzy1qZLfNcHH5B2KQg@mail.gmail.com>
Subject: Re: [PATCH v7 08/12] device core: Introduce DMA range map,
 supplanting dma_pfn_offset
To: Christoph Hellwig <hch@lst.de>
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
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Julien Grall <julien.grall@arm.com>,
 Heikki Krogerus <heikki.krogerus@linux.intel.com>,
 "H. Peter Anvin" <hpa@zytor.com>, Will Deacon <will@kernel.org>,
 Dan Williams <dan.j.williams@intel.com>,
 Marek Szyprowski <m.szyprowski@samsung.com>,
 "open list:STAGING SUBSYSTEM" <devel@driverdev.osuosl.org>,
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
 <devicetree@vger.kernel.org>, Arnd Bergmann <arnd@arndb.de>,
 Suzuki K Poulose <suzuki.poulose@arm.com>, Maxime Ripard <mripard@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Borislav Petkov <bp@alien8.de>,
 "open list:DRM DRIVERS FOR ALLWINNER A10" <dri-devel@lists.freedesktop.org>,
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
 "open list:USB SUBSYSTEM" <linux-usb@vger.kernel.org>,
 Stefano Stabellini <sstabellini@kernel.org>, Daniel Vetter <daniel@ffwll.ch>,
 Sudeep Holla <sudeep.holla@arm.com>,
 "open list:ALLWINNER A10 CSI DRIVER" <linux-media@vger.kernel.org>,
 Robin Murphy <robin.murphy@arm.com>,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi Christoph,

I'm sending all commits to <linux-pci@vger.kernel.org> since most of
them are PCI related.  I don't send all patches to
linux-kernel@vger.kernel.org since I've read it is overused.  The --cc
list is generated by get_maintainer.pl.

IIRC, in a previous discussion you said you preferred NOT to get the
entire patchset by "--to Christoph"  but instead you would pick it off
from one of the "-to " kernel list sites.  It appears that  all
commits made it to the PCI list
(https://www.spinics.net/lists/linux-pci/).

Let me know what you want and I'll make it so.

Regards,
Jim


On Thu, Jul 9, 2020 at 6:31 AM Christoph Hellwig <hch@lst.de> wrote:
>
> I someone seem to get just this patch instead of the full series for
> review again..
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
