Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id E1BB0EB80E
	for <lists+driverdev-devel@lfdr.de>; Thu, 31 Oct 2019 20:40:27 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 54F072341A;
	Thu, 31 Oct 2019 19:40:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 28JaIuy2OO8S; Thu, 31 Oct 2019 19:40:24 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id DFF8A20439;
	Thu, 31 Oct 2019 19:40:23 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 265F71BF316
 for <devel@linuxdriverproject.org>; Thu, 31 Oct 2019 19:40:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 109BC87A8A
 for <devel@linuxdriverproject.org>; Thu, 31 Oct 2019 19:40:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id JfOFdpkRIJCL for <devel@linuxdriverproject.org>;
 Thu, 31 Oct 2019 19:40:19 +0000 (UTC)
X-Greylist: delayed 00:08:23 by SQLgrey-1.7.6
Received: from mail1.perex.cz (mail1.perex.cz [77.48.224.245])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 1038C87A85
 for <devel@driverdev.osuosl.org>; Thu, 31 Oct 2019 19:40:18 +0000 (UTC)
Received: from mail1.perex.cz (localhost [127.0.0.1])
 by smtp1.perex.cz (Perex's E-mail Delivery System) with ESMTP id 6FAA0A003F;
 Thu, 31 Oct 2019 20:31:49 +0100 (CET)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.perex.cz 6FAA0A003F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=perex.cz; s=default;
 t=1572550309; bh=e7FOMXFcnMMpy8m/IR2ThaAKpnMK1j6Jiw3vhVsS7l4=;
 h=Subject:To:Cc:References:From:Date:In-Reply-To:From;
 b=VlE80nabt963GZrSP5Qtjes5VtzKFkDZ+sKse3vg1zq5VPrK5pv+84+ZiFHBO0zSl
 aTXyOs5kzWOdJ7eBA1cMW2UkOyF/8Nm2npY5p1CfWdwtUg+3IEaWLgcVEwgv0mB8hN
 HbpJ+NtAo2obtEc12CRq7rTQvtlbhF4xJs5/+gJk=
Received: from p50.perex-int.cz (unknown [192.168.100.94])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: perex)
 by mail1.perex.cz (Perex's E-mail Delivery System) with ESMTPSA;
 Thu, 31 Oct 2019 20:31:43 +0100 (CET)
Subject: Re: [PATCH] hp100: Move 100BaseVG AnyLAN driver to staging
To: Joe Perches <joe@perches.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
References: <4024b52c917975cebde58afc094eed1a107622c2.1572545956.git.joe@perches.com>
From: Jaroslav Kysela <perex@perex.cz>
Message-ID: <8b3f9530-a94c-8d6d-9a3d-4d5d3d1f97ae@perex.cz>
Date: Thu, 31 Oct 2019 20:31:43 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.1.1
MIME-Version: 1.0
In-Reply-To: <4024b52c917975cebde58afc094eed1a107622c2.1572545956.git.joe@perches.com>
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
Cc: devel@driverdev.osuosl.org, netdev@vger.kernel.org,
 "David S. Miller" <davem@davemloft.net>, linux-kernel@vger.kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Dne 31. 10. 19 v 19:23 Joe Perches napsal(a):
> 100BaseVG AnyLAN hasn't been useful since 1996 or so and even then
> didn't sell many devices.  It's unlikely any are still in use.
> 
> Move the driver to staging with the intent of removing it altogether
> one day.
> 
> Signed-off-by: Joe Perches <joe@perches.com>

Acked-by: Jaroslav Kysela <perex@perex.cz>


> ---
>   MAINTAINERS                                   | 4 ++--
>   drivers/net/ethernet/Kconfig                  | 1 -
>   drivers/net/ethernet/Makefile                 | 1 -
>   drivers/staging/Kconfig                       | 2 ++
>   drivers/staging/Makefile                      | 1 +
>   drivers/{net/ethernet => staging}/hp/Kconfig  | 0
>   drivers/{net/ethernet => staging}/hp/Makefile | 0
>   drivers/{net/ethernet => staging}/hp/hp100.c  | 0
>   drivers/{net/ethernet => staging}/hp/hp100.h  | 0
>   9 files changed, 5 insertions(+), 4 deletions(-)
>   rename drivers/{net/ethernet => staging}/hp/Kconfig (100%)
>   rename drivers/{net/ethernet => staging}/hp/Makefile (100%)
>   rename drivers/{net/ethernet => staging}/hp/hp100.c (100%)
>   rename drivers/{net/ethernet => staging}/hp/hp100.h (100%)
> 
> diff --git a/MAINTAINERS b/MAINTAINERS
> index c6c34d..bea725 100644
> --- a/MAINTAINERS
> +++ b/MAINTAINERS
> @@ -7444,8 +7444,8 @@ F:	drivers/platform/x86/tc1100-wmi.c
>   
>   HP100:	Driver for HP 10/100 Mbit/s Voice Grade Network Adapter Series
>   M:	Jaroslav Kysela <perex@perex.cz>
> -S:	Maintained
> -F:	drivers/net/ethernet/hp/hp100.*
> +S:	Obsolete
> +F:	drivers/staging/hp/hp100.*
>   
>   HPET:	High Precision Event Timers driver
>   M:	Clemens Ladisch <clemens@ladisch.de>
> diff --git a/drivers/net/ethernet/Kconfig b/drivers/net/ethernet/Kconfig
> index e8e9c16..4ded81 100644
> --- a/drivers/net/ethernet/Kconfig
> +++ b/drivers/net/ethernet/Kconfig
> @@ -78,7 +78,6 @@ source "drivers/net/ethernet/freescale/Kconfig"
>   source "drivers/net/ethernet/fujitsu/Kconfig"
>   source "drivers/net/ethernet/google/Kconfig"
>   source "drivers/net/ethernet/hisilicon/Kconfig"
> -source "drivers/net/ethernet/hp/Kconfig"
>   source "drivers/net/ethernet/huawei/Kconfig"
>   source "drivers/net/ethernet/i825xx/Kconfig"
>   source "drivers/net/ethernet/ibm/Kconfig"
> diff --git a/drivers/net/ethernet/Makefile b/drivers/net/ethernet/Makefile
> index 05abeb..f8f38d 100644
> --- a/drivers/net/ethernet/Makefile
> +++ b/drivers/net/ethernet/Makefile
> @@ -41,7 +41,6 @@ obj-$(CONFIG_NET_VENDOR_FREESCALE) += freescale/
>   obj-$(CONFIG_NET_VENDOR_FUJITSU) += fujitsu/
>   obj-$(CONFIG_NET_VENDOR_GOOGLE) += google/
>   obj-$(CONFIG_NET_VENDOR_HISILICON) += hisilicon/
> -obj-$(CONFIG_NET_VENDOR_HP) += hp/
>   obj-$(CONFIG_NET_VENDOR_HUAWEI) += huawei/
>   obj-$(CONFIG_NET_VENDOR_IBM) += ibm/
>   obj-$(CONFIG_NET_VENDOR_INTEL) += intel/
> diff --git a/drivers/staging/Kconfig b/drivers/staging/Kconfig
> index 6f1fa4..333308 100644
> --- a/drivers/staging/Kconfig
> +++ b/drivers/staging/Kconfig
> @@ -125,4 +125,6 @@ source "drivers/staging/exfat/Kconfig"
>   
>   source "drivers/staging/qlge/Kconfig"
>   
> +source "drivers/staging/hp/Kconfig"
> +
>   endif # STAGING
> diff --git a/drivers/staging/Makefile b/drivers/staging/Makefile
> index a90f9b3..e4943c 100644
> --- a/drivers/staging/Makefile
> +++ b/drivers/staging/Makefile
> @@ -53,3 +53,4 @@ obj-$(CONFIG_UWB)		+= uwb/
>   obj-$(CONFIG_USB_WUSB)		+= wusbcore/
>   obj-$(CONFIG_EXFAT_FS)		+= exfat/
>   obj-$(CONFIG_QLGE)		+= qlge/
> +obj-$(CONFIG_NET_VENDOR_HP)	+= hp/
> diff --git a/drivers/net/ethernet/hp/Kconfig b/drivers/staging/hp/Kconfig
> similarity index 100%
> rename from drivers/net/ethernet/hp/Kconfig
> rename to drivers/staging/hp/Kconfig
> diff --git a/drivers/net/ethernet/hp/Makefile b/drivers/staging/hp/Makefile
> similarity index 100%
> rename from drivers/net/ethernet/hp/Makefile
> rename to drivers/staging/hp/Makefile
> diff --git a/drivers/net/ethernet/hp/hp100.c b/drivers/staging/hp/hp100.c
> similarity index 100%
> rename from drivers/net/ethernet/hp/hp100.c
> rename to drivers/staging/hp/hp100.c
> diff --git a/drivers/net/ethernet/hp/hp100.h b/drivers/staging/hp/hp100.h
> similarity index 100%
> rename from drivers/net/ethernet/hp/hp100.h
> rename to drivers/staging/hp/hp100.h
> 

-- 
Jaroslav Kysela <perex@perex.cz>
Linux Sound Maintainer; ALSA Project; Red Hat, Inc.
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
