Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D794310FE2
	for <lists+driverdev-devel@lfdr.de>; Fri,  5 Feb 2021 19:28:42 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 2A9D6873A1;
	Fri,  5 Feb 2021 18:28:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id oXm4F+-8W+v0; Fri,  5 Feb 2021 18:28:40 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id AE01387388;
	Fri,  5 Feb 2021 18:28:40 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 75E9C1BF83B
 for <devel@linuxdriverproject.org>; Fri,  5 Feb 2021 18:28:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 6F05C8731F
 for <devel@linuxdriverproject.org>; Fri,  5 Feb 2021 18:28:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id U46GIbh2Nwx7 for <devel@linuxdriverproject.org>;
 Fri,  5 Feb 2021 18:28:35 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-oo1-f41.google.com (mail-oo1-f41.google.com
 [209.85.161.41])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 85E278732A
 for <devel@driverdev.osuosl.org>; Fri,  5 Feb 2021 18:28:35 +0000 (UTC)
Received: by mail-oo1-f41.google.com with SMTP id x23so1866693oop.1
 for <devel@driverdev.osuosl.org>; Fri, 05 Feb 2021 10:28:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=m24jKGGmGki3qeVOM6zz/wESINDsCmuIsOMA9QLVHHY=;
 b=nY7/EII8giBI27YgK2N32iOY7orsIskuUmQAmyFa9eEyds7Hw+Ww2IEzZj1XZDhdbp
 zQyMRL3A1Coc/q9SaFq/0NUKmTkdC0PLu1GRtfHbjbBQrIQTfQfnwMiBi5LRwFODyI4g
 ITA1QCMAoOGkxgRrnOaS8n6LtCqxekZEr7X75x9UsmBdFzf6sNcQZNZxQWb7ptTiHG4M
 yl/puPyK5Q09SGNKwS1Y7dZuYlBVE14mGxGKs4jrEawSr3xJBLDArtlppWFGK4XkJ6Bi
 PflvEkc+Nf/OTWSt2oTLvE7MFAR/68JMkyH7M9tW5BVgk1pqdvKVggKr7I33WcRKzgz/
 RTnw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :references:mime-version:content-disposition:in-reply-to:user-agent;
 bh=m24jKGGmGki3qeVOM6zz/wESINDsCmuIsOMA9QLVHHY=;
 b=Zfv5raGjIBLcHz3y89ijJn0yg4didIMtCofyB+1dZ5IXDeomTyx0RFYbVjENk99b+9
 /Zl31Odu/bCbgTmwAInO5YS2YmFi59lcCwk7fnBQfzLl91rM2srUXEzd/4AJ4vBXW6NT
 tNW8e7HMTv5Urwp0LKhlpK7fiejpefM3IdMyu6XRs2yHHLmcpgyf7H2YmK7yvlKKfaVp
 Kjkjo7BqWphsn68jRVrDy1ISHnjrm8YiIk/A76p9mp4pLL14/HnoUNdkeYT9KzeHCKW/
 7/7yGIvtbnsmsX+CEVOYjtbFLq7njU5h5zCX2/VvT7vjirtIU9HaLoI6PNy0WxCTzqU9
 Udsg==
X-Gm-Message-State: AOAM530lXI7xxELqAYbYD0lRjIZ5UzODZhKJijYxKKuYv5BuZaAdv7C/
 uQMjONNPPwTdIH4iLPmpIaE=
X-Google-Smtp-Source: ABdhPJyE2MF8OFOaDmpo0vh7Eo2L1g2amAJPTfQqAlqkEqPU8XrD8rxQEXHiuZfPi83S4TSCbsj/zQ==
X-Received: by 2002:a4a:aa8b:: with SMTP id d11mr952667oon.36.1612549714774;
 Fri, 05 Feb 2021 10:28:34 -0800 (PST)
Received: from localhost ([2600:1700:e321:62f0:329c:23ff:fee3:9d7c])
 by smtp.gmail.com with ESMTPSA id d127sm1951329oib.26.2021.02.05.10.28.33
 (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
 Fri, 05 Feb 2021 10:28:33 -0800 (PST)
Date: Fri, 5 Feb 2021 10:28:32 -0800
From: Guenter Roeck <linux@roeck-us.net>
To: Yicong Yang <yangyicong@hisilicon.com>
Subject: Re: [PATCH 2/4] hwmon: Use subdir-ccflags-* to inherit debug flag
Message-ID: <20210205182832.GA186268@roeck-us.net>
References: <1612518255-23052-1-git-send-email-yangyicong@hisilicon.com>
 <1612518255-23052-3-git-send-email-yangyicong@hisilicon.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1612518255-23052-3-git-send-email-yangyicong@hisilicon.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
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
 gregkh@linuxfoundation.org, masahiroy@kernel.org, devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org, linuxarm@openeuler.org, abbotti@mev.co.uk,
 michal.lkml@markovi.net, helgaas@kernel.org, linux-kbuild@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Fri, Feb 05, 2021 at 05:44:13PM +0800, Yicong Yang wrote:
> From: Junhao He <hejunhao2@hisilicon.com>
> 
> Use subdir-ccflags-* instead of ccflags-* to inherit the debug
> settings from Kconfig when traversing subdirectories.
> 
> Suggested-by: Bjorn Helgaas <bhelgaas@google.com>
> Signed-off-by: Junhao He <hejunhao2@hisilicon.com>
> Signed-off-by: Yicong Yang <yangyicong@hisilicon.com>

What problem does this fix ? Maybe I am missing it, but I don't see
DEBUG being used in a subdirectory of drivers/hwmon.

Guenter

> ---
>  drivers/hwmon/Makefile | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/hwmon/Makefile b/drivers/hwmon/Makefile
> index 09a86c5..1c0c089 100644
> --- a/drivers/hwmon/Makefile
> +++ b/drivers/hwmon/Makefile
> @@ -201,5 +201,5 @@ obj-$(CONFIG_SENSORS_XGENE)	+= xgene-hwmon.o
>  obj-$(CONFIG_SENSORS_OCC)	+= occ/
>  obj-$(CONFIG_PMBUS)		+= pmbus/
>  
> -ccflags-$(CONFIG_HWMON_DEBUG_CHIP) := -DDEBUG
> +subdir-ccflags-$(CONFIG_HWMON_DEBUG_CHIP) := -DDEBUG
>  
> -- 
> 2.8.1
> 
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
