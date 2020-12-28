Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id B86B72E3EDF
	for <lists+driverdev-devel@lfdr.de>; Mon, 28 Dec 2020 15:33:35 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 6539322926;
	Mon, 28 Dec 2020 14:33:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id e91n8J6wzZW6; Mon, 28 Dec 2020 14:33:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 4B092229D4;
	Mon, 28 Dec 2020 14:33:29 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 021471BF37F
 for <devel@linuxdriverproject.org>; Mon, 28 Dec 2020 14:33:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id CDC3F85A83
 for <devel@linuxdriverproject.org>; Mon, 28 Dec 2020 14:33:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id j19JK77bCPdz for <devel@linuxdriverproject.org>;
 Mon, 28 Dec 2020 14:33:24 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 72AB9870BC
 for <devel@driverdev.osuosl.org>; Mon, 28 Dec 2020 14:33:24 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id AC9AA207B2;
 Mon, 28 Dec 2020 14:33:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1609166004;
 bh=I7jE2I7TX/Q5cSqr3uhksj+C5kruZK3oQbMMN0vdYTY=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=1PysX0zkEXB/sW3+NakL6CHUzPnahHsftu92tAXe3t8f8JTCr2qN5Ji5ahBOc2NZn
 RhujTxGj/zgz3AjTAE6DORux7+PfXjd4/7cZwa7C47cE60DmoMUtmVJHyeos9bRMgK
 BQWyttwj1E/N4HJWo2RTzoBLI50FfiCWf6k2pBHU=
Date: Mon, 28 Dec 2020 15:09:07 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Daniel West <daniel.west.dev@gmail.com>
Subject: Re: [PATCH 8455/8455] staging: rtl8188eu: core: fixed a comment
 format issue.
Message-ID: <X+nnAwy/a7mZlmeL@kroah.com>
References: <20201219224312.380126-1-daniel.west.dev@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201219224312.380126-1-daniel.west.dev@gmail.com>
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
Cc: devel@driverdev.osuosl.org, insafonov@gmail.com,
 linux-kernel@vger.kernel.org, andrealmeidap1996@gmail.com,
 gustavoars@kernel.org, yepeilin.cs@gmail.com, Larry.Finger@lwfinger.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Sat, Dec 19, 2020 at 02:43:12PM -0800, Daniel West wrote:
> Fixed a checkpatch warning:
> 
> WARNING: Block comments use * on subsequent lines
>  #4595: FILE: drivers/staging/rtl8188eu/core/rtw_mlme_ext.c:4595:
> +/****************************************************************************
> +
> 
> The code is full of comments like this. Should the coding style
> be inforced here, even when there is a logic to the way the code
> was broken up?
> 
> Signed-off-by: Daniel West <daniel.west.dev@gmail.com>
> ---
>  drivers/staging/rtl8188eu/core/rtw_mlme_ext.c | 9 ++++-----
>  1 file changed, 4 insertions(+), 5 deletions(-)
> 
> diff --git a/drivers/staging/rtl8188eu/core/rtw_mlme_ext.c b/drivers/staging/rtl8188eu/core/rtw_mlme_ext.c
> index 8794907a39f4..adf2788a416f 100644
> --- a/drivers/staging/rtl8188eu/core/rtw_mlme_ext.c
> +++ b/drivers/staging/rtl8188eu/core/rtw_mlme_ext.c
> @@ -4591,11 +4591,10 @@ void mlmeext_sta_del_event_callback(struct adapter *padapter)
>  	}
>  }
>  
> -/****************************************************************************
> -
> -Following are the functions for the timer handlers
> -
> -*****************************************************************************/
> +/*
> + *
> + *Following are the functions for the timer handlers
> + */

Does that look correct?  Make it all one line please.

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
