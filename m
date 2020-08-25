Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 4706D251E88
	for <lists+driverdev-devel@lfdr.de>; Tue, 25 Aug 2020 19:40:38 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 654BB88365;
	Tue, 25 Aug 2020 17:40:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Al4aal8QaJaf; Tue, 25 Aug 2020 17:40:36 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 4863188354;
	Tue, 25 Aug 2020 17:40:35 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 9F66D1BF41C
 for <devel@linuxdriverproject.org>; Tue, 25 Aug 2020 17:40:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 4440C88348
 for <devel@linuxdriverproject.org>; Tue, 25 Aug 2020 17:40:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 35Tt1usACgj5 for <devel@linuxdriverproject.org>;
 Tue, 25 Aug 2020 17:40:31 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pj1-f66.google.com (mail-pj1-f66.google.com
 [209.85.216.66])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 26D3988344
 for <devel@driverdev.osuosl.org>; Tue, 25 Aug 2020 17:40:31 +0000 (UTC)
Received: by mail-pj1-f66.google.com with SMTP id ep8so1597921pjb.3
 for <devel@driverdev.osuosl.org>; Tue, 25 Aug 2020 10:40:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=2CIAlEB0sn0czmBCstmmbk0rRRc0a7Q7Eg5uRFK+DTM=;
 b=OWtTyCh4mBkSanD+KT2LmsSmys9GdgNPDuMOUrEMBvirSVEpgWaccxzuVDCSUPzr+g
 UL3d/b/WhkUnWbhm0C+dKAbICczXHeEay6JEghnYPq1AWGXV0OqUHZVzSR0vH40qB4T7
 CvKheJOKe1bLwlHMjKz6V1TnFYQX/QwQ3zFo3OtKNBualjgvS3McIxk5bZckCXdHUxPn
 y5cllopsvswApow32o5Hqk8i69l4DMq5zNUIBV31X/TRx3SDq4RkHJpDQFbpdjwtNLEK
 YafzqTXU3/pyTiKmRDgRCRX9RrujtgeJf8Hbr9VBxTZRL/Jzkqt3LfmQHxV5h/PRKVwB
 vyvA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=2CIAlEB0sn0czmBCstmmbk0rRRc0a7Q7Eg5uRFK+DTM=;
 b=kEe3rSsd5t98wGIlp481vPqgjMyBXtyqQ6sZE2gPRKZXLp2D/fTwlhIZTSoAa0wHz7
 foAvcxX+HSYZSvOc1koUuA1W2mzCyBA0pXjLUj+wiTZIwdWMYni1EWSZb+2e8+7Ib1Ra
 Ov59Yu+TJKOh8Iyeu3SUaUs5FAliigeFgOTtiSJdyGls5zryFi6cQyIBGHxShlGwzAKr
 DUAFPi0dxrIxiIWAJjqlfNDS3xxjNcXCjQRdOBo8VGbjRHJPrnEqK94BksWkN7APATPw
 b9PV05G1SE8O6+iJ/sQvk9BpxmkDCkLIuVcoEJmsWBxvl/fLkYrClnGsgTGWokXbvbLx
 QkCQ==
X-Gm-Message-State: AOAM531HN0H+5hJ8tSh1heb1i5V4hd4lqq36DsxdAz+vqnE3EP9kPkKJ
 6HG1qWH/D76XMABWUCerwTg=
X-Google-Smtp-Source: ABdhPJygG/iRoMRtYkc62+6+vovnxiIUBYXGvz6sXIt/PP/MjnVCr6wdHgCpE82t+Egu2LRmdgvskQ==
X-Received: by 2002:a17:90a:eb17:: with SMTP id
 j23mr2403499pjz.151.1598377230639; 
 Tue, 25 Aug 2020 10:40:30 -0700 (PDT)
Received: from [10.69.79.32] ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id b6sm3378574pjz.33.2020.08.25.10.40.27
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 25 Aug 2020 10:40:29 -0700 (PDT)
Subject: Re: [PATCH v11 00/11] PCI: brcmstb: enable PCIe for STB chips
To: Jim Quinlan <james.quinlan@broadcom.com>, linux-pci@vger.kernel.org,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Christoph Hellwig <hch@lst.de>, Robin Murphy <robin.murphy@arm.com>,
 bcm-kernel-feedback-list@broadcom.com
References: <20200824193036.6033-1-james.quinlan@broadcom.com>
From: Florian Fainelli <f.fainelli@gmail.com>
Message-ID: <b19bc982-a0c4-c6ff-d8f5-650f2b3a83c8@gmail.com>
Date: Tue, 25 Aug 2020 10:40:27 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Firefox/78.0 Thunderbird/78.1.1
MIME-Version: 1.0
In-Reply-To: <20200824193036.6033-1-james.quinlan@broadcom.com>
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
 "open list:REMOTE PROCESSOR \(REMOTEPROC\) SUBSYSTEM"
 <linux-remoteproc@vger.kernel.org>,
 "open list:DRM DRIVERS FOR ALLWINNER A10" <dri-devel@lists.freedesktop.org>,
 Julien Grall <julien.grall@arm.com>, "H. Peter Anvin" <hpa@zytor.com>,
 "open list:STAGING SUBSYSTEM" <devel@driverdev.osuosl.org>,
 Rob Herring <robh@kernel.org>, Stefano Stabellini <sstabellini@kernel.org>,
 Saravana Kannan <saravanak@google.com>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 "Rafael J. Wysocki" <rafael@kernel.org>,
 "open list:ACPI FOR ARM64 \(ACPI/arm64\)" <linux-acpi@vger.kernel.org>,
 Alan Stern <stern@rowland.harvard.edu>,
 "open list:ALLWINNER A10 CSI DRIVER" <linux-media@vger.kernel.org>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE"
 <devicetree@vger.kernel.org>, Joerg Roedel <jroedel@suse.de>,
 "moderated list:BROADCOM BCM2711/BCM2835 ARM ARCHITECTURE"
 <linux-rpi-kernel@lists.infradead.org>,
 Dan Williams <dan.j.williams@intel.com>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 "moderated list:ARM PORT" <linux-arm-kernel@lists.infradead.org>,
 Felipe Balbi <balbi@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 "open list:USB SUBSYSTEM" <linux-usb@vger.kernel.org>,
 open list <linux-kernel@vger.kernel.org>,
 "open list:IOMMU DRIVERS" <iommu@lists.linux-foundation.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi,

On 8/24/2020 12:30 PM, Jim Quinlan wrote:
> 
> Patchset Summary:
>    Enhance a PCIe host controller driver.  Because of its unusual design
>    we are foced to change dev->dma_pfn_offset into a more general role
>    allowing multiple offsets.  See the 'v1' notes below for more info.

We are version 11 and counting, and it is not clear to me whether there 
is any chance of getting these patches reviewed and hopefully merged for 
the 5.10 merge window.

There are a lot of different files being touched, so what would be the 
ideal way of routing those changes towards inclusion?

Thanks!
-- 
Florian
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
