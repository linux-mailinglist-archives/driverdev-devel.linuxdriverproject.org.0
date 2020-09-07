Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F0C32602FE
	for <lists+driverdev-devel@lfdr.de>; Mon,  7 Sep 2020 19:41:35 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 9744885F95;
	Mon,  7 Sep 2020 17:41:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id kxrdC8wfCrsy; Mon,  7 Sep 2020 17:41:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id A7418858D3;
	Mon,  7 Sep 2020 17:41:31 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 4DD881BF2A9
 for <devel@linuxdriverproject.org>; Mon,  7 Sep 2020 17:41:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 4988385F7B
 for <devel@linuxdriverproject.org>; Mon,  7 Sep 2020 17:41:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id oY2NjVzhW5OH for <devel@linuxdriverproject.org>;
 Mon,  7 Sep 2020 17:41:28 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f67.google.com (mail-wr1-f67.google.com
 [209.85.221.67])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 820E7858D3
 for <devel@driverdev.osuosl.org>; Mon,  7 Sep 2020 17:41:28 +0000 (UTC)
Received: by mail-wr1-f67.google.com with SMTP id t10so16622070wrv.1
 for <devel@driverdev.osuosl.org>; Mon, 07 Sep 2020 10:41:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=broadcom.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=rHGYVkxYS60WZk1ycaZTu9OulhwPL+8esbweerGpy7k=;
 b=AZ96zjGbG7a7wuUVpaDPYj8JXPMt7b7qf/ra3PxzflA4NgXh4nUdl2R7vpKoP4j8It
 RlsiisM7HzGncdjr6TGL1uAS/Wmdi/aO9JjQjL/jz7GNWM9a5NK+deM1OoTwJ21JSmYw
 ptximW6JwBhi/guwRqtMIYLzZYMBs6K8ztM/Y=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=rHGYVkxYS60WZk1ycaZTu9OulhwPL+8esbweerGpy7k=;
 b=lV+fLshMk9e9bfiaubA3sMoU8WeE+uuui7qFHiMtIL8I6GqMaaRh3vMAMqszGKb9nJ
 TnsHZHAEFYYafwm4e6S/oXPHOSL748v2LVzNPOF5xGP9c+trS/YSbgWE83FGaeV5TzFz
 ycKm0zR8Q4r+CreY33KHwy9ZTKuKP0GosFij0Gm8Yi95xA1oGjiz2GvfSwtMjiSiqv4v
 BPbNuqR6i5Pzq8vD+/y/9PMdapdBGn2OuV2Cv4CRR/KBnVVZw69ZeRrYsgf1Mwx0I6Jh
 /Whv5jeJSO0QGwRr/VqHEteZg/2MD/VSBFK67qurguPl4mixSwysafxpfOXRLlLiCeAD
 /Ttw==
X-Gm-Message-State: AOAM531BbZ2yUtkWGFXG336bMt2Oo5f1WCO9BUU62OecLL6NzCy+NUBq
 gOHQJ2G9wWBdfa/JUmuSCJW/8Udyb3WRwiu7Qz+DBw==
X-Google-Smtp-Source: ABdhPJyFFWW1gj/q6K14EJPZRWoqSxb/LSs8EMxgY5O2pZAvlYCEPsYis0BRj0ezhvc4FPix6FqGDt89laPjR1P95cY=
X-Received: by 2002:adf:fcc7:: with SMTP id f7mr22326510wrs.274.1599500486569; 
 Mon, 07 Sep 2020 10:41:26 -0700 (PDT)
MIME-Version: 1.0
References: <20200824193036.6033-1-james.quinlan@broadcom.com>
 <20200824193036.6033-8-james.quinlan@broadcom.com>
 <20200902215314.GA881878@ubuntu-n2-xlarge-x86>
 <CA+-6iNzc38OAL7TGxobpODKXOD1CW-VFNU0rK9Z043QfR3MfsQ@mail.gmail.com>
 <20200902223852.GA1786990@ubuntu-n2-xlarge-x86>
 <6922bc0b-1849-2f2f-ec2f-fe9f0124dcfc@gmail.com>
 <20200903005240.GA1118@Ryzen-9-3900X.localdomain>
 <CA+-6iNyv_sFJOxDi5OcYNWe=ovLnOnrZNsWFQk5b-bzQzA8T_Q@mail.gmail.com>
 <34aa0d6094e7d6fb3492d2cda0fec8ecc04790ed.camel@suse.de>
