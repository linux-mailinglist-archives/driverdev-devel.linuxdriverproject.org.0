Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id DF65C260317
	for <lists+driverdev-devel@lfdr.de>; Mon,  7 Sep 2020 19:44:09 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 8081C87134;
	Mon,  7 Sep 2020 17:44:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id vrRGDTWYygnz; Mon,  7 Sep 2020 17:44:07 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id DB369870BE;
	Mon,  7 Sep 2020 17:44:06 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id B85501BF306
 for <devel@linuxdriverproject.org>; Mon,  7 Sep 2020 17:44:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id B4978870BE
 for <devel@linuxdriverproject.org>; Mon,  7 Sep 2020 17:44:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ZQ4jTswXho6i for <devel@linuxdriverproject.org>;
 Mon,  7 Sep 2020 17:44:04 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f65.google.com (mail-wm1-f65.google.com
 [209.85.128.65])
 by hemlock.osuosl.org (Postfix) with ESMTPS id E227981D4C
 for <devel@driverdev.osuosl.org>; Mon,  7 Sep 2020 17:44:03 +0000 (UTC)
Received: by mail-wm1-f65.google.com with SMTP id e17so15052845wme.0
 for <devel@driverdev.osuosl.org>; Mon, 07 Sep 2020 10:44:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=broadcom.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=TtLg9Y4dgEBmAcytToxU0LrQsMgfNF7OgoEHJZ2Q+vw=;
 b=A0Stn/cyvojbDX7w3lzbvMIO7gTwe43sZAGbFpuAEdS5sHSClH8/IZ2AifZ+YY+VOX
 UVwM/aA+6tWtgJSEoCDO1PW617SUSIQB8k6b0bPqqeB7dxfGKJQUxNBeFtcQo9e3Ascw
 6zhcNnrpuccjT086HR4puL61ghnrcI3EOoQm8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=TtLg9Y4dgEBmAcytToxU0LrQsMgfNF7OgoEHJZ2Q+vw=;
 b=FT1uKtNUSlagXWeGyJJ94ltxQCrmDr4+ds/WBL/IBp4/M9jF8VKuwqDqQ4VUnKoy1L
 NJaPgrjrunwBRX4Mtfj6/Xzr7fmYXLkf65Q7vY4uLygh1+SX1fnYf6r1cOWYN0Nfs8zZ
 Pt9BCXw9OmDvyok+ZG3NV58FKQptyjbVX4ln2Mv4J8tR7DKZV0vkp0n+VB/LWZ9AEsR0
 NRU9U30kbsK3XjXRd/hF0SM/yjjJHXR+FsPUZcVTiEyg1o4CwUyCVAbj0hI+912sQk88
 YYR2yO+RTmzTuu0sbubOLoX2v87vCCvwWaIsr9jO5x4gpzmexVYIbMn/DI3dylTBtFbb
 V4UQ==
X-Gm-Message-State: AOAM530ADxvpgF6B9q3VYvUF8tE/Z11ri1n6nDzkz08ZbQZyeif23LhR
 VFjx+WX628+Cn/DpC+5tWSgvHGV4Cyq+tt4cd1RKrQ==
X-Google-Smtp-Source: ABdhPJyNQsBm1Y3/ieHSfjO664M9CBhnY/ZnuJjayy1tYR+ob0ku/Wpd26F5nf8H2/xl9/84D4TcAGvzrj4IPjrxwfU=
X-Received: by 2002:a1c:bad5:: with SMTP id k204mr408820wmf.111.1599500642170; 
 Mon, 07 Sep 2020 10:44:02 -0700 (PDT)
MIME-Version: 1.0
References: <20200824193036.6033-1-james.quinlan@broadcom.com>
 <b19bc982-a0c4-c6ff-d8f5-650f2b3a83c8@gmail.com>
 <20200827063517.GA4637@lst.de>
 <CA+-6iNy3U9pO0Bykzgvb9n9fcsBi6FiatLdpA1s0HgQNWZ49mg@mail.gmail.com>
 <20200907091649.GA6428@e121166-lin.cambridge.arm.com>
