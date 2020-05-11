Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 859051CDD10
	for <lists+driverdev-devel@lfdr.de>; Mon, 11 May 2020 16:25:42 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id C721C88AD8;
	Mon, 11 May 2020 14:25:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id bsFlkiLumegm; Mon, 11 May 2020 14:25:39 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 7DC8588A8B;
	Mon, 11 May 2020 14:25:38 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id B9E421BF2B5
 for <driverdev-devel@linuxdriverproject.org>;
 Mon, 11 May 2020 14:25:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id B5E17204D8
 for <driverdev-devel@linuxdriverproject.org>;
 Mon, 11 May 2020 14:25:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id bV0OKDXtpY0r
 for <driverdev-devel@linuxdriverproject.org>;
 Mon, 11 May 2020 14:25:35 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from bombadil.infradead.org (bombadil.infradead.org
 [198.137.202.133])
 by silver.osuosl.org (Postfix) with ESMTPS id A374620117
 for <driverdev-devel@linuxdriverproject.org>;
 Mon, 11 May 2020 14:25:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20170209; h=Content-Transfer-Encoding:
 Content-Type:In-Reply-To:MIME-Version:Date:Message-ID:From:References:Cc:To:
 Subject:Sender:Reply-To:Content-ID:Content-Description;
 bh=An8LtgnEqiNOPgIdTVkv8RFxQwgfnBQgv2USdPep6KQ=; b=apWibMHddm3jKXAGXyU7Pa0ot3
 /Zw+Z4tPRnT1SICxl0OqC/ix4nM1NA5QKKVW+V6jOWd8MBrGY5irVbycoLlUWb+h4+jFyglSxzFtI
 9hJ5y8czfODhiv9ltYiHAsiz3LgbND50LL0KZyFa6lL5FZ6xKdiREOCIdY0bnvinmriRDArHr6POc
 FqhiiCCqMV/+V1z3dZxVpo7AVZrbUfMe2avfEWZ6LGcgmprpKvpGdm8dl7etXA2evT3QlYwa8SpHr
 N6n7YX/6UAxUd8LAS1PqhbEV/MJH18pt8Vz7o4usybKOQAI2mRoR/JZXuLmPK9S3WE6AAm4cPp3Xu
 cE4TvL4A==;
Received: from [2601:1c0:6280:3f0:897c:6038:c71d:ecac]
 by bombadil.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jY9N7-00009F-FM; Mon, 11 May 2020 14:25:33 +0000
Subject: Re: [PATCH RFC] drivers: most: add USB adapter driver
To: Christian Gromm <christian.gromm@microchip.com>, gregkh@linuxfoundation.org
References: <1589190675-21145-1-git-send-email-christian.gromm@microchip.com>
From: Randy Dunlap <rdunlap@infradead.org>
Message-ID: <85800dd5-952b-8a34-8907-57485d280f6f@infradead.org>
Date: Mon, 11 May 2020 07:25:31 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <1589190675-21145-1-git-send-email-christian.gromm@microchip.com>
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
Cc: driverdev-devel@linuxdriverproject.org, linux-usb@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On 5/11/20 2:51 AM, Christian Gromm wrote:
> diff --git a/drivers/most/usb/Kconfig b/drivers/most/usb/Kconfig
> new file mode 100644
> index 0000000..a86f1f6
> --- /dev/null
> +++ b/drivers/most/usb/Kconfig
> @@ -0,0 +1,14 @@
> +# SPDX-License-Identifier: GPL-2.0
> +#
> +# MOST USB configuration
> +#
> +
> +config MOST_USB
> +	tristate "USB"
> +	depends on USB && NET
> +	help
> +	  Say Y here if you want to connect via USB to network tranceiver.

	                                                       transceiver.


> +	  This device driver depends on the networking AIM.
> +
> +	  To compile this driver as a module, choose M here: the
> +	  module will be called most_usb.


-- 
~Randy

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
