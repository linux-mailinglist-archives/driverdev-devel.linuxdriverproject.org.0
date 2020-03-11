Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id E84C818105C
	for <lists+driverdev-devel@lfdr.de>; Wed, 11 Mar 2020 07:06:29 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 92A7822005;
	Wed, 11 Mar 2020 06:06:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id lKbKwc6nX+OT; Wed, 11 Mar 2020 06:06:27 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 4E1C321544;
	Wed, 11 Mar 2020 06:06:26 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id F05531BF860
 for <devel@linuxdriverproject.org>; Wed, 11 Mar 2020 06:06:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id E8F5021544
 for <devel@linuxdriverproject.org>; Wed, 11 Mar 2020 06:06:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id YM5c60msv6HN for <devel@linuxdriverproject.org>;
 Wed, 11 Mar 2020 06:06:23 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by silver.osuosl.org (Postfix) with ESMTPS id 47AF020134
 for <devel@driverdev.osuosl.org>; Wed, 11 Mar 2020 06:06:23 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 960F921655;
 Wed, 11 Mar 2020 06:06:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1583906783;
 bh=KN+8Bn3VC9leAlT1f02Os7gMAUM2T74PCNfPOjVGbWs=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=wWo4tT1gOx3yAEZEhjPSUV27VP0nWW866DOBe9RFC0C6PJN2Q8MgE3engI4aXxTkO
 Y0QkrjLic3u26gKiuvnnXAovwfMBRrvXkt+cOJ7u7PzU4yi/cMi58QvUGClPhpeDWO
 W9oYXFjWNdxhk0zAd/NCbxO4GpZVw1T6PKT1tSpw=
Date: Wed, 11 Mar 2020 07:06:20 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Marcio Albano <marcio.ahf@gmail.com>
Subject: Re: [PATCH] staging: fbtft: Remove prohibited spaces before ')'
Message-ID: <20200311060620.GB3522362@kroah.com>
References: <20200311012533.26167-1-marcio.ahf@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200311012533.26167-1-marcio.ahf@gmail.com>
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
Cc: devel@driverdev.osuosl.org, linux-fbdev@vger.kernel.org,
 lkcamp@lists.libreplanetbr.org, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Wed, Mar 11, 2020 at 01:25:33AM +0000, Marcio Albano wrote:
> Fix checkpatch errors:
> 
> "ERROR: space prohibited before that close parenthesis ')'"
> in fbtft-bus.c:65 and fbtft-bus.c:67.
> 
> Signed-off-by: Marcio Albano <marcio.ahf@gmail.com>
> ---
>  drivers/staging/fbtft/fbtft-bus.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/staging/fbtft/fbtft-bus.c b/drivers/staging/fbtft/fbtft-bus.c
> index 63c65dd67..847cbfbbd 100644
> --- a/drivers/staging/fbtft/fbtft-bus.c
> +++ b/drivers/staging/fbtft/fbtft-bus.c
> @@ -62,9 +62,9 @@ out:									      \
>  }                                                                             \
>  EXPORT_SYMBOL(func);
>  
> -define_fbtft_write_reg(fbtft_write_reg8_bus8, u8, u8, )
> +define_fbtft_write_reg(fbtft_write_reg8_bus8, u8, u8)
>  define_fbtft_write_reg(fbtft_write_reg16_bus8, __be16, u16, cpu_to_be16)
> -define_fbtft_write_reg(fbtft_write_reg16_bus16, u16, u16, )
> +define_fbtft_write_reg(fbtft_write_reg16_bus16, u16, u16)

Always test-build your patches :(
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
