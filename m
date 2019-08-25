Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 203C29C4A2
	for <lists+driverdev-devel@lfdr.de>; Sun, 25 Aug 2019 17:15:55 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 2BBF320004;
	Sun, 25 Aug 2019 15:15:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ump5HK7r7qzh; Sun, 25 Aug 2019 15:15:49 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 098252052D;
	Sun, 25 Aug 2019 15:15:48 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id D68991BF592
 for <devel@linuxdriverproject.org>; Sun, 25 Aug 2019 15:15:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id D3B42858F5
 for <devel@linuxdriverproject.org>; Sun, 25 Aug 2019 15:15:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id fP3OVYmUNHIL for <devel@linuxdriverproject.org>;
 Sun, 25 Aug 2019 15:15:45 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 6720A858D3
 for <devel@driverdev.osuosl.org>; Sun, 25 Aug 2019 15:15:45 +0000 (UTC)
Received: from archlinux (cpc149474-cmbg20-2-0-cust94.5-4.cable.virginm.net
 [82.4.196.95])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id EC358206B7;
 Sun, 25 Aug 2019 15:15:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1566746145;
 bh=tRpJQfihq8gr/PN//GQjyQ84R73rV9qUx8tON+YhPzM=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=GmZfQueqN9y9cu0ZEMNg4/KR+ElJhPWUhO/0n8g2op+J16vz01uxcwUISFLssOGSU
 yKQ3YZobntPvs2zOn8tRkVHo0ORTpo+fOCHGyQF9tp3aH8Szo9G7n5DNSwv/2CfHsN
 qCd3mjYAGTy6dgTW5L+J6aIAZo0c4bmDfMsmlTl4=
Date: Sun, 25 Aug 2019 16:15:38 +0100
From: Jonathan Cameron <jic23@kernel.org>
To: Beniamin Bia <beniamin.bia@analog.com>
Subject: Re: [PATCH v3 2/4] MAINTAINERS: Add Beniamin Bia for AD7606 driver
Message-ID: <20190825161538.58420cf6@archlinux>
In-Reply-To: <20190821141656.4815-2-beniamin.bia@analog.com>
References: <20190821141656.4815-1-beniamin.bia@analog.com>
 <20190821141656.4815-2-beniamin.bia@analog.com>
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
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
Cc: devel@driverdev.osuosl.org, mark.rutland@arm.com, lars@metafoo.de,
 biabeniamin@outlook.com, Michael.Hennerich@analog.com,
 devicetree@vger.kernel.org, linux-iio@vger.kernel.org,
 gregkh@linuxfoundation.org, linus.walleij@linaro.org,
 linux-kernel@vger.kernel.org, nicolas.ferre@microchip.com, robh+dt@kernel.org,
 pmeerw@pmeerw.net, knaack.h@gmx.de, mchehab+samsung@kernel.org,
 paulmck@linux.ibm.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Wed, 21 Aug 2019 17:16:54 +0300
Beniamin Bia <beniamin.bia@analog.com> wrote:

> Add Beniamin Bia as maintainer for AD7606 driver.
> 
> Signed-off-by: Beniamin Bia <beniamin.bia@analog.com>
Applied to the togreg branch of iio.git and pushed out as testing
for the autobuilders to probably ignore it.

Thanks,

Jonathan

> ---
> Changes in v3:
> -nothing changed
> 
>  MAINTAINERS | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/MAINTAINERS b/MAINTAINERS
> index ad498428b38c..052d7a8591fb 100644
> --- a/MAINTAINERS
> +++ b/MAINTAINERS
> @@ -895,6 +895,7 @@ F:	Documentation/devicetree/bindings/iio/adc/adi,ad7124.txt
>  
>  ANALOG DEVICES INC AD7606 DRIVER
>  M:	Stefan Popa <stefan.popa@analog.com>
> +M:	Beniamin Bia <beniamin.bia@analog.com>
>  L:	linux-iio@vger.kernel.org
>  W:	http://ez.analog.com/community/linux-device-drivers
>  S:	Supported

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
