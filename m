Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A9915CD0C
	for <lists+driverdev-devel@lfdr.de>; Tue,  2 Jul 2019 11:56:42 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 2CFE187AFF;
	Tue,  2 Jul 2019 09:56:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Nb-U0vk8kZLw; Tue,  2 Jul 2019 09:56:40 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 8B77987A39;
	Tue,  2 Jul 2019 09:56:39 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 3FB6E1BF85D
 for <devel@linuxdriverproject.org>; Tue,  2 Jul 2019 09:56:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 3C7CF8790F
 for <devel@linuxdriverproject.org>; Tue,  2 Jul 2019 09:56:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 4vKxvK93WRdn for <devel@linuxdriverproject.org>;
 Tue,  2 Jul 2019 09:56:34 +0000 (UTC)
X-Greylist: delayed 00:07:45 by SQLgrey-1.7.6
Received: from mail-wr1-f67.google.com (mail-wr1-f67.google.com
 [209.85.221.67])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 94551878D7
 for <devel@driverdev.osuosl.org>; Tue,  2 Jul 2019 09:56:34 +0000 (UTC)
Received: by mail-wr1-f67.google.com with SMTP id v14so17041124wrr.4
 for <devel@driverdev.osuosl.org>; Tue, 02 Jul 2019 02:56:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=broadcom.com; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=UdYCIZGQ7tAt7A88vWqWA422Qpx5IuQReKn9P3m3xX8=;
 b=PZuM9EJbQb3YhMp+qaw+VF6BwkhSSyYMquhljCcVZSO+tjIcy06ofVIGPbwYNmREXi
 pRcuGFWqgU+nSlEobDVIi97m26fD20LGHZVCL/m/+eGewb0yAO7NlvlF/9gBYN5Rgy0B
 UVcUnIeulg2Ui8pzjNF76wVB55J/p/3pN/YrI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=UdYCIZGQ7tAt7A88vWqWA422Qpx5IuQReKn9P3m3xX8=;
 b=hoXSFW4T8y1DF/q9HAV0u5M+Yr6c+1R7DtVXk3rC1LromJezEOYaDrOfD6PWPVFNMY
 qCBHqtXKLwylsYNgRTq+gfY3TB+iQ29X8gp6lMCAoN9HFWJMrkXh54EPFUgtH+ayTkSC
 bV2u/EzkNx/IBN7tb9/9g1JJRz2E9ALyFVirXaetkM7o9iVkoFcRV96XqaBDwJqCzWV+
 pRybE/+6T0xTC55FPRdi3ufiwcOKF98CgIiygDGpicvy4i9kxb17wTiQcraU20PZjOB3
 djlXbOYhr2PCEKvTpij/AyAjf64D7kqQheCnHNRJbg6iz8qp0FI2twVvIZg33Itb1UxR
 uTww==
X-Gm-Message-State: APjAAAWSECgrewS9kWzJ/sSeFhAa8RfW8fstWpWcs3PAqgpoyeyh+Y+7
 dR8MCLEPl+cWd/Fv0CpQTfio3/kOvKeHqQ==
X-Google-Smtp-Source: APXvYqw+cs3wphtlInYiqa/iYYLL5YBkbuaWsrCFwdpkqDK8kfUrPvl8YI8TNOvUo+26MvPNs1E1Ng==
X-Received: by 2002:adf:9487:: with SMTP id 7mr9588274wrr.114.1562060928176;
 Tue, 02 Jul 2019 02:48:48 -0700 (PDT)
Received: from [10.176.68.244] ([192.19.248.250])
 by smtp.gmail.com with ESMTPSA id l124sm2421987wmf.36.2019.07.02.02.48.46
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 02 Jul 2019 02:48:47 -0700 (PDT)
Subject: Re: use exact allocation for dma coherent memory
To: Christoph Hellwig <hch@lst.de>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <maxime.ripard@bootlin.com>, Sean Paul <sean@poorly.run>,
 David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, Ian Abbott <abbotti@mev.co.uk>,
 H Hartley Sweeten <hsweeten@visionengravers.com>
References: <20190614134726.3827-1-hch@lst.de> <20190701084833.GA22927@lst.de>
From: Arend Van Spriel <arend.vanspriel@broadcom.com>
Message-ID: <74eb9d99-6aa6-d1ad-e66d-6cc9c496b2f3@broadcom.com>
Date: Tue, 2 Jul 2019 11:48:44 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20190701084833.GA22927@lst.de>
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
Cc: devel@driverdev.osuosl.org, linux-s390@vger.kernel.org,
 Intel Linux Wireless <linuxwifi@intel.com>, linux-rdma@vger.kernel.org,
 netdev@vger.kernel.org, intel-gfx@lists.freedesktop.org,
 linux-wireless@vger.kernel.org, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, linux-mm@kvack.org,
 iommu@lists.linux-foundation.org,
 "moderated list:ARM PORT" <linux-arm-kernel@lists.infradead.org>,
 linux-media@vger.kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>



On 7/1/2019 10:48 AM, Christoph Hellwig wrote:
> On Fri, Jun 14, 2019 at 03:47:10PM +0200, Christoph Hellwig wrote:
>> Switching to a slightly cleaned up alloc_pages_exact is pretty easy,
>> but it turns out that because we didn't filter valid gfp_t flags
>> on the DMA allocator, a bunch of drivers were passing __GFP_COMP
>> to it, which is rather bogus in too many ways to explain.  Arm has
>> been filtering it for a while, but this series instead tries to fix
>> the drivers and warn when __GFP_COMP is passed, which makes it much
>> larger than just adding the functionality.
> 
> Dear driver maintainers,
> 
> can you look over the patches touching your drivers, please?  I'd
> like to get as much as possible of the driver patches into this
> merge window, so that it can you through your maintainer trees.

You made me look ;-) Actually not touching my drivers so I'm off the 
hook. However, I was wondering if drivers could know so I decided to 
look into the DMA-API.txt documentation which currently states:

"""
The flag parameter (dma_alloc_coherent() only) allows the caller to
specify the ``GFP_`` flags (see kmalloc()) for the allocation (the
implementation may choose to ignore flags that affect the location of
the returned memory, like GFP_DMA).
"""

I do expect you are going to change that description as well now that 
you are going to issue a warning on __GFP_COMP. Maybe include that in 
patch 15/16 where you introduce that warning.

Regards,
Arend
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
