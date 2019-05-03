Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A739127A6
	for <lists+driverdev-devel@lfdr.de>; Fri,  3 May 2019 08:22:48 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id D9776856B7;
	Fri,  3 May 2019 06:22:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id R7k+67uMrjgV; Fri,  3 May 2019 06:22:45 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 9A39085078;
	Fri,  3 May 2019 06:22:44 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id BF3E31BF37B
 for <devel@linuxdriverproject.org>; Fri,  3 May 2019 06:22:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id BCA60867DA
 for <devel@linuxdriverproject.org>; Fri,  3 May 2019 06:22:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id YHpj0UzK7oT2 for <devel@linuxdriverproject.org>;
 Fri,  3 May 2019 06:22:42 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 461F8866E4
 for <devel@driverdev.osuosl.org>; Fri,  3 May 2019 06:22:42 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 8EA57206DF;
 Fri,  3 May 2019 06:22:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1556864562;
 bh=SFt2Q6o5JVBgeAkxde1y5TMHPH00koLmrDQtDt0camY=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=mDKahD+guA0fw30UkXo4tzV6udAMS07Ak9mvvJJvUo+JXwGJXLjtE1RYa6QSuDPFe
 fFIEQm3q9knlg47iCdZpbZraaDipuxAIQCtazCRHVsvwPZD42gOPwJFwxg3ogxK4Dk
 Et39TcyRpA1YxOzwFjfEUxttHxjIEMjqobLSqkqQ=
Date: Fri, 3 May 2019 08:22:39 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Nathan Chancellor <natechancellor@gmail.com>
Subject: Re: [PATCH] staging: kpc2000: kpc_spi: Fix build error for
 {read,write}q
Message-ID: <20190503062239.GB319@kroah.com>
References: <20190503020630.15778-1-natechancellor@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190503020630.15778-1-natechancellor@gmail.com>
User-Agent: Mutt/1.11.4 (2019-03-13)
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

On Thu, May 02, 2019 at 07:06:30PM -0700, Nathan Chancellor wrote:
> drivers/staging/kpc2000/kpc_spi/spi_driver.c:158:11: error: implicit
> declaration of function 'readq' [-Werror,-Wimplicit-function-declaration]
> drivers/staging/kpc2000/kpc_spi/spi_driver.c:167:5: error: implicit
> declaration of function 'writeq' [-Werror,-Wimplicit-function-declaration]
> 
> Same as commit 91b6cb7216cd ("staging: kpc2000: fix up build problems
> with readq()").
> 
> Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
> ---
>  drivers/staging/kpc2000/kpc_spi/spi_driver.c | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/drivers/staging/kpc2000/kpc_spi/spi_driver.c b/drivers/staging/kpc2000/kpc_spi/spi_driver.c
> index 074a578153d0..3ace4e5c1284 100644
> --- a/drivers/staging/kpc2000/kpc_spi/spi_driver.c
> +++ b/drivers/staging/kpc2000/kpc_spi/spi_driver.c
> @@ -10,6 +10,7 @@
>  #include <linux/kernel.h>
>  #include <linux/init.h>
>  #include <linux/interrupt.h>
> +#include <linux/io-64-nonatomic-lo-hi.h>
>  #include <linux/module.h>
>  #include <linux/device.h>
>  #include <linux/delay.h>
> -- 
> 2.21.0

Ah, good catch, I missed this file, sorry.

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
