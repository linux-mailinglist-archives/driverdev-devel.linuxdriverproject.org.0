Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 488D918E859
	for <lists+driverdev-devel@lfdr.de>; Sun, 22 Mar 2020 12:26:21 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id B13B920534;
	Sun, 22 Mar 2020 11:26:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 0hNwhxd3jR1X; Sun, 22 Mar 2020 11:26:18 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 944AF20478;
	Sun, 22 Mar 2020 11:26:17 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 459B41BF3EF
 for <devel@linuxdriverproject.org>; Sun, 22 Mar 2020 11:26:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 3C17F87626
 for <devel@linuxdriverproject.org>; Sun, 22 Mar 2020 11:26:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id uOwsOe8hHeh9 for <devel@linuxdriverproject.org>;
 Sun, 22 Mar 2020 11:26:14 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 75DDD86ECA
 for <devel@driverdev.osuosl.org>; Sun, 22 Mar 2020 11:26:14 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id C2D5B20714;
 Sun, 22 Mar 2020 11:26:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1584876374;
 bh=OiEurEKKZLz5Mz/S8byIrRQLkbRiNo+3AQ/w5bAcbtc=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=tw1uBt6AVm9fR0Xz7qaVF5w0nKkfyu1KIAtPS2JdW9IsDUdJb3E9L3+SzE4mvVqeq
 t9WBALmeuagUxTf8sL7Ooa3/rwIqa2VtVRONMjEhNAHhw8ut6LINCWsqzoduin2/rH
 m7NuJdJ2b+D3JvG2RRxYywWxTR0EonV6Tw59cXY8=
Date: Sun, 22 Mar 2020 12:26:11 +0100
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: "John B. Wyatt IV" <jbwyatt4@gmail.com>
Subject: Re: [PATCH] staging: vt6656: remove unneeded variable: ret
Message-ID: <20200322112611.GB75383@kroah.com>
References: <20200322092303.2518033-1-jbwyatt4@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200322092303.2518033-1-jbwyatt4@gmail.com>
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
Cc: devel@driverdev.osuosl.org, Oscar Carter <oscar.carter@gmx.com>,
 Malcolm Priestley <tvboxspy@gmail.com>, linux-kernel@vger.kernel.org,
 Julia Lawall <julia.lawall@inria.fr>, outreachy-kernel@googlegroups.com,
 Forest Bond <forest@alittletooquiet.net>,
 Colin Ian King <colin.king@canonical.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Sun, Mar 22, 2020 at 02:23:03AM -0700, John B. Wyatt IV wrote:
> Remove unneeded variable ret; replace with 0 for the return value.
> 
> Update function documentation (comment) on the return status as
> suggested by Julia Lawall <julia.lawall@inria.fr>.
> 
> Issue reported by coccinelle (coccicheck).
> 
> Signed-off-by: John B. Wyatt IV <jbwyatt4@gmail.com>
> ---
>  drivers/staging/vt6656/card.c | 6 ++----
>  1 file changed, 2 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/staging/vt6656/card.c b/drivers/staging/vt6656/card.c
> index dc3ab10eb630..05b57a2489a0 100644
> --- a/drivers/staging/vt6656/card.c
> +++ b/drivers/staging/vt6656/card.c
> @@ -716,13 +716,11 @@ int vnt_radio_power_off(struct vnt_private *priv)
>   *  Out:
>   *      none
>   *
> - * Return Value: true if success; otherwise false
> + * Return Value: 0

If this always returns something, why have it return anything at all?

Why not make this a patch series, doing this, and then fixing up the
callers and the function to not return anything.

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
