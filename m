Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id CB88A3593B0
	for <lists+driverdev-devel@lfdr.de>; Fri,  9 Apr 2021 06:17:14 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1055560E61;
	Fri,  9 Apr 2021 04:17:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 3fMIElVHx8hc; Fri,  9 Apr 2021 04:17:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4CAD260E5C;
	Fri,  9 Apr 2021 04:17:11 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id A63AB1BF82D
 for <devel@linuxdriverproject.org>; Fri,  9 Apr 2021 04:17:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id A1ADB84928
 for <devel@linuxdriverproject.org>; Fri,  9 Apr 2021 04:17:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=chromium.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id X6hEHF4KW5iQ for <devel@linuxdriverproject.org>;
 Fri,  9 Apr 2021 04:16:59 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-pl1-x62e.google.com (mail-pl1-x62e.google.com
 [IPv6:2607:f8b0:4864:20::62e])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 3039A84924
 for <devel@driverdev.osuosl.org>; Fri,  9 Apr 2021 04:16:59 +0000 (UTC)
Received: by mail-pl1-x62e.google.com with SMTP id h20so2117984plr.4
 for <devel@driverdev.osuosl.org>; Thu, 08 Apr 2021 21:16:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=a0qsp2jIyenJ7KHlPYVUT6/QMykCuCokvpYJBkoNKqc=;
 b=UwV8R/Q8+Casp+Pr+/Ktx9Z6WK5t0P2rFMKBKIpUjWSSl8OSpfZViFSMulAfx4hbnP
 W49eveLRdRyxptJtTAhj7Ikfmsb9guP7kMgG4HGKmLeg9RZJ1zmYfrtgkFl1LJLvvd+M
 jAYoAdCI5eDyI/Y457bz2jfz3irfpyRFuTLaM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=a0qsp2jIyenJ7KHlPYVUT6/QMykCuCokvpYJBkoNKqc=;
 b=bIXMxxa7kkU2oLetqTSMSj42jDdlA8hckis7Y2lDZFACYNKGnGCUUI5q97IGAiCSFZ
 V7YaakTjemqiQdg8ltZpC3prBj6yhkYskIUgL6KAk5/CH2LN2aOAREFRatU0G4LO2oVP
 D0dG/Psz47FNBK5sXJOuV3xN7i0Mt0i3T+qdFbkHMaXr2cFy0tU42C/T5mvpAHd24yvt
 Mks7GhziWW68Abmz0pfyICc8CDUl/9UZRHdI5uQAFGk67IEc2bNnzAM2XDj6rkC16YHr
 RS6ApTJL0yFiyQIKbI2LN1jmF7WnN1Ze5wIJkUJnpLvxU1cv8xMiAlaa6XClqCLcNv6Z
 ufkQ==
X-Gm-Message-State: AOAM533iPPCWqHQHjIBr89RuDrA2v+F56DZA3VgiCugqXBJstSbjWMo+
 Df1mnk3AknqIg3HXD9DUfCozyQ==
X-Google-Smtp-Source: ABdhPJyGyvCVEa7LiGau1j+FxGNErVPRWIzRVPPBHEYkQhjh2VoBYdj4TU0vPnGb3OyVgIqdufgkqQ==
X-Received: by 2002:a17:90b:ecc:: with SMTP id
 gz12mr11681301pjb.79.1617941818642; 
 Thu, 08 Apr 2021 21:16:58 -0700 (PDT)
Received: from chromium.org ([2401:fa00:8f:2:4c17:c5d7:544d:4527])
 by smtp.gmail.com with ESMTPSA id y66sm794846pgb.78.2021.04.08.21.16.56
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 08 Apr 2021 21:16:58 -0700 (PDT)
Date: Fri, 9 Apr 2021 13:16:54 +0900
From: Tomasz Figa <tfiga@chromium.org>
To: Ricardo Ribalda <ribalda@chromium.org>
Subject: Re: [PATCH v2 2/2] media: staging/intel-ipu3: Fix set_fmt error
 handling
Message-ID: <YG/VNufYSadPL9a9@chromium.org>
References: <20210315123406.1523607-1-ribalda@chromium.org>
 <20210315123406.1523607-2-ribalda@chromium.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210315123406.1523607-2-ribalda@chromium.org>
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
Cc: devel@driverdev.osuosl.org, Arnd Bergmann <arnd@arndb.de>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 stable@vger.kernel.org, Sakari Ailus <sakari.ailus@linux.intel.com>,
 Bingbu Cao <bingbu.cao@intel.com>, Mauro Carvalho Chehab <mchehab@kernel.org>,
 Tianshu Qiu <tian.shu.qiu@intel.com>, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Mon, Mar 15, 2021 at 01:34:06PM +0100, Ricardo Ribalda wrote:
> If there in an error during a set_fmt, do not overwrite the previous
> sizes with the invalid config.
> 
> [   38.662975] ipu3-imgu 0000:00:05.0: swiotlb buffer is full (sz: 4096 bytes)
> [   38.662980] DMA: Out of SW-IOMMU space for 4096 bytes at device 0000:00:05.0
> [   38.663010] general protection fault: 0000 [#1] PREEMPT SMP
> 
> Cc: stable@vger.kernel.org
> Fixes: 6d5f26f2e045 ("media: staging/intel-ipu3-v4l: reduce kernel stack usage")
> Signed-off-by: Ricardo Ribalda <ribalda@chromium.org>
> ---
>  drivers/staging/media/ipu3/ipu3-v4l2.c | 25 ++++++++++++++-----------
>  1 file changed, 14 insertions(+), 11 deletions(-)

Reviewed-by: Tomasz Figa <tfiga@chromium.org>

Best regards,
Tomasz
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
