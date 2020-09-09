Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id E80A926271A
	for <lists+driverdev-devel@lfdr.de>; Wed,  9 Sep 2020 08:21:27 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 9C1A9874E7;
	Wed,  9 Sep 2020 06:21:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id LgVkgY3YxD5h; Wed,  9 Sep 2020 06:21:25 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 1A266874C3;
	Wed,  9 Sep 2020 06:21:25 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 54D141BF616
 for <devel@linuxdriverproject.org>; Wed,  9 Sep 2020 06:21:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 4933120466
 for <devel@linuxdriverproject.org>; Wed,  9 Sep 2020 06:21:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id smdBKEj6G8Qb for <devel@linuxdriverproject.org>;
 Wed,  9 Sep 2020 06:21:21 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-qv1-f68.google.com (mail-qv1-f68.google.com
 [209.85.219.68])
 by silver.osuosl.org (Postfix) with ESMTPS id D54FE20420
 for <devel@driverdev.osuosl.org>; Wed,  9 Sep 2020 06:21:20 +0000 (UTC)
Received: by mail-qv1-f68.google.com with SMTP id j3so976253qvi.7
 for <devel@driverdev.osuosl.org>; Tue, 08 Sep 2020 23:21:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=HxRFrVe2svAg9k1qOVN/TvnVaxcz5TtGTss1+0ijqvI=;
 b=XhPfYcCjcmiGPn1gSituJZ3sPfuPLf2nlrotW/VXoNigfLWjWGpybbDdTjQRHLFkb+
 tz0HMKNoJ+9nrqWPE1weRfPXhadKbP61ie9T5YTl/XDe/2h2KFy3e7FAB/+MgYEP96xi
 BEkWeZbGgdf96BAiFXL0VEI8dkgMMN5ahJrMQHzNcSqZav1cbaK7UvA0K/CfvUS6h4Cz
 8suPSokNUmMZ1x1hnr4fDdGi082S9foxcPWsxFlt+TYe2ScoWIQVn9VT7anUJS/Vbua7
 A7UbKmBgCNzb46ZCMYs0Y/C5DiyPkg0yC9tQup4v3Vx0j1LUrs1X2PKGcC+sObvfCvI3
 NqKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=HxRFrVe2svAg9k1qOVN/TvnVaxcz5TtGTss1+0ijqvI=;
 b=m3OsmcJjK4GMQnL5SA4F/JDt+IFnEcOoePRcjG9dDEqUxyPhVYmR/uTZ5GGlzh/GTj
 tx7onSjMOntiIKYLZ8Iq75/q5vuqiObjIc6YV0av3NaM8lXbWPdSXqn6mwtI89EYwCTP
 J9CCyrIYe3Ta3ACSeaaQz5MeoGZRB03Z0kYzMVtDBgjuUojDmmCtWrgWYnWpI+1+t/h8
 Y+7yhnav4DtaQslLu/CPfyuKA2rnBWEhdIE1JqrHbn2Eb08w9mg0gIjnZ5OuQV/zVdZB
 BKyF0XwNLyV+tzu95NH+nG+GqbDxs47N6UM5jXIt4zW194w3grF4f57CgzHOz9NP3exP
 LQVw==
X-Gm-Message-State: AOAM5328OD8c7Fnm1ijkJWpmDhqxJuSO45EsV0qsbX6W4/xuhWnMOA55
 a1NBPPeREABVlXtvYXq5ucY=
X-Google-Smtp-Source: ABdhPJwpFKIBQ/O+w2JKnmoyfpGMLS9zoa69tCowzs6dL6T1dnV6gKaljU3QYLHfV0gx7qAGFGyawQ==
X-Received: by 2002:a0c:b2d4:: with SMTP id d20mr2680050qvf.1.1599632479542;
 Tue, 08 Sep 2020 23:21:19 -0700 (PDT)
