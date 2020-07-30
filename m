Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id D90ED233701
	for <lists+driverdev-devel@lfdr.de>; Thu, 30 Jul 2020 18:44:55 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 5B37D884A3;
	Thu, 30 Jul 2020 16:44:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id tbfgdNpsEe+W; Thu, 30 Jul 2020 16:44:53 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 90BE888485;
	Thu, 30 Jul 2020 16:44:52 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id E73011BF239
 for <devel@linuxdriverproject.org>; Thu, 30 Jul 2020 16:44:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id DC02D20763
 for <devel@linuxdriverproject.org>; Thu, 30 Jul 2020 16:44:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Q4B98guTu4ab for <devel@linuxdriverproject.org>;
 Thu, 30 Jul 2020 16:44:48 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f66.google.com (mail-wm1-f66.google.com
 [209.85.128.66])
 by silver.osuosl.org (Postfix) with ESMTPS id 3E9DF20533
 for <devel@driverdev.osuosl.org>; Thu, 30 Jul 2020 16:44:48 +0000 (UTC)
Received: by mail-wm1-f66.google.com with SMTP id k20so6793843wmi.5
 for <devel@driverdev.osuosl.org>; Thu, 30 Jul 2020 09:44:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=broadcom.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=/WGqCOKip3V4asdK4kVZSLuOUEeNBpSCyttBdQXrjyQ=;
 b=RY2n6Td8Tl0tSuExkUbQNpMfcpseBvpu8JkBMp0qVCS5WE6XZPG7426ps4Fr6bN4L8
 zoDJUkr0PIub4rwTuXkmHKJzE2kpPwn9jnoTowyaVoH/1cm4aqdhst+ZgjlGuhEzlf+v
 xahAZmxSN1q5k/z2rddgAhGICd1umbYqK70Yc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=/WGqCOKip3V4asdK4kVZSLuOUEeNBpSCyttBdQXrjyQ=;
 b=e7N0ZY4l/kRjbUkJOlrIYXJaoVapgiFiKAAPMXVpBnH55KSbgYVxlV4QRcWOmfw9pV
 nGXw9GDdQIRO1CF/vnuvFKoSM0fVaKoNjY0Mn2Quevw0462Pk/bq01zI1XoXhjI21mPe
 L+k9d1a7e09YZIo0zNNGmReR7mkF+Z7rtWtKr9ruTVZCyulqyC+zfbQu7UMFi7pL+Iis
 Bd7XSjOquUC/0V/1UFVwuSi1yathGz7mn1TTLD8yel+x22TdEVURvQ/k3gh1g0a+vr2X
 Lal47krkWmLwL8xMseuHU9r9W3+7F4UL8SfmWKvCp/FPc6xJTz5AKccLmNMSzkWs05lm
 G/1Q==
X-Gm-Message-State: AOAM532jOe79ctUtKYbN9Y2v9XeJQmRsIxLes3qbFv3HtWlhoL51SJ6D
 5mOq98avsCHu03EMzRw7OVIHHcLETAwl5nnR2jUisw==
X-Google-Smtp-Source: ABdhPJzPN/Gtn3yixsdd2Lbzp2FrZ7CbcVWH5kFgwvDKBPGWoM/jJv19H1hiW66ZlUHk1XI9xqRJk738HXFPzQ3IVyA=
X-Received: by 2002:a1c:5459:: with SMTP id p25mr121162wmi.85.1596127486364;
 Thu, 30 Jul 2020 09:44:46 -0700 (PDT)
MIME-Version: 1.0
References: <20200724203407.16972-1-james.quinlan@broadcom.com>
 <20200724203407.16972-9-james.quinlan@broadcom.com>
 <CAL_Jsq+9QE_uz+81O-Bm3xycSrJptx0xmwpPdP3x65KG00ugDQ@mail.gmail.com>
 <CA+-6iNwD1ehy6LPJ6gZJjvVeTBXAG_ybhyfUHTCvsDnM-HnmXA@mail.gmail.com>
 <20200729061903.GA31671@lst.de>
 <CAL_JsqLL_ZZFwinJpveybAtHg9KtrYCHgM3gNHero+Xujyd2eg@mail.gmail.com>
In-Reply-To: <CAL_JsqLL_ZZFwinJpveybAtHg9KtrYCHgM3gNHero+Xujyd2eg@mail.gmail.com>
From: Jim Quinlan <james.quinlan@broadcom.com>
Date: Thu, 30 Jul 2020 12:44:33 -0400
Message-ID: <CA+-6iNyi4c+ZUZhe=Zn5qX5GiGQVLR+BOcXmXSJkooX=S9=C0A@mail.gmail.com>
Subject: Re: [PATCH v9 08/12] device core: Introduce DMA range map,
 supplanting dma_pfn_offset
To: Rob Herring <robh+dt@kernel.org>
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
 PCI <linux-pci@vger.kernel.org>, Hanjun Guo <guohanjun@huawei.com>,
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
 Maxime Ripard <mripard@kernel.org>, Florian Fainelli <f.fainelli@gmail.com>,
 Borislav Petkov <bp@alien8.de>,
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
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 "moderated list:BROADCOM BCM2711/BCM2835 ARM ARCHITECTURE"
 <linux-rpi-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Wed, Jul 29, 2020 at 10:28 AM Rob Herring <robh+dt@kernel.org> wrote:
>
> On Wed, Jul 29, 2020 at 12:19 AM Christoph Hellwig <hch@lst.de> wrote:
> >
> > On Tue, Jul 28, 2020 at 02:24:51PM -0400, Jim Quinlan wrote:
> > > I started using devm_kcalloc() but at least two reviewers convinced me
> > > to just use kcalloc().  In addition, when I was using devm_kcalloc()
> > > it was awkward because 'dev' is not available to this function.
> > >
> > > It comes down to whether unbind/binding the device N times is actually
> > > a reasonable usage.  As for my experience I've seen two cases: (1) my
> > > overnight "bind/unbind the PCIe RC driver" script, and we have a
> > > customer who does an unbind/bind as a hail mary to bring back life to
> > > their dead EP device.  If the latter case happens repeatedly, there
> > > are bigger problems.
> >
> > We can't just leak the allocations.  Do you have a pointer to the
> > arguments against managed resources?  I'm generally not a huge fan
> > of the managed resources, but for a case like this they actually seem
> > useful.  If we don't use the managed resources we'll at leat need
> > to explicitly free the resources when freeing the device.
>
> The lifetime for devm_kcalloc may not be what we want here. devm
> allocs are freed on probe fail or remove, not on freeing the device
> (there is a just in case free there too though).

What do you suggest doing as an alternative?

Jim
>
>
> Rob
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
