Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id BBB633122B5
	for <lists+driverdev-devel@lfdr.de>; Sun,  7 Feb 2021 09:31:30 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id D967486DA0;
	Sun,  7 Feb 2021 08:31:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id M6S5fsJO9sUn; Sun,  7 Feb 2021 08:31:27 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 003E486C1C;
	Sun,  7 Feb 2021 08:31:25 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 5923B1BF96B
 for <devel@linuxdriverproject.org>; Sun,  7 Feb 2021 08:31:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 403A7204FC
 for <devel@linuxdriverproject.org>; Sun,  7 Feb 2021 08:31:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 6FKz-TQ9gcow for <devel@linuxdriverproject.org>;
 Sun,  7 Feb 2021 08:31:22 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by silver.osuosl.org (Postfix) with ESMTPS id 753EB20499
 for <devel@driverdev.osuosl.org>; Sun,  7 Feb 2021 08:31:22 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id A3B6E64E30;
 Sun,  7 Feb 2021 08:31:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1612686681;
 bh=M3PH+chd17Y34z36kJqmIdtJdfNBKaFZ1Kv4CHgD2OI=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=KQ/u0DT4rWsmpteZpoewVkCesHjCd3R7GTGmWbIpaVsUTCd2HPsCOrGrZL6pLlFGr
 yr1p38UgU/KZXR0SmWJE1AD0as9nREMIMEyaZqODbi8TI3yRrBxprOHQEMMJvgiV3H
 zRbM0NUgrRnh2EBJ/HZSYrNecpn03Llk1fZaR+Zs=
Date: Sun, 7 Feb 2021 09:31:17 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Kumar Kartikeya Dwivedi <memxor@gmail.com>
Subject: Re: [PATCH] staging: emxx_udc: Fix incorrectly defined global
Message-ID: <YB+lVey4DAXxEPmF@kroah.com>
References: <20210207000030.256592-1-memxor@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210207000030.256592-1-memxor@gmail.com>
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
Cc: devel@driverdev.osuosl.org, Stephen Rothwell <sfr@canb.auug.org.au>,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Sun, Feb 07, 2021 at 05:30:31AM +0530, Kumar Kartikeya Dwivedi wrote:
> The global gpio_desc pointer and int were defined in the header,
> instead put the definitions in the translation unit and add an extern
> declaration for consumers of the header (currently only one, which is
> perhaps why the linker didn't complain about symbol collisions).
> 
> This fixes sparse related warnings for this driver:
> drivers/staging/emxx_udc/emxx_udc.c: note: in included file:
> drivers/staging/emxx_udc/emxx_udc.h:23:18: warning: symbol 'vbus_gpio' was not declared. Should it be static?
> drivers/staging/emxx_udc/emxx_udc.h:24:5: warning: symbol 'vbus_irq' was not declared. Should it be static?
> 
> Signed-off-by: Kumar Kartikeya Dwivedi <memxor@gmail.com>
> ---
>  drivers/staging/emxx_udc/emxx_udc.c | 3 +++
>  drivers/staging/emxx_udc/emxx_udc.h | 4 ++--
>  2 files changed, 5 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/staging/emxx_udc/emxx_udc.c b/drivers/staging/emxx_udc/emxx_udc.c
> index a30b4f5b1..6983c3e31 100644
> --- a/drivers/staging/emxx_udc/emxx_udc.c
> +++ b/drivers/staging/emxx_udc/emxx_udc.c
> @@ -34,6 +34,9 @@
>  #define	DRIVER_DESC	"EMXX UDC driver"
>  #define	DMA_ADDR_INVALID	(~(dma_addr_t)0)
>  
> +struct gpio_desc *vbus_gpio;
> +int vbus_irq;

A tiny driver can not create global variables with generic names like
this, sorry.  That will polute the global namespace.

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