In-Reply-To: <34aa0d6094e7d6fb3492d2cda0fec8ecc04790ed.camel@suse.de>
From: Jim Quinlan <james.quinlan@broadcom.com>
Date: Mon, 7 Sep 2020 13:40:46 -0400
Message-ID: <CA+-6iNyJ3ey0zPKj9nh8uL3AwTBhJqgD01wc=7G4NF35NXmV1Q@mail.gmail.com>
Subject: Re: [PATCH v11 07/11] device-mapping: Introduce DMA range map,
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
 "open list:REMOTE PROCESSOR REMOTEPROC SUBSYSTEM"
 <linux-remoteproc@vger.kernel.org>,
 "open list:DRM DRIVERS FOR ALLWINNER A10" <dri-devel@lists.freedesktop.org>,
 Julien Grall <julien.grall@arm.com>, "H. Peter Anvin" <hpa@zytor.com>,
 Will Deacon <will@kernel.org>, Christoph Hellwig <hch@lst.de>,
 "open list:STAGING SUBSYSTEM" <devel@driverdev.osuosl.org>,
 Jean-Philippe Brucker <jean-philippe@linaro.org>,
 Florian Fainelli <f.fainelli@gmail.com>,
 Yoshinori Sato <ysato@users.sourceforge.jp>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 Frank Rowand <frowand.list@gmail.com>,
 "maintainer:X86 ARCHITECTURE 32-BIT AND 64-BIT" <x86@kernel.org>,
 Russell King <linux@armlinux.org.uk>,
 "open list:ACPI FOR ARM64 ACPI/arm64" <linux-acpi@vger.kernel.org>,
 Chen-Yu Tsai <wens@csie.org>, Ingo Molnar <mingo@redhat.com>,
 "maintainer:BROADCOM BCM7XXX ARM ARCHITECTURE"
 <bcm-kernel-feedback-list@broadcom.com>,
 Alan Stern <stern@rowland.harvard.edu>, Len Brown <lenb@kernel.org>,
 Ohad Ben-Cohen <ohad@wizery.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE"
 <devicetree@vger.kernel.org>, Mauro Carvalho Chehab <mchehab@kernel.org>,
 Dan Williams <dan.j.williams@intel.com>, Maxime Ripard <mripard@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Borislav Petkov <bp@alien8.de>,
 Yong Deng <yong.deng@magewell.com>, Santosh Shilimkar <ssantosh@kernel.org>,
 Bjorn Helgaas <bhelgaas@google.com>,
 Nathan Chancellor <natechancellor@gmail.com>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 "moderated list:ARM PORT" <linux-arm-kernel@lists.infradead.org>,
 Felipe Balbi <balbi@kernel.org>, Saravana Kannan <saravanak@google.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 "open list:USB SUBSYSTEM" <linux-usb@vger.kernel.org>,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>,
 open list <linux-kernel@vger.kernel.org>,
 Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 "open list:IOMMU DRIVERS" <iommu@lists.linux-foundation.org>,
 Thomas Gleixner <tglx@linutronix.de>,
 Stefano Stabellini <sstabellini@kernel.org>, Daniel Vetter <daniel@ffwll.ch>,
 Sudeep Holla <sudeep.holla@arm.com>,
 "open list:ALLWINNER A10 CSI DRIVER" <linux-media@vger.kernel.org>,
 Robin Murphy <robin.murphy@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Mon, Sep 7, 2020 at 11:01 AM Nicolas Saenz Julienne
