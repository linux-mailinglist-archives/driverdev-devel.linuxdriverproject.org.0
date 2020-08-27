Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id B6D7F2545ED
	for <lists+driverdev-devel@lfdr.de>; Thu, 27 Aug 2020 15:30:26 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 35D4020C92;
	Thu, 27 Aug 2020 13:30:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ZGXA0wQ8KqXb; Thu, 27 Aug 2020 13:30:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id A46CC20526;
	Thu, 27 Aug 2020 13:30:17 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id F321A1BF865
 for <devel@linuxdriverproject.org>; Thu, 27 Aug 2020 13:30:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id EF51A8636D
 for <devel@linuxdriverproject.org>; Thu, 27 Aug 2020 13:30:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id HHW9YMvZYQvX for <devel@linuxdriverproject.org>;
 Thu, 27 Aug 2020 13:30:13 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f66.google.com (mail-wr1-f66.google.com
 [209.85.221.66])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 271AA848AA
 for <devel@driverdev.osuosl.org>; Thu, 27 Aug 2020 13:30:13 +0000 (UTC)
Received: by mail-wr1-f66.google.com with SMTP id c15so5376891wrs.11
 for <devel@driverdev.osuosl.org>; Thu, 27 Aug 2020 06:30:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=broadcom.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=p33Zl85F48xSFFwh9Fvb6fYwVy/Jt4DGVFmz86MHbko=;
 b=CUujgUZRienGvENy9ZeNSE4OLq/gTozkw9vqhnndn3e+Pp27upZYxzcOy348qWT4x6
 fZ9HzhrGd6ok0/lpV6XJMXIHbIrfSS3H2kc5d+JTd1lletPZjVOkUQ8WZMoDnSSylgRw
 zOHH0JLxrQJsHR8v5+SGQOGgwwu7dIE6xp9Po=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=p33Zl85F48xSFFwh9Fvb6fYwVy/Jt4DGVFmz86MHbko=;
 b=nk+P70OsNXdhTft57UDlt4OS4xRP4aQdLghc5odPqRM4kRxFh06/9lT55amwe/TxSy
 cTIsX3UdoGtYF766/6lmN7taHXrgnSNZxJtiIoaegyz/MrnkOVBF4h6BwVgT9ceNW9M7
 RJ72pBea6Q/8BMPCOvtyar3+RVUhptHJOlVbwjouqxpXtOgLUb9vDssE6bpm+IK4rMiu
 d+MrIrC/UN8gt0c+Rpsw3kCAyPDwOCCk56IrunP/GdML3cjm7nGhfzdirp2IeMoZhdMP
 jQDPFmbHK5HlHCM9CLPhpQAWhLUjdqFgB0baspuF5OGr42arbbBwQ85m1TDqSsAJ/xNv
 XhsQ==
X-Gm-Message-State: AOAM533O+eJRlJGzayacH4bzElVpGp/cb8BWIAhkFk89vG9Nry2Zn9ys
 9nIkP6to7+ja6mnWQYzE7mLn74gwSBd0Cq5SWatp3A==
X-Google-Smtp-Source: ABdhPJyMtaFishcwtzNCj7DHN/faPMoK+tSF7O0vKJaBGS+gpAIRdF6geUez9pCQeleah1w6P5SJ7nzMgTS0KKpMqRI=
X-Received: by 2002:adf:bb54:: with SMTP id x20mr19609148wrg.413.1598535011238; 
 Thu, 27 Aug 2020 06:30:11 -0700 (PDT)
MIME-Version: 1.0
References: <20200824193036.6033-1-james.quinlan@broadcom.com>
 <b19bc982-a0c4-c6ff-d8f5-650f2b3a83c8@gmail.com>
 <20200827063517.GA4637@lst.de>
In-Reply-To: <20200827063517.GA4637@lst.de>
From: Jim Quinlan <james.quinlan@broadcom.com>
Date: Thu, 27 Aug 2020 09:29:59 -0400
Message-ID: <CA+-6iNy3U9pO0Bykzgvb9n9fcsBi6FiatLdpA1s0HgQNWZ49mg@mail.gmail.com>
Subject: Re: [PATCH v11 00/11] PCI: brcmstb: enable PCIe for STB chips
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
Cc: "open list:SUPERH" <linux-sh@vger.kernel.org>,
 "open list:PCI NATIVE HOST BRIDGE AND ENDPOINT DRIVERS"
 <linux-pci@vger.kernel.org>,
 "open list:REMOTE PROCESSOR \(REMOTEPROC\) SUBSYSTEM"
 <linux-remoteproc@vger.kernel.org>,
 "open list:DRM DRIVERS FOR ALLWINNER A10" <dri-devel@lists.freedesktop.org>,
 Julien Grall <julien.grall@arm.com>, "H. Peter Anvin" <hpa@zytor.com>,
 "open list:STAGING SUBSYSTEM" <devel@driverdev.osuosl.org>,
 Rob Herring <robh@kernel.org>, Florian Fainelli <f.fainelli@gmail.com>,
 Saravana Kannan <saravanak@google.com>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 "Rafael J. Wysocki" <rafael@kernel.org>,
 "open list:ACPI FOR ARM64 \(ACPI/arm64\)" <linux-acpi@vger.kernel.org>,
 Alan Stern <stern@rowland.harvard.edu>,
 "maintainer:BROADCOM BCM7XXX ARM ARCHITECTURE"
 <bcm-kernel-feedback-list@broadcom.com>,
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

On Thu, Aug 27, 2020 at 2:35 AM Christoph Hellwig <hch@lst.de> wrote:
>
> On Tue, Aug 25, 2020 at 10:40:27AM -0700, Florian Fainelli wrote:
> > Hi,
> >
> > On 8/24/2020 12:30 PM, Jim Quinlan wrote:
> >>
> >> Patchset Summary:
> >>    Enhance a PCIe host controller driver.  Because of its unusual design
> >>    we are foced to change dev->dma_pfn_offset into a more general role
> >>    allowing multiple offsets.  See the 'v1' notes below for more info.
> >
> > We are version 11 and counting, and it is not clear to me whether there is
> > any chance of getting these patches reviewed and hopefully merged for the
> > 5.10 merge window.
> >
> > There are a lot of different files being touched, so what would be the
> > ideal way of routing those changes towards inclusion?
>
> FYI, I offered to take the dma-mapping bits through the dma-mapping tree.
> I have a bit of a backlog, but plan to review and if Jim is ok with that
> apply the current version.
Sounds good to me.
Thanks, Jim
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
