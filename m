Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 3280725B7A9
	for <lists+driverdev-devel@lfdr.de>; Thu,  3 Sep 2020 02:36:42 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id D6A2786B0A;
	Thu,  3 Sep 2020 00:36:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id FgiaBMPEpWZD; Thu,  3 Sep 2020 00:36:39 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 36F5386AF2;
	Thu,  3 Sep 2020 00:36:38 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 2E0E81BF3EB
 for <devel@linuxdriverproject.org>; Thu,  3 Sep 2020 00:36:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 2907986B8A
 for <devel@linuxdriverproject.org>; Thu,  3 Sep 2020 00:36:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 6ikoWXnV2Thk for <devel@linuxdriverproject.org>;
 Thu,  3 Sep 2020 00:36:35 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pj1-f65.google.com (mail-pj1-f65.google.com
 [209.85.216.65])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 67F9486B88
 for <devel@driverdev.osuosl.org>; Thu,  3 Sep 2020 00:36:35 +0000 (UTC)
Received: by mail-pj1-f65.google.com with SMTP id mm21so607849pjb.4
 for <devel@driverdev.osuosl.org>; Wed, 02 Sep 2020 17:36:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=HGMI5u4+l1Tf8c3EflpFySIPH+tLFZrWho9A072B+v0=;
 b=qgcnAVz2b4GXO/VBcwehnbBCJoiAynRLxeE3+nye4S4BoYiqiqTXyMoS3G6dTjEKQf
 284LZRFd8PY6eYGp7XuTedUOp7736rLJ/+V6O5AktcwvdCP1c39H+PPC99bdJz73T9CF
 1R9ZxkolF4OVEUqGU7omTvZ2PfnI1OB/JFANYAiIHhkJvNZl4bW6LLnpH08Gc3j5kl6o
 DSfSCPldBfiTSR6BnmyRijG0Q90cnMTDeW0Xv0E4ZAuHhneO9TtBoBhMLmuX2g3EQxy+
 6yXIdNa6tIDgHuR/6vSX1krPHhQqIWZtk8NLORXxahxAqxdwk9OJxiYrP+nQqPwDpBgY
 4RYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=HGMI5u4+l1Tf8c3EflpFySIPH+tLFZrWho9A072B+v0=;
 b=loULdAUQTWN5qo0yjT7+wo8+6umQbkKvVoyxOetBtYTawgFp9KtNc2w8kuIxcXfoLs
 2NiE1Sa7D/Ki3yWc4hYQDTqIxWZFLlmRj9cBD3vN7vie6G0BlUP8+9EePboOBT2rWjLM
 zHydF4RNrhTD+z7poEj+Q8cUuNJjuIiYSzCqEm6nw3MKoiGRpQLuVR5BAWGmf1VxodZe
 PT2IkhS+dlpiN/HuvqZYrXKZOaOHooJWHFDXGqscrWeZg2ys72qwOJ//XUthiG3ae2MR
 4WzCdq87gM7YTFAFTyaCpaOFkn7GHvIsse2UOrpAYij+fzfNb1HMLA5GaJ+nhmzGpvk2
 zLVA==
X-Gm-Message-State: AOAM533S/9htJF2Jmb97vltcc6orBxMfgZHxGVr0Fno3CTtlDyLvnxHo
 pPJv97Jx0/sRYfm945CVw9w=
X-Google-Smtp-Source: ABdhPJzcRRxLsfp4XqFjuW94MrfAQ6bEtGHcjZM+ap6oC7YZYhrZlOWHN8FProfCj+k0eWx0IzfuiA==
X-Received: by 2002:a17:90b:408b:: with SMTP id
 jb11mr389883pjb.164.1599093394840; 
 Wed, 02 Sep 2020 17:36:34 -0700 (PDT)
Received: from [10.230.30.107] ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id q127sm740851pfb.61.2020.09.02.17.36.29
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 02 Sep 2020 17:36:33 -0700 (PDT)
Subject: Re: [PATCH v11 07/11] device-mapping: Introduce DMA range map,
 supplanting dma_pfn_offset
To: Nathan Chancellor <natechancellor@gmail.com>,
 Jim Quinlan <james.quinlan@broadcom.com>
References: <20200824193036.6033-1-james.quinlan@broadcom.com>
 <20200824193036.6033-8-james.quinlan@broadcom.com>
 <20200902215314.GA881878@ubuntu-n2-xlarge-x86>
 <CA+-6iNzc38OAL7TGxobpODKXOD1CW-VFNU0rK9Z043QfR3MfsQ@mail.gmail.com>
 <20200902223852.GA1786990@ubuntu-n2-xlarge-x86>
From: Florian Fainelli <f.fainelli@gmail.com>
Message-ID: <6922bc0b-1849-2f2f-ec2f-fe9f0124dcfc@gmail.com>
Date: Wed, 2 Sep 2020 17:36:29 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Firefox/78.0 Thunderbird/78.1.1
MIME-Version: 1.0
In-Reply-To: <20200902223852.GA1786990@ubuntu-n2-xlarge-x86>
Content-Language: en-US
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
 Mauro Carvalho Chehab <mchehab@kernel.org>,
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
 <devicetree@vger.kernel.org>, Maxime Ripard <mripard@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Borislav Petkov <bp@alien8.de>,
 Yong Deng <yong.deng@magewell.com>, Santosh Shilimkar <ssantosh@kernel.org>,
 Bjorn Helgaas <bhelgaas@google.com>, Dan Williams <dan.j.williams@intel.com>,
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
 Robin Murphy <robin.murphy@arm.com>,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>



On 9/2/2020 3:38 PM, Nathan Chancellor wrote:
[snip]
>> Hello Nathan,
>>
>> Can you tell me how much memory your RPI has and if all of it is
> 
> This is the 4GB version.
> 
>> accessible by the PCIe device?  Could you also please include the DTS
>> of the PCIe node?  IIRC, the RPI firmware does some mangling of the
>> PCIe DT before Linux boots -- could you describe what is going on
>> there?
> 
> Unfortunately, I am not familiar with how to get this information. If
> you could provide some instructions for how to do so, I am more than
> happy to. I am not very knowleagable about the inner working of the Pi,
> I mainly use it as a test platform for making sure that LLVM does not
> cause problems on real devices.

Can you bring the dtc application to your Pi root filesystem, and if so, 
can you run the following:

dtc -I fs -O dtb /proc/device-tree -f > /tmp/device.dtb

or cat /sys/firmware/fdt > device.dtb

and attach the resulting file?

> 
>> Finally, can you attach the text of the full boot log?
> 
> I have attached a working and broken boot log. Thank you for the quick
> response!

Is it possible for you to rebuild your kernel with CONFIG_MMC_DEBUG by 
any chance?

I have a suspicion that this part of the DTS for the bcm2711.dtsi 
platform is at fault:

https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/arch/arm/boot/dts/bcm2711.dtsi#n264

and the resulting dma-ranges parsing is just not working for reasons to 
be determined.
--
Florian
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