<nsaenzjulienne@suse.de> wrote:
>
> Hi Jim, sorry I'm a little late to the party, but was on vacation.
>
> On Thu, 2020-09-03 at 13:32 -0400, Jim Quinlan wrote:
> > On Wed, Sep 2, 2020 at 8:52 PM Nathan Chancellor
> > <natechancellor@gmail.com> wrote:
> > > On Wed, Sep 02, 2020 at 05:36:29PM -0700, Florian Fainelli wrote:
> > > >
> > > > On 9/2/2020 3:38 PM, Nathan Chancellor wrote:
> > > > [snip]
> > > > > > Hello Nathan,
> > > > > >
> > > > > > Can you tell me how much memory your RPI has and if all of it is
> > > > >
> > > > > This is the 4GB version.
> > > > >
> > > > > > accessible by the PCIe device?  Could you also please include the DTS
> > > > > > of the PCIe node?  IIRC, the RPI firmware does some mangling of the
> > > > > > PCIe DT before Linux boots -- could you describe what is going on
> > > > > > there?
> > > > >
> > > > > Unfortunately, I am not familiar with how to get this information. If
> > > > > you could provide some instructions for how to do so, I am more than
> > > > > happy to. I am not very knowleagable about the inner working of the Pi,
> > > > > I mainly use it as a test platform for making sure that LLVM does not
> > > > > cause problems on real devices.
> > > >
> > > > Can you bring the dtc application to your Pi root filesystem, and if so, can
> > > > you run the following:
> > > >
> > > > dtc -I fs -O dtb /proc/device-tree -f > /tmp/device.dtb
> > >
> > > Sure, the result is attached.
> > >
> > > > or cat /sys/firmware/fdt > device.dtb
> > > >
> > > > and attach the resulting file?
> > > >
> > > > > > Finally, can you attach the text of the full boot log?
> > > > >
> > > > > I have attached a working and broken boot log. Thank you for the quick
> > > > > response!
> > > >
> > > > Is it possible for you to rebuild your kernel with CONFIG_MMC_DEBUG by any
> > > > chance?
> > >
> > > Of course. A new log is attached with the debug output from that config.
> >
> > Hi Nicolas,
> >
> > Can you please help us out here?  It appears that your commit
>
> It's dma_offset_from_dma_addr() that's causing trouble. It goes over all the
> dma regions and, if no region matches the phys address range, it returns 0.
> This isn't acceptable as is. In the past, we used to pass the offset
> nonetheless, which would make the phys address grow out of the dma memory area
> and fail the dma_capable() test.
>
> For example, RPi4 devices attached to the old interconnect see phys [0x0
> 0x3fffffff] at [0xc0000000 0xffffffff]. So say you're trying to convert
> physical address 0xfa000000, you'll get 0 from dma_offset_from_phys_addr()
> (since your dma range only covers the first GB) to then test if 0xfa000000 is
> dma_capable(), which it is, but for the wrong reasons. Causing DMA issues
> further down the line.
>
> I don't have a proper suggestion on how to solve this but here's the solution I
> used:
>
> diff --git a/include/linux/dma-mapping.h b/include/linux/dma-mapping.h
> index 4c4646761afe..40fe3c97f2be 100644
> --- a/include/linux/dma-mapping.h
> +++ b/include/linux/dma-mapping.h
> @@ -217,11 +217,19 @@ static inline u64 dma_offset_from_phys_addr(struct device *dev,
>  {
>         const struct bus_dma_region *m = dev->dma_range_map;
>
> -       if (m)
> +       if (m) {
>                 for (; m->size; m++)
>                         if (paddr >= m->cpu_start &&
>                             paddr - m->cpu_start < m->size)
>                                 return m->offset;
> +
> +               /*
> +                * The physical address doesn't fit any of the DMA regions,
> +                * return an impossible to fulfill offset.
> +                */
> +               return -(1ULL << 46);
> +       }
> +
>         return 0;
>  }
Hi Nicolas,

Thanks for looking into this.  The concern I have with your solution
is that returning an arbitrarily large offset might overlap with an
improbable but valid usage.  AFAIK there is nothing that disallows
mapping a device to anywhere within the 64bit range of PCIe space,
including up to say 0xffffffffffffffff.

As an alternative perhaps changing dma_capable() so that if the
dma_range_map is present then it validates that both ends of the
prospective DMA region get "hits" on one of the offset regions in the
map.  Christoph, if you are okay with this I can quickly post a patch.

Regards,
Jim Quinlan
Broadcom STB


>
> I didn't catch this on my previous tests as I was using a newer bcm2711 SoC
> revision which expanded emmc2's DMA capabilities (can do 32 bit DMA as opposed
> to 30 bit).
>
> Regards,
> Nicolas
>
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
