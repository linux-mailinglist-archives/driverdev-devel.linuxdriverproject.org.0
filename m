Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 63F39260483
	for <lists+driverdev-devel@lfdr.de>; Mon,  7 Sep 2020 20:29:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id AC9368715E;
	Mon,  7 Sep 2020 18:29:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id gsIA8+VxNXFo; Mon,  7 Sep 2020 18:29:13 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 27E6387130;
	Mon,  7 Sep 2020 18:29:13 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 27B5D1BF2BC
 for <devel@linuxdriverproject.org>; Mon,  7 Sep 2020 18:29:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 2382D870BA
 for <devel@linuxdriverproject.org>; Mon,  7 Sep 2020 18:29:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id XP4CsFqbGola for <devel@linuxdriverproject.org>;
 Mon,  7 Sep 2020 18:29:10 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f193.google.com (mail-pf1-f193.google.com
 [209.85.210.193])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 82A2182004
 for <devel@driverdev.osuosl.org>; Mon,  7 Sep 2020 18:29:10 +0000 (UTC)
Received: by mail-pf1-f193.google.com with SMTP id c142so8980140pfb.7
 for <devel@driverdev.osuosl.org>; Mon, 07 Sep 2020 11:29:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=bmURCbMiaqKzzelpk/S2JynuuyDAIuukHKp0frES45k=;
 b=pGJxdnPlnnjuVnEQiNNF8NPZ9N8cHRKSXuzhjcwyPpc1EErwzM0CyOU4oIwN4LS9Mw
 1wC7EvuKj0Ax1z41J2Q3+FCDPwoQdUe7gPwjEhSmttF1uE8TKkr0ZeZZaCOYAlsTrSqs
 1hDtsmCA12I0M7LfTaBMaahkp6lybABgSUqZ0T/SfYV2TIViz4H4Kf4gHzZu64C2mrWY
 hdu86ghnR/J8FGXfGJpJFZ+boynxUUhjN2XGe9NwROXh85rZPnj3p6DBsKU/2NHGtf8x
 ChhltHIi6E47BdFQF4Mbz+1aEHdsFzD7p965i8s22ViF4mXU7St3Cx+aCA3tXWJyqQQm
 g1wQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=bmURCbMiaqKzzelpk/S2JynuuyDAIuukHKp0frES45k=;
 b=Keym/kNdUsMV8A40FXPueMLnZbZ1YIl+pYhGr8sTiMBprWCCieMa/JbJD09egFPutn
 ylsD65SnOVfkFryv5LQR402A18lHg3PQHOQ3gp3KOG3x0WX7GGgIPIvbk8Wo/0DOc3WN
 3By/XPRLR+GP65c6v/rdmrzm/bei4H/Yb7NuZhVYR+LJg7Lro61auNTmx5/XYAyNyJCa
 vCfLQtV8MAndCq8URWiy7WpDXWgx+nV3LG99uOgJNmm2IpWd7pgxxCMUbnzF3HYg/mQB
 KgooJEKMewI1guTrkUzB8pPkcr9hBxBvW7JiYfMGnqiPsJ53qdC2uMpq7R6xPx6txpyH
 CZIw==
X-Gm-Message-State: AOAM531aDsLWC/H4AHfqJ6t0rkU/GjwZLTOl3zmNVXDhd5cYsPkcq88M
 nW0NCaGs7RCOGMUIq3qwkPQ=
X-Google-Smtp-Source: ABdhPJyh6g2rRcD6ogNPy2tapg1StlUEf/BdvWQy8jzaR475oJoKQT/NWFiUoNd1k6PiwSYe5VKk+A==
X-Received: by 2002:a62:fb05:: with SMTP id x5mr21991954pfm.121.1599503349977; 
 Mon, 07 Sep 2020 11:29:09 -0700 (PDT)
Received: from [192.168.1.3] (ip68-111-84-250.oc.oc.cox.net. [68.111.84.250])
 by smtp.gmail.com with ESMTPSA id
 13sm15823860pfp.3.2020.09.07.11.29.07
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 07 Sep 2020 11:29:09 -0700 (PDT)
Subject: Re: [PATCH v11 00/11] PCI: brcmstb: enable PCIe for STB chips
To: Jim Quinlan <james.quinlan@broadcom.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
References: <20200824193036.6033-1-james.quinlan@broadcom.com>
 <b19bc982-a0c4-c6ff-d8f5-650f2b3a83c8@gmail.com>
 <20200827063517.GA4637@lst.de>
 <CA+-6iNy3U9pO0Bykzgvb9n9fcsBi6FiatLdpA1s0HgQNWZ49mg@mail.gmail.com>
 <20200907091649.GA6428@e121166-lin.cambridge.arm.com>
 <CA+-6iNzoz3pM2pJksXogeuou6wB9W-59rN-amCLERFLuY5zLMg@mail.gmail.com>
From: Florian Fainelli <f.fainelli@gmail.com>
Message-ID: <00e49acb-c659-de10-3e87-76bfd82e4a76@gmail.com>
Date: Mon, 7 Sep 2020 11:29:06 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Firefox/78.0 Thunderbird/78.2.1
MIME-Version: 1.0
In-Reply-To: <CA+-6iNzoz3pM2pJksXogeuou6wB9W-59rN-amCLERFLuY5zLMg@mail.gmail.com>
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>



On 9/7/2020 10:43 AM, Jim Quinlan wrote:
> On Mon, Sep 7, 2020 at 5:16 AM Lorenzo Pieralisi
> <lorenzo.pieralisi@arm.com> wrote:
>>
>> On Thu, Aug 27, 2020 at 09:29:59AM -0400, Jim Quinlan wrote:
>>> On Thu, Aug 27, 2020 at 2:35 AM Christoph Hellwig <hch@lst.de> wrote:
>>>>
>>>> On Tue, Aug 25, 2020 at 10:40:27AM -0700, Florian Fainelli wrote:
>>>>> Hi,
>>>>>
>>>>> On 8/24/2020 12:30 PM, Jim Quinlan wrote:
>>>>>>
>>>>>> Patchset Summary:
>>>>>>     Enhance a PCIe host controller driver.  Because of its unusual design
>>>>>>     we are foced to change dev->dma_pfn_offset into a more general role
>>>>>>     allowing multiple offsets.  See the 'v1' notes below for more info.
>>>>>
>>>>> We are version 11 and counting, and it is not clear to me whether there is
>>>>> any chance of getting these patches reviewed and hopefully merged for the
>>>>> 5.10 merge window.
>>>>>
>>>>> There are a lot of different files being touched, so what would be the
>>>>> ideal way of routing those changes towards inclusion?
>>>>
>>>> FYI, I offered to take the dma-mapping bits through the dma-mapping tree.
>>>> I have a bit of a backlog, but plan to review and if Jim is ok with that
>>>> apply the current version.
>>> Sounds good to me.
>>
>> Hi Jim,
>>
>> is the dependency now solved ? Should we review/take this series as
>> is for v5.10 through the PCI tree ?
> Hello Lorenzo,
> 
> We are still working out a regression with the DMA offset commit on
> the RaspberryPi.  Nicolas has found the root cause and we are now
> devising a solution.

Maybe we can parallelize the PCIe driver review while the DMA changes 
are being worked on in Christoph's branch. Lorenzo, are you fine with 
the PCIe changes proper?
-- 
Florian
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
