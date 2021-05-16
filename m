Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 032EA381FA7
	for <lists+driverdev-devel@lfdr.de>; Sun, 16 May 2021 18:12:35 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 112FB4026D;
	Sun, 16 May 2021 16:12:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id imwqLwOYW40J; Sun, 16 May 2021 16:12:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 6478740245;
	Sun, 16 May 2021 16:12:31 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 27BD41BF3C0
 for <devel@linuxdriverproject.org>; Sun, 16 May 2021 16:12:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 15FD74037F
 for <devel@linuxdriverproject.org>; Sun, 16 May 2021 16:12:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=infradead.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id gnVV9r-eOs3B for <devel@linuxdriverproject.org>;
 Sun, 16 May 2021 16:12:16 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from bombadil.infradead.org (bombadil.infradead.org
 [IPv6:2607:7c80:54:e::133])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 704494035F
 for <devel@driverdev.osuosl.org>; Sun, 16 May 2021 16:12:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 Content-Type:In-Reply-To:MIME-Version:Date:Message-ID:From:References:Cc:To:
 Subject:Sender:Reply-To:Content-ID:Content-Description;
 bh=d4OZD5riXl65efBOBwCRlO9nqI7E8GwVLu0CAdMjZhg=; b=c/vrhmw6yq8QTXzFKzSKuvcW82
 WgFJrNvo4Hze5poZQKSFTJLhfVAnDeLH79tbMgkGjfGqvibY8K3C+SiPosz823nw80KH9Fqm/blhc
 yr4ZaJ5X80WRxWD64H64zLt48ovonAYV65qKDTENWec/kKgDMpF1eY0dUrBtZn99TVTESC42GzeRk
 zOe7KvGCJQYfLwhYzqpqaPZuKrKaaF8OYCSsx/28qvOauS4YlwOFMvsGUG8yBhFn3wQmSDiSo4Sov
 ZHIG4G+xmqzMRHmSa3/K7hByFggKAlyegFmlz1TdYFA1RSmIkOqBLeK/YUQbioLnSetM43op5/Kfl
 Uv0+K9Eg==;
Received: from [2601:1c0:6280:3f0::7376]
 by bombadil.infradead.org with esmtpsa (Exim 4.94 #2 (Red Hat Linux))
 id 1liJNC-00D1u3-BA; Sun, 16 May 2021 16:12:10 +0000
Subject: Re: [PATCH 01/17] staging: add support for NUC WMI LEDs
To: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>,
 gregkh@linuxfoundation.org
References: <cover.1621161037.git.mchehab+huawei@kernel.org>
 <7cec257fcc6e5789e5620495674e442a727a766f.1621161037.git.mchehab+huawei@kernel.org>
From: Randy Dunlap <rdunlap@infradead.org>
Message-ID: <585a7a4d-29dd-669a-fc0e-d4fdab84b3f1@infradead.org>
Date: Sun, 16 May 2021 09:12:09 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.0
MIME-Version: 1.0
In-Reply-To: <7cec257fcc6e5789e5620495674e442a727a766f.1621161037.git.mchehab+huawei@kernel.org>
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
Cc: devel@driverdev.osuosl.org, linux-staging@lists.linux.dev,
 linuxarm@huawei.com, linux-kernel@vger.kernel.org, Pavel Machek <pavel@ucw.cz>,
 mauro.chehab@huawei.com, Mauro Carvalho Chehab <mchehab@kernel.org>,
 linux-leds@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi Mauro,

On 5/16/21 3:53 AM, Mauro Carvalho Chehab wrote:
> diff --git a/drivers/staging/nuc-led/Kconfig b/drivers/staging/nuc-led/Kconfig
> new file mode 100644
> index 000000000000..0f870f45bf44
> --- /dev/null
> +++ b/drivers/staging/nuc-led/Kconfig
> @@ -0,0 +1,11 @@
> +# SPDX-License-Identifier: GPL-2.0
> +
> +config LEDS_NUC_WMI
> +	tristate "Intel NUC WMI support for LEDs"
> +	depends on LEDS_CLASS
> +	depends on ACPI_WMI
> +	help
> +	  Enable this to support the Intel NUC WMI support for

Don't use "support" 2 times. Maybe:

	  Enable this to support the Intel NUC WMI interface for
or
	  Enable this to build the Intel NUC WMI support for


> +	  LEDs, starting from NUCi8 and upper devices.

Does "upper" mean "later"?  Or more advanced?  Not clear.


> +
> +	  To compile this driver as a module, choose M here.

thanks.
-- 
~Randy

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
