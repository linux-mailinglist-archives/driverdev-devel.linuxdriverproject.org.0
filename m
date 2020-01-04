Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id B68811303D4
	for <lists+driverdev-devel@lfdr.de>; Sat,  4 Jan 2020 19:11:29 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id A2EB4203BE;
	Sat,  4 Jan 2020 18:11:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id kWrOXrjzP7Vc; Sat,  4 Jan 2020 18:11:26 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id BDDE420455;
	Sat,  4 Jan 2020 18:11:24 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 3F5441BF475
 for <devel@linuxdriverproject.org>; Sat,  4 Jan 2020 18:11:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 3C0EB86742
 for <devel@linuxdriverproject.org>; Sat,  4 Jan 2020 18:11:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id hDGkefPmqy-Z for <devel@linuxdriverproject.org>;
 Sat,  4 Jan 2020 18:11:22 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 4452685B8A
 for <devel@driverdev.osuosl.org>; Sat,  4 Jan 2020 18:11:22 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 7A9CE222C4;
 Sat,  4 Jan 2020 18:11:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1578161481;
 bh=Ptj9u9fQjF9EMK9Gro45UkvbIInUQxphp5m/v+6NImw=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=g2B78S1hC6LXyJqfrO9ggU9Ty6ZwAGzxexn63SYAAVg6Szlwi5Y5F9XE4qlaHnucY
 hc6fOadlD6vCx+TsjPj//yvDsmxRW6Sgx+nrelhg+cAW7tciBaCUf2pCvxh7Hcii1h
 ExIZ/hN52IPdS+W2IWtyleYnNQk8rU8xilPTfzhM=
Date: Sat, 4 Jan 2020 19:11:17 +0100
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Masahiro Yamada <masahiroy@kernel.org>
Subject: Re: [PATCH] staging: most: remove header include path to
 drivers/staging
Message-ID: <20200104181117.GA1479922@kroah.com>
References: <20200104161827.18960-1-masahiroy@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200104161827.18960-1-masahiroy@kernel.org>
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
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Sun, Jan 05, 2020 at 01:18:27AM +0900, Masahiro Yamada wrote:
> There is no need to add "ccflags-y += -I $(srctree)/drivers/staging"
> just for including <most/core.h>.
> 
> Use the #include "..." directive with the correct relative path.
> 
> Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
> ---
> 
>  drivers/staging/most/Makefile       | 1 -
>  drivers/staging/most/cdev/Makefile  | 1 -
>  drivers/staging/most/cdev/cdev.c    | 3 ++-
>  drivers/staging/most/configfs.c     | 3 ++-
>  drivers/staging/most/core.c         | 3 ++-
>  drivers/staging/most/dim2/Makefile  | 1 -
>  drivers/staging/most/dim2/dim2.c    | 2 +-
>  drivers/staging/most/i2c/Makefile   | 1 -
>  drivers/staging/most/i2c/i2c.c      | 2 +-
>  drivers/staging/most/net/Makefile   | 1 -
>  drivers/staging/most/net/net.c      | 3 ++-
>  drivers/staging/most/sound/Makefile | 1 -
>  drivers/staging/most/sound/sound.c  | 3 ++-
>  drivers/staging/most/usb/Makefile   | 1 -
>  drivers/staging/most/usb/usb.c      | 3 ++-
>  drivers/staging/most/video/Makefile | 1 -
>  drivers/staging/most/video/video.c  | 2 +-
>  17 files changed, 15 insertions(+), 17 deletions(-)
> 
> diff --git a/drivers/staging/most/Makefile b/drivers/staging/most/Makefile
> index 85ea5a434ced..20a99ecb37c4 100644
> --- a/drivers/staging/most/Makefile
> +++ b/drivers/staging/most/Makefile
> @@ -2,7 +2,6 @@
>  obj-$(CONFIG_MOST) += most_core.o
>  most_core-y := core.o
>  most_core-y += configfs.o
> -ccflags-y += -I $(srctree)/drivers/staging/
>  
>  obj-$(CONFIG_MOST_CDEV)	+= cdev/
>  obj-$(CONFIG_MOST_NET)	+= net/

This all was done on purpose to make a follow-on patch much simpler that
I didn't end up taking as it still needed more work.

But I do agree with it, we shouldn't be abusing ccflags here, I'll go
queue this up in a day or so, thanks for this.

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
