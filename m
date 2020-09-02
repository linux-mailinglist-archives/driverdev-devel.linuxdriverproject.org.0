Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id B899225AE4F
	for <lists+driverdev-devel@lfdr.de>; Wed,  2 Sep 2020 17:06:27 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 2C3392E0FB;
	Wed,  2 Sep 2020 15:06:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 2fsvU41gSRGW; Wed,  2 Sep 2020 15:06:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 735662E0EE;
	Wed,  2 Sep 2020 15:03:00 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id D33AE1BF333
 for <devel@linuxdriverproject.org>; Wed,  2 Sep 2020 15:02:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id CEC8E871C1
 for <devel@linuxdriverproject.org>; Wed,  2 Sep 2020 15:02:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id UNzoBO4jyb38 for <devel@linuxdriverproject.org>;
 Wed,  2 Sep 2020 15:02:56 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f66.google.com (mail-wr1-f66.google.com
 [209.85.221.66])
 by hemlock.osuosl.org (Postfix) with ESMTPS id F1992871CA
 for <devel@driverdev.osuosl.org>; Wed,  2 Sep 2020 15:02:55 +0000 (UTC)
Received: by mail-wr1-f66.google.com with SMTP id o5so5572123wrn.13
 for <devel@driverdev.osuosl.org>; Wed, 02 Sep 2020 08:02:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=broadcom.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=ZGIVv2/nKkKWqHnBVOyDTBWflj7dKm5Z1J/YDjsaUtE=;
 b=Z8Lj3TbqKgnf+Tg9Z0P832A14FJMQdIVQJkvmocdIbwtjttKsmDE4r9Qh2gQGw6NZU
 As25toD2CuCYv9eeG56/UbBx2y5/4HM22wP8iqo6rr8paXM5g8MG1OByan9PYMbZAEKD
 bMSSkhriycK9xJEs3VgMHxfmN359bRlL1LuGc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=ZGIVv2/nKkKWqHnBVOyDTBWflj7dKm5Z1J/YDjsaUtE=;
 b=RLLzPTUSVbS/U7jUfMU+eAVIMXYlFaFPylRjx4Kg43bdCWkKeWRlLM2geycCUxQm9k
 iErtZeCg4EC2pYZlby0JxylLTqo2zTasf2V8Sl++GgET3SxNq91Oh5YdmMvFPgqpGlT9
 VZznsr9+zVB2uMj5aGKKSWroA4rzlB+nCvQW5tAz2HaaVWPsV5ze8q8Mc058EqFp83NH
 +KDXvkPnYvy9iQqzCaYTzqX4EfJwF3b3oxxu2sXxgweVwZxdg6QkXM83fLTMnJMTrUtL
 uDArfV77agqz4sQAnxPWAcaksFRCwRGRnBdeLBLPdxDEcCqOIfqlp1dwn2V0OGk/m9w1
 TsNg==
X-Gm-Message-State: AOAM532hWMjSLZJ7BHZ9xaXZNWxSyJ8uRFzqUy9sQvX+ZCMiTKnihfs4
 xv+g2O1oOzBMY63ryfiYmp6UHzQkfGX85IVXnLr0EQ==
X-Google-Smtp-Source: ABdhPJwXlN3NHDVCqgynQUFgcYU8keK6MI5X2Io9fYXPD+Fsy3mNkxkFxRkwEAfYalcTpwO0KXeigTJj+lB1MzHkdrU=
X-Received: by 2002:adf:ba10:: with SMTP id o16mr7576162wrg.100.1599058974152; 
 Wed, 02 Sep 2020 08:02:54 -0700 (PDT)
MIME-Version: 1.0
References: <20200824193036.6033-1-james.quinlan@broadcom.com>
 <20200824193036.6033-8-james.quinlan@broadcom.com>
 <20200901082429.GA1440@lst.de>
