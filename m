Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F1E039D1D
	for <lists+driverdev-devel@lfdr.de>; Sat,  8 Jun 2019 13:20:35 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 9C04086838;
	Sat,  8 Jun 2019 11:20:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id hyKJ5+CBDfWX; Sat,  8 Jun 2019 11:20:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id B2B8C8682A;
	Sat,  8 Jun 2019 11:20:31 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 8E4711BF389
 for <devel@linuxdriverproject.org>; Sat,  8 Jun 2019 11:20:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 8ABC62150F
 for <devel@linuxdriverproject.org>; Sat,  8 Jun 2019 11:20:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 61XAz6ztdzlN for <devel@linuxdriverproject.org>;
 Sat,  8 Jun 2019 11:20:29 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by silver.osuosl.org (Postfix) with ESMTPS id 00B8E20471
 for <devel@driverdev.osuosl.org>; Sat,  8 Jun 2019 11:20:28 +0000 (UTC)
Received: from archlinux (cpc149474-cmbg20-2-0-cust94.5-4.cable.virginm.net
 [82.4.196.95])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 0C7D9214AE;
 Sat,  8 Jun 2019 11:20:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1559992828;
 bh=FXMideIF/i7BlqdYMx4NE3DjZcbXMBRlAq1d9sy/jAU=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=H23J+hIpmBfyH9PXu0JdQJ0s5ae391wL0DDdQOJhfBk4Ya2ea5X0rrRM0uFiyw+6q
 TeKnTL1EVfjuiD/hIMS2J/I4+2j0zpXavDRvlXy4pB5v1T2hp6IFGgnyuPsHIk8lhc
 mL8npCdgsImvm2PQyz/7L4elNJPuRIsQ7TN6TBB0=
Date: Sat, 8 Jun 2019 12:20:22 +0100
From: Jonathan Cameron <jic23@kernel.org>
To: Renato Lui Geh <renatogeh@gmail.com>
Subject: Re: [PATCH v2 2/2] MAINTAINERS: add entry for ad7780 adc driver
Message-ID: <20190608122000.46440386@archlinux>
In-Reply-To: <7ccb64ba4da8f24981009187e975d71372d62fbf.1558746978.git.renatogeh@gmail.com>
References: <cover.1558746978.git.renatogeh@gmail.com>
 <7ccb64ba4da8f24981009187e975d71372d62fbf.1558746978.git.renatogeh@gmail.com>
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
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
Cc: mark.rutland@arm.com, devel@driverdev.osuosl.org, lars@metafoo.de,
 pmeerw@pmeerw.net, Michael.Hennerich@analog.com, devicetree@vger.kernel.org,
 linux-iio@vger.kernel.org, gregkh@linuxfoundation.org,
 linux-kernel@vger.kernel.org, kernel-usp@googlegroups.com, robh+dt@kernel.org,
 stefan.popa@analog.com, knaack.h@gmx.de, alexandru.Ardelean@analog.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Fri, 24 May 2019 22:26:55 -0300
Renato Lui Geh <renatogeh@gmail.com> wrote:

> This patch adds a MAINTAINERS entry for the AD7780 ADC driver.
> 
> Signed-off-by: Renato Lui Geh <renatogeh@gmail.com>
Applied to the togreg branch of iio.git and pushed out as testing
to be completely ignored by the autobuilders.

Thanks,

Jonathan

> ---
>  MAINTAINERS | 9 +++++++++
>  1 file changed, 9 insertions(+)
> 
> diff --git a/MAINTAINERS b/MAINTAINERS
> index 54c8e14fae98..d12685c5b09a 100644
> --- a/MAINTAINERS
> +++ b/MAINTAINERS
> @@ -880,6 +880,15 @@ S:	Supported
>  F:	drivers/iio/adc/ad7768-1.c
>  F:	Documentation/devicetree/bindings/iio/adc/adi,ad7768-1.txt
>  
> +ANALOG DEVICES INC AD7780 DRIVER
> +M:	Michael Hennerich <Michael.Hennerich@analog.com>
> +M:	Renato Lui Geh <renatogeh@gmail.com>
> +L:	linux-iio@vger.kernel.org
> +W:	http://ez.analog.com/community/linux-device-drivers
> +S:	Supported
> +F:	drivers/iio/adc/ad7780.c
> +F:	Documentation/devicetree/bindings/iio/adc/adi,ad7780.yaml
> +
>  ANALOG DEVICES INC AD9389B DRIVER
>  M:	Hans Verkuil <hans.verkuil@cisco.com>
>  L:	linux-media@vger.kernel.org

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
