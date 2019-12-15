Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id E06C611FA65
	for <lists+driverdev-devel@lfdr.de>; Sun, 15 Dec 2019 19:28:22 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 2C63886B2D;
	Sun, 15 Dec 2019 18:28:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id SNsnAbPKkaPV; Sun, 15 Dec 2019 18:28:20 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 0FA3B86905;
	Sun, 15 Dec 2019 18:28:20 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 81EDA1BF59D
 for <devel@linuxdriverproject.org>; Sun, 15 Dec 2019 18:28:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 7ECE187BD4
 for <devel@linuxdriverproject.org>; Sun, 15 Dec 2019 18:28:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Sj9poPkj8g3s for <devel@linuxdriverproject.org>;
 Sun, 15 Dec 2019 18:28:16 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id EE3A987BC8
 for <devel@driverdev.osuosl.org>; Sun, 15 Dec 2019 18:28:16 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 4EB93206E0;
 Sun, 15 Dec 2019 18:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1576434496;
 bh=FJoCcm3/m6bmGnsMRlppEMrCQYBjPw89R85uQ5q+42s=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Mu/uaV7tJ4lQeAsVtSTM+UXRFX2qogrSRvRYzofFP1KeMqKSFfzlwhC9inkJRc1Qk
 a/ccQJSFTKhlLnWTOsMX/KiNKgC7Srcu3O73oZeH0uZIqwmPTwqqUMID1n53KfKhnc
 PUduw/Yng/jpKXaIzMf32r7ZWDtwmLDcrOIZeuL4=
Date: Sun, 15 Dec 2019 19:28:14 +0100
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Aditya Pakki <pakki001@umn.edu>
Subject: Re: [PATCH] staging: kpc2000: replace assertion with recovery code
Message-ID: <20191215182814.GA859066@kroah.com>
References: <20191215181243.31519-1-pakki001@umn.edu>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191215181243.31519-1-pakki001@umn.edu>
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
Cc: devel@driverdev.osuosl.org, Harsh Jain <harshjain32@gmail.com>,
 Vandana BN <bnvandana@gmail.com>, kjlu@umn.edu, linux-kernel@vger.kernel.org,
 Simon =?iso-8859-1?Q?Sandstr=F6m?= <simon@nikanor.nu>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Sun, Dec 15, 2019 at 12:12:37PM -0600, Aditya Pakki wrote:
> In kpc_dma_transfer, if either priv or ldev is NULL, crashing the
> process is excessive and is not needed. Instead of asserting, by
> passing the error upstream, the error can be handled.
> 
> Signed-off-by: Aditya Pakki <pakki001@umn.edu>
> ---
>  drivers/staging/kpc2000/kpc_dma/fileops.c | 6 ++++--
>  1 file changed, 4 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/staging/kpc2000/kpc_dma/fileops.c b/drivers/staging/kpc2000/kpc_dma/fileops.c
> index cb52bd9a6d2f..1c4633267cc1 100644
> --- a/drivers/staging/kpc2000/kpc_dma/fileops.c
> +++ b/drivers/staging/kpc2000/kpc_dma/fileops.c
> @@ -49,9 +49,11 @@ static int kpc_dma_transfer(struct dev_private_data *priv,
>  	u64 dma_addr;
>  	u64 user_ctl;
>  
> -	BUG_ON(priv == NULL);
> +	if (!priv)
> +		return -EINVAL;

How can prive ever be NULL here?  Can you track back to all callers to
verify this?  If so, just remove the check.

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