In-Reply-To: <20200901082429.GA1440@lst.de>
From: Jim Quinlan <james.quinlan@broadcom.com>
Date: Wed, 2 Sep 2020 11:02:42 -0400
Message-ID: <CA+-6iNw1rSJOjQDDEYdB3Y1S5KOjOULANbmsDVBM4Mr4Uifomw@mail.gmail.com>
Subject: Re: [PATCH v11 07/11] device-mapping: Introduce DMA range map,
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
Cc: Rich Felker <dalias@libc.org>,
 "open list:SUPERH" <linux-sh@vger.kernel.org>, David Airlie <airlied@linux.ie>,
 "open list:PCI NATIVE HOST BRIDGE AND ENDPOINT DRIVERS"
 <linux-pci@vger.kernel.org>, Hanjun Guo <guohanjun@huawei.com>,
 "open list:REMOTE PROCESSOR \(REMOTEPROC\) SUBSYSTEM"
 <linux-remoteproc@vger.kernel.org>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Julien Grall <julien.grall@arm.com>, "H. Peter Anvin" <hpa@zytor.com>,
 Will Deacon <will@kernel.org>, Dan Williams <dan.j.williams@intel.com>,
 Marek Szyprowski <m.szyprowski@samsung.com>,
 "open list:STAGING SUBSYSTEM" <devel@driverdev.osuosl.org>,
 Jean-Philippe Brucker <jean-philippe@linaro.org>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Yoshinori Sato <ysato@users.sourceforge.jp>,
 "open list:ACPI FOR ARM64 \(ACPI/arm64\)" <linux-acpi@vger.kernel.org>,
 Frank Rowand <frowand.list@gmail.com>, Joerg Roedel <joro@8bytes.org>,
 "maintainer:X86 ARCHITECTURE \(32-BIT AND 64-BIT\)" <x86@kernel.org>,
 Russell King <linux@armlinux.org.uk>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>, Chen-Yu Tsai <wens@csie.org>,
 Ingo Molnar <mingo@redhat.com>,
 "maintainer:BROADCOM BCM7XXX ARM ARCHITECTURE"
 <bcm-kernel-feedback-list@broadcom.com>,
 Alan Stern <stern@rowland.harvard.edu>, Len Brown <lenb@kernel.org>,
 Ohad Ben-Cohen <ohad@wizery.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE"
 <devicetree@vger.kernel.org>, Maxime Ripard <mripard@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Borislav Petkov <bp@alien8.de>,
 "open list:DRM DRIVERS FOR ALLWINNER A10" <dri-devel@lists.freedesktop.org>,
 Yong Deng <yong.deng@magewell.com>, Santosh Shilimkar <ssantosh@kernel.org>,
 Bjorn Helgaas <bhelgaas@google.com>, Thomas Gleixner <tglx@linutronix.de>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 "moderated list:ARM PORT" <linux-arm-kernel@lists.infradead.org>,
 Felipe Balbi <balbi@kernel.org>, Saravana Kannan <saravanak@google.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 "open list:USB SUBSYSTEM" <linux-usb@vger.kernel.org>,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>,
 open list <linux-kernel@vger.kernel.org>,
 Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 "open list:IOMMU DRIVERS" <iommu@lists.linux-foundation.org>,
 Stefano Stabellini <sstabellini@kernel.org>, Daniel Vetter <daniel@ffwll.ch>,
 Sudeep Holla <sudeep.holla@arm.com>,
 "open list:ALLWINNER A10 CSI DRIVER" <linux-media@vger.kernel.org>,
 Robin Murphy <robin.murphy@arm.com>,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Tue, Sep 1, 2020 at 4:24 AM Christoph Hellwig <hch@lst.de> wrote:
>
> I've applied this to the dma-mapping tree.
>
> I had to resolve a conflict in drivers/of/address.c with a recent
> mainline commit.  I also applied the minor tweaks Andy pointed out
> plus a few more style changes.  A real change is that I changed the
> prototype for dma_copy_dma_range_map to require less boilerplate code.
>
> The result is here:
>
>     http://git.infradead.org/users/hch/dma-mapping.git/commitdiff/eef520b232c60e74eb8b33a5a7863ad8f2b4a5c7
>
> please double check that everyting works as expected.
Tested-by: Jim Quinlan <james.quinlan@broadcom.com>

Thanks Christoph
Jim
>
> I can cut a stable branch with this if you need it for other trees, but
> I'd like to wait a few days to see if there is any fallout first.
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
