Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 7244A316565
	for <lists+driverdev-devel@lfdr.de>; Wed, 10 Feb 2021 12:42:40 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 09A6B6F568
	for <lists+driverdev-devel@lfdr.de>; Wed, 10 Feb 2021 11:42:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id CQQ0Ojt6b4Fh for <lists+driverdev-devel@lfdr.de>;
	Wed, 10 Feb 2021 11:42:37 +0000 (UTC)
Received: by smtp3.osuosl.org (Postfix, from userid 1001)
	id D36A26F5A5; Wed, 10 Feb 2021 11:42:37 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 87B6A6F48E;
	Wed, 10 Feb 2021 11:42:22 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 0B79A1BF479
 for <devel@linuxdriverproject.org>; Wed, 10 Feb 2021 11:42:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 073906F48E
 for <devel@linuxdriverproject.org>; Wed, 10 Feb 2021 11:42:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id pjV_59hRHFwo for <devel@linuxdriverproject.org>;
 Wed, 10 Feb 2021 11:42:10 +0000 (UTC)
Received: by smtp3.osuosl.org (Postfix, from userid 1001)
 id 4B6ED6F495; Wed, 10 Feb 2021 11:42:10 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail-wm1-f50.google.com (mail-wm1-f50.google.com
 [209.85.128.50])
 by smtp3.osuosl.org (Postfix) with ESMTPS id D43776F48E
 for <devel@driverdev.osuosl.org>; Wed, 10 Feb 2021 11:42:08 +0000 (UTC)
Received: by mail-wm1-f50.google.com with SMTP id j21so1574853wmj.0
 for <devel@driverdev.osuosl.org>; Wed, 10 Feb 2021 03:42:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=IN+db2cORNt7VkGGcBYrI5DAOlBAd7luCiB6c6UTORg=;
 b=A+lqcb1Mco2IH4sWZvbvEORyp44FjHIA2kKgYhWKHPRcBkihslWgY+eyCxjObLl4xM
 IJdLu77vzz0H46AfAyGLrLZ3P1y6a5z1GwgMJhI4clGjeFf+PyAsCenM3g5U2vflKhew
 Ju+igjclW8aHFZvW5zgCxQyfWMS4Xu5pD9ywx63JFAYNlS4WSR6nbO70ZKcfoghRGb4z
 Rf0JtLIheyrZWr3WvWIiahz7R05/j8oqaJTIUkNIo+kjiEWRTPpEAZUcmb+bwwR3TthY
 w8gny9neoDuQOvARwJ0yj7al35enKLxoqYkPmwR0BkgrFFw+H8Knypppuo27DmWcolMY
 g6AA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=IN+db2cORNt7VkGGcBYrI5DAOlBAd7luCiB6c6UTORg=;
 b=Iyf7hbgMNbbUzDLikDk02gP4pMOmiAlJBnQFHcu0GGhtBzj2l0BRcuyrFGFDn9PQ1w
 WT4I/EgceEnPAQQ/HOK4WY6t/bDGiT0GzASjIX6iazGrAv/d8e446e5KwzQYBYPzcRdF
 3+alPcBj6fqKY5HCvCRBoO1+gn3JSoZcH5ZpMZiMaRu/dwPWz71v7H7Qmfkfvk6raWZ3
 EuQGcFFfx4ulg4Tv87j6sgU6ZbCEtR2urXyIBKsO+GdycjNl/nt9+cxi3sM97M0g0sx6
 J8zylM+Uzd5EvfYLtoJxU7OEFF4sGY6kxBfEguZO6UG7li6hDSntAIC8eMi5sSQCICqy
 j19A==
X-Gm-Message-State: AOAM531X9L6GBvsCYz9eR+CWrGjmiMRta9ATqNovNAkCXxYPj6kedIFS
 izSfNWU9ITnHlqCI2g1Vcpvfeg==
X-Google-Smtp-Source: ABdhPJzcqeZvzBcu69WDOYa0AXEj+jkTjIK/0ivShR9A511clPVo2aBOAWDwimsl6o1C8uR6vnac8Q==
X-Received: by 2002:a7b:c215:: with SMTP id x21mr2619209wmi.61.1612957326535; 
 Wed, 10 Feb 2021 03:42:06 -0800 (PST)
Received: from maple.lan (cpc141216-aztw34-2-0-cust174.18-1.cable.virginm.net.
 [80.7.220.175])
 by smtp.gmail.com with ESMTPSA id y63sm2154970wmd.21.2021.02.10.03.42.04
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 10 Feb 2021 03:42:05 -0800 (PST)
Date: Wed, 10 Feb 2021 11:42:03 +0000
From: Daniel Thompson <daniel.thompson@linaro.org>
To: Yicong Yang <yangyicong@hisilicon.com>
Subject: Re: [PATCH 1/4] driver core: Use subdir-ccflags-* to inherit debug
 flag
Message-ID: <20210210114203.jvhst2veqbx73r5g@maple.lan>
References: <1612518255-23052-1-git-send-email-yangyicong@hisilicon.com>
 <1612518255-23052-2-git-send-email-yangyicong@hisilicon.com>
 <YB0Vk6ERJ3lFc3WD@kroah.com>
 <08017751-a1be-ea07-50de-73d14ab6d57e@hisilicon.com>
 <YCEWtxYgbRPET4Sr@kroah.com>
 <1f0b2f37-db56-c220-dfe1-8c376031404f@hisilicon.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1f0b2f37-db56-c220-dfe1-8c376031404f@hisilicon.com>
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
Cc: linux-hwmon@vger.kernel.org, kw@linux.com, giometti@enneenne.com,
 jdelvare@suse.com, prime.zeng@huawei.com, linux-pm@vger.kernel.org,
 Greg KH <gregkh@linuxfoundation.org>, masahiroy@kernel.org,
 devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
 linux-kbuild@vger.kernel.org, linuxarm@openeuler.org, abbotti@mev.co.uk,
 michal.lkml@markovi.net, helgaas@kernel.org, linux@roeck-us.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Mon, Feb 08, 2021 at 09:09:20PM +0800, Yicong Yang wrote:
> On 2021/2/8 18:47, Greg KH wrote:
> > On Mon, Feb 08, 2021 at 06:44:52PM +0800, Yicong Yang wrote:
> >> On 2021/2/5 17:53, Greg KH wrote:
> >>> What does this offer in benefit of the existing way?  What is it fixing?
> >>> Why do this "churn"?
> >>
> >> currently we have added ccflags-$(CONFIG_DEBUG_DRIVER) := -DDEBUG in the Makefile
> >> of driver/base and driver/base/power, but not in the subdirectory
> >> driver/base/firmware_loader. we cannot turn the debug on for subdirectory
> >> firmware_loader if we config DEBUG_DRIVER and there is no kconfig option
> >> for the it.
> > 
> > Is that necessary?  Does that directory need it?
> 
> there are several debug prints in firmware_loader/main.c:
> 
> ./main.c:207:   pr_debug("%s: fw-%s fw_priv=%p\n", __func__, fw_name, fw_priv);
> ./main.c:245:                   pr_debug("batched request - sharing the same struct fw_priv and lookup for multiple requests\n");
> <snip>

Even if these are not in scope for CONFIG_DEBUG_DRVIER there is a
config option that would allow you to observe them without changing
any code (CONFIG_DYNAMIC_DEBUG).


Daniel.
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