Received: from ubuntu-n2-xlarge-x86 ([2604:1380:45d1:2600::1])
 by smtp.gmail.com with ESMTPSA id w194sm1492781qkb.130.2020.09.08.23.21.17
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 08 Sep 2020 23:21:18 -0700 (PDT)
Date: Tue, 8 Sep 2020 23:21:16 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Christoph Hellwig <hch@lst.de>
Subject: Re: [PATCH v11 07/11] device-mapping: Introduce DMA range map,
 supplanting dma_pfn_offset
Message-ID: <20200909062116.GA761820@ubuntu-n2-xlarge-x86>
References: <20200902223852.GA1786990@ubuntu-n2-xlarge-x86>
 <6922bc0b-1849-2f2f-ec2f-fe9f0124dcfc@gmail.com>
 <20200903005240.GA1118@Ryzen-9-3900X.localdomain>
 <CA+-6iNyv_sFJOxDi5OcYNWe=ovLnOnrZNsWFQk5b-bzQzA8T_Q@mail.gmail.com>
 <34aa0d6094e7d6fb3492d2cda0fec8ecc04790ed.camel@suse.de>
 <CA+-6iNyJ3ey0zPKj9nh8uL3AwTBhJqgD01wc=7G4NF35NXmV1Q@mail.gmail.com>
 <b4761ade39af346eebec917ca2a415c09681542a.camel@suse.de>
 <20200908072935.GA15119@lst.de> <20200908073203.GA15176@lst.de>
 <20200908094345.GA20959@lst.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200908094345.GA20959@lst.de>
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
 Frank Rowand <frowand.list@gmail.com>, Thomas Gleixner <tglx@linutronix.de>,
 "open list:STAGING SUBSYSTEM" <devel@driverdev.osuosl.org>,
 Jean-Philippe Brucker <jean-philippe@linaro.org>,
 Florian Fainelli <f.fainelli@gmail.com>,
 Yoshinori Sato <ysato@users.sourceforge.jp>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>, Will Deacon <will@kernel.org>,
 "maintainer:X86 ARCHITECTURE 32-BIT AND 64-BIT" <x86@kernel.org>,
 Russell King <linux@armlinux.org.uk>,
 "open list:ACPI FOR ARM64 ACPI/arm64" <linux-acpi@vger.kernel.org>,
 Chen-Yu Tsai <wens@csie.org>, Ingo Molnar <mingo@redhat.com>,
 "maintainer:BROADCOM BCM7XXX ARM ARCHITECTURE"
 <bcm-kernel-feedback-list@broadcom.com>,
 Alan Stern <stern@rowland.harvard.edu>, Len Brown <lenb@kernel.org>,
 Ohad Ben-Cohen <ohad@wizery.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE"
 <devicetree@vger.kernel.org>, Jim Quinlan <james.quinlan@broadcom.com>,
 Maxime Ripard <mripard@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Borislav Petkov <bp@alien8.de>, Yong Deng <yong.deng@magewell.com>,
 Santosh Shilimkar <ssantosh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
 Dan Williams <dan.j.williams@intel.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 "moderated list:ARM PORT" <linux-arm-kernel@lists.infradead.org>,
 Felipe Balbi <balbi@kernel.org>, Saravana Kannan <saravanak@google.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 "open list:USB SUBSYSTEM" <linux-usb@vger.kernel.org>,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>,
 open list <linux-kernel@vger.kernel.org>,
 Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
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

On Tue, Sep 08, 2020 at 11:43:45AM +0200, Christoph Hellwig wrote:
> And because I like replying to myself so much, here is a link to the
> version with the arm cleanup patch applied.  Unlike the previous two
> attempts this has at least survived very basic sanity testing:
> 
> http://git.infradead.org/users/hch/misc.git/shortlog/refs/heads/dma-ranges.2

Tested-by: Nathan Chancellor <natechancellor@gmail.com>

Thank you for fixing this up quickly!
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
