Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id B6A9427787E
	for <lists+driverdev-devel@lfdr.de>; Thu, 24 Sep 2020 20:28:36 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id E5747874D3;
	Thu, 24 Sep 2020 18:28:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 9Z0omezZVMMY; Thu, 24 Sep 2020 18:28:34 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id AA261874BA;
	Thu, 24 Sep 2020 18:28:30 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 5B63E1BF2C4
 for <devel@linuxdriverproject.org>; Thu, 24 Sep 2020 18:28:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 03C0980C0D
 for <devel@linuxdriverproject.org>; Thu, 24 Sep 2020 18:28:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id wH-qDbpOmkph for <devel@linuxdriverproject.org>;
 Thu, 24 Sep 2020 18:28:26 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from casper.infradead.org (casper.infradead.org [90.155.50.34])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 6AFED8692E
 for <devel@driverdev.osuosl.org>; Thu, 24 Sep 2020 18:28:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:Content-Type:
 In-Reply-To:MIME-Version:Date:Message-ID:From:References:Cc:To:Subject:Sender
 :Reply-To:Content-ID:Content-Description;
 bh=FEJKKUUh/Ot2fFnX5t8ZvtLSIAuUMLRSQUjaucbjKZA=; b=cI4G7XB4g3iEml7qjYoEKzy7k4
 wNL/N0/JzKlVoylM4Ls43Pyvy6ZH4GEy+hFmO0Onp1oTP1GZGorQ/HCLb8pQKclqhUQKJ0u8ysByS
 zMMHGnvhaPpT3v7OfVu8Nx4AwGHWwbDjphofETUI5TrCQ1mCCdhvFTY/77AgD7fM7NIJvDwEFxY/0
 nNUmzHiWEyTCmKSRIatuOkJpuUjq68IZoG6Ff1c5nAsAA4NQZ815ykDNQ/hoy5NXSokgl0pSVeODs
 yj7Edg2RAmOogYBUy3eVcu06yJvvJZpL40ATiLrwjdtazCTNjtuOoDQO7p1jbHydL0BOeuaP/G2cF
 klb4co8g==;
Received: from [2601:1c0:6280:3f0::19c2]
 by casper.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kLVyV-0003VC-Ee; Thu, 24 Sep 2020 18:28:11 +0000
Subject: Re: [PATCH] staging: Initial driver submission for pureLiFi devices
To: Srinivasan Raju <srini.raju@purelifi.com>
References: <20200924151910.21693-1-srini.raju@purelifi.com>
From: Randy Dunlap <rdunlap@infradead.org>
Message-ID: <a57f6bf1-2504-577b-4316-ed609dbb17ee@infradead.org>
Date: Thu, 24 Sep 2020 11:28:07 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <20200924151910.21693-1-srini.raju@purelifi.com>
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
Cc: "open list:STAGING SUBSYSTEM" <devel@driverdev.osuosl.org>,
 Rob Herring <robh@kernel.org>, pureLiFi Ltd <info@purelifi.com>,
 Mauro Carvalho Chehab <mchehab+huawei@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, mostafa.afgani@purelifi.com,
 open list <linux-kernel@vger.kernel.org>,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi,

On 9/24/20 8:18 AM, Srinivasan Raju wrote:
> diff --git a/drivers/staging/purelifi/Kconfig b/drivers/staging/purelifi/Kconfig
> new file mode 100644
> index 000000000000..db24bdf884a3
> --- /dev/null
> +++ b/drivers/staging/purelifi/Kconfig
> @@ -0,0 +1,42 @@
> +config WLAN_VENDOR_PURELIFI
> +	bool "pureLiFi devices"
> +	default y
> +	help
> +	  If you have a pureLiFi device, say Y.
> +
> +	  Note that the answer to this question doesn't directly affect the
> +	  kernel: saying N will just cause the configurator to skip all the
> +	  questions about these cards. If you say Y, you will be asked for
> +	  your specific card in the following questions.
> +
> +if WLAN_VENDOR_PURELIFI
> +
> +config PURELIFI
> +
> +	tristate "pureLiFi device support"
> +	depends on CFG80211 && MAC80211 && USB
> +	help
> +	   Say Y if you want to use LiFi

	                            LiFi.
> +
> +	   This driver makes the adapter appear as a normal WLAN interface

	                                                         interface.

> +
> +	   The pureLiFi device requires external STA firmware to be loaded.
> +
> +	   To compile this driver as a module, choose M here: the
> +	   module will be called purelifi.
> +
> +config PURELIFI_AP
> +
> +	tristate "pureLiFi device Access Point support"
> +	depends on CFG80211 && MAC80211 && USB

From a brief look at the Makefile, it appears that the AP cannot be built alone;
i.e., I think that this needs:

	depends on PURELIFI

> +	help
> +	   Say Y if you want to use LiFi Access-Point

	                            LiFi as an Access Point.
or
	                            LiFi in Access Point mode.
or make something up. :)

> +
> +	   This driver makes the adapter appear as a normal WLAN interface

	                                                         interface.

> +
> +	   The pureLiFi device requires external AP firmware to be loaded.
> +
> +	   To compile this driver as a module, choose M here: the
> +	   module will be called purelifi.

Same module, not a separate one, right?

> +
> +endif # WLAN_VENDOR_PURELIFI
> diff --git a/drivers/staging/purelifi/Makefile b/drivers/staging/purelifi/Makefile
> new file mode 100644
> index 000000000000..a8483fbb966c
> --- /dev/null
> +++ b/drivers/staging/purelifi/Makefile
> @@ -0,0 +1,5 @@
> +obj-$(CONFIG_PURELIFI)		:= purelifi.o
> +purelifi-objs 		+= chip.o usb.o mac.o
> +ifeq ($(CONFIG_PURELIFI_AP),m)

Why does this check for CONFIG_PURELIFI_AP=m ?
How about if CONFIG_PURELIFI_AP=y ?

> +	ccflags-y += -DTYPE_AP
> +endif

It would be more common just to check for CONFIG_PURELIFI_AP in the source
file(s) instead of adding a synonym for it.

-- 
~Randy

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