In-Reply-To: <20200907091649.GA6428@e121166-lin.cambridge.arm.com>
From: Jim Quinlan <james.quinlan@broadcom.com>
Date: Mon, 7 Sep 2020 13:43:23 -0400
Message-ID: <CA+-6iNzoz3pM2pJksXogeuou6wB9W-59rN-amCLERFLuY5zLMg@mail.gmail.com>
Subject: Re: [PATCH v11 00/11] PCI: brcmstb: enable PCIe for STB chips
To: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
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
Cc: "open list:SUPERH" <linux-sh@vger.kernel.org>,
 "open list:PCI NATIVE HOST BRIDGE AND ENDPOINT DRIVERS"
 <linux-pci@vger.kernel.org>,
 "open list:REMOTE PROCESSOR \(REMOTEPROC\) SUBSYSTEM"
 <linux-remoteproc@vger.kernel.org>,
 "open list:DRM DRIVERS FOR ALLWINNER A10" <dri-devel@lists.freedesktop.org>,
 Julien Grall <julien.grall@arm.com>, "H. Peter Anvin" <hpa@zytor.com>,
 Christoph Hellwig <hch@lst.de>,
 "open list:STAGING SUBSYSTEM" <devel@driverdev.osuosl.org>,
 Rob Herring <robh@kernel.org>, Florian Fainelli <f.fainelli@gmail.com>,
 Saravana Kannan <saravanak@google.com>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 "Rafael J. Wysocki" <rafael@kernel.org>,
 "open list:ACPI FOR ARM64 \(ACPI/arm64\)" <linux-acpi@vger.kernel.org>,
 "maintainer:BROADCOM BCM7XXX ARM ARCHITECTURE"
 <bcm-kernel-feedback-list@broadcom.com>,
 Alan Stern <stern@rowland.harvard.edu>,
 "open list:ALLWINNER A10 CSI DRIVER" <linux-media@vger.kernel.org>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE"
 <devicetree@vger.kernel.org>, Joerg Roedel <jroedel@suse.de>,
 Stefano Stabellini <sstabellini@kernel.org>,
 "moderated list:BROADCOM BCM2711/BCM2835 ARM ARCHITECTURE"
 <linux-rpi-kernel@lists.infradead.org>,
 Dan Williams <dan.j.williams@intel.com>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 "moderated list:ARM PORT" <linux-arm-kernel@lists.infradead.org>,
 Felipe Balbi <balbi@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 "open list:USB SUBSYSTEM" <linux-usb@vger.kernel.org>,
 open list <linux-kernel@vger.kernel.org>,
 "open list:IOMMU DRIVERS" <iommu@lists.linux-foundation.org>,
 Robin Murphy <robin.murphy@arm.com>,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Mon, Sep 7, 2020 at 5:16 AM Lorenzo Pieralisi
<lorenzo.pieralisi@arm.com> wrote:
>
> On Thu, Aug 27, 2020 at 09:29:59AM -0400, Jim Quinlan wrote:
> > On Thu, Aug 27, 2020 at 2:35 AM Christoph Hellwig <hch@lst.de> wrote:
> > >
> > > On Tue, Aug 25, 2020 at 10:40:27AM -0700, Florian Fainelli wrote:
> > > > Hi,
> > > >
> > > > On 8/24/2020 12:30 PM, Jim Quinlan wrote:
> > > >>
> > > >> Patchset Summary:
> > > >>    Enhance a PCIe host controller driver.  Because of its unusual design
> > > >>    we are foced to change dev->dma_pfn_offset into a more general role
> > > >>    allowing multiple offsets.  See the 'v1' notes below for more info.
> > > >
> > > > We are version 11 and counting, and it is not clear to me whether there is
> > > > any chance of getting these patches reviewed and hopefully merged for the
> > > > 5.10 merge window.
> > > >
> > > > There are a lot of different files being touched, so what would be the
> > > > ideal way of routing those changes towards inclusion?
> > >
> > > FYI, I offered to take the dma-mapping bits through the dma-mapping tree.
> > > I have a bit of a backlog, but plan to review and if Jim is ok with that
> > > apply the current version.
> > Sounds good to me.
>
> Hi Jim,
>
> is the dependency now solved ? Should we review/take this series as
> is for v5.10 through the PCI tree ?
Hello Lorenzo,

We are still working out a regression with the DMA offset commit on
the RaspberryPi.  Nicolas has found the root cause and we are now
devising a solution.

Thanks,
Jim Quinlan
Broadcom STB

>
> Thanks,
> Lorenzo
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
