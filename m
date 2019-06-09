Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id E9F473A4D8
	for <lists+driverdev-devel@lfdr.de>; Sun,  9 Jun 2019 12:45:50 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 492FF22179;
	Sun,  9 Jun 2019 10:45:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id wmtJfY3rgbwe; Sun,  9 Jun 2019 10:45:47 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 9970B214E9;
	Sun,  9 Jun 2019 10:45:46 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 597881BF3B8
 for <devel@linuxdriverproject.org>; Sun,  9 Jun 2019 10:45:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 552B9874CF
 for <devel@linuxdriverproject.org>; Sun,  9 Jun 2019 10:45:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id N3EtkQnR+yr3 for <devel@linuxdriverproject.org>;
 Sun,  9 Jun 2019 10:45:42 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id C7C1084EC0
 for <devel@driverdev.osuosl.org>; Sun,  9 Jun 2019 10:45:42 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 102AC2070B;
 Sun,  9 Jun 2019 10:45:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1560077142;
 bh=iyzGTsUWW55gkRVtB+pFp4GxvLgteEbjoCT83KVsi/k=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=tdt4DzQYcbJzghLA/iZcCAO45d8Knt7ZjIzD6pvZvttVv4BHjg2REY0K9BG1GGqN5
 GmDbdlaeOKN7BVoYkbNwivgKqva9TnqqsGH4fdlcQBEDU1oBehyo7fdkbqilxkf1Ob
 OegeBjjrhnV9cdTxbd4CEsKxzp641BsZDmAVoR14=
Date: Sun, 9 Jun 2019 12:45:40 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Hariprasad Kelam <hariprasad.kelam@gmail.com>
Subject: Re: [PATCH] staging: rtl8723bs: hal: move common code to macro
Message-ID: <20190609104540.GB7328@kroah.com>
References: <20190609103232.GA9769@hari-Inspiron-1545>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190609103232.GA9769@hari-Inspiron-1545>
User-Agent: Mutt/1.12.0 (2019-05-25)
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

On Sun, Jun 09, 2019 at 04:02:32PM +0530, Hariprasad Kelam wrote:
> 
>     As part of halbtc8723b2ant_TdmaDurationAdjust function below
>     piece of code is used many times.
> 
>     halbtc8723b2ant_PsTdma(pBtCoexist, NORMAL_EXEC, true, val);
>     pCoexDm->psTdmaDuAdjType = val;
> 
>     This patch replaces this common code with MACRO
>     HAL_BTC8723B2ANT_DMA_DURATION_ADJUST

Why is all of this indented?  And line-wrapped at an odd column?  Please
use at lines around 72 characters long.

> 
> Signed-off-by: Hariprasad Kelam <hariprasad.kelam@gmail.com>
> ---
>  drivers/staging/rtl8723bs/hal/HalBtc8723b2Ant.c | 746 ++++++++++--------------
>  1 file changed, 293 insertions(+), 453 deletions(-)
> 
> diff --git a/drivers/staging/rtl8723bs/hal/HalBtc8723b2Ant.c b/drivers/staging/rtl8723bs/hal/HalBtc8723b2Ant.c
> index cb62fc0..56d842e 100644
> --- a/drivers/staging/rtl8723bs/hal/HalBtc8723b2Ant.c
> +++ b/drivers/staging/rtl8723bs/hal/HalBtc8723b2Ant.c
> @@ -7,6 +7,13 @@
>  
>  #include "Mp_Precomp.h"
>  
> +/* defines */
> +#define HAL_BTC8723B2ANT_DMA_DURATION_ADJUST(val)			      \
> +do {									      \
> +	halbtc8723b2ant_PsTdma(pBtCoexist, NORMAL_EXEC, true, val);           \
> +	pCoexDm->psTdmaDuAdjType = val;                                       \
> +} while (0)

The goal is to move away from crazy macros, not add new ones :)

But this does make the code a lot simpler, so it's ok.  But please fix
up the changelog text and resend.

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
