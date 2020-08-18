Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id F3F1D2486A6
	for <lists+driverdev-devel@lfdr.de>; Tue, 18 Aug 2020 16:04:53 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 465362040F;
	Tue, 18 Aug 2020 14:04:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id i6rrxbZemqoI; Tue, 18 Aug 2020 14:04:50 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id AC855203F8;
	Tue, 18 Aug 2020 14:04:47 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 667901BF33B
 for <devel@linuxdriverproject.org>; Tue, 18 Aug 2020 14:04:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 531C820416
 for <devel@linuxdriverproject.org>; Tue, 18 Aug 2020 14:04:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id mAn9t0yvfe5L for <devel@linuxdriverproject.org>;
 Tue, 18 Aug 2020 14:04:22 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by silver.osuosl.org (Postfix) with ESMTPS id 0358420402
 for <devel@driverdev.osuosl.org>; Tue, 18 Aug 2020 14:04:21 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id C7CEC20706;
 Tue, 18 Aug 2020 14:04:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1597759461;
 bh=c2D1W1WAEbnGki8pgGD1y2UNuufiUemfW628epYqJmA=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=KNjeCFJ3lSN2VUfcrhFTKSoHTWgGiIgACL4ok9EUkYxzTVOcuYs9uL2f8k8odLdd2
 WDSEbLT++gGGz5m0InOXnPSK+9te4aYNJ6o39+26RLuxKj1yUfia9hg/++/DDirX/V
 FonqkKSf8yOXMtAQcAuNB1IDxP34GBx+5tYn3WyE=
Date: Tue, 18 Aug 2020 16:04:44 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Mohammed Rushad <mohammedrushad@gmail.com>
Subject: Re: [PATCH] staging: rtl8723bs: os_dep: fix coding style issue in
 xmit_linux.c
Message-ID: <20200818140444.GB547677@kroah.com>
References: <20200802185644.19674-1-mohammedrushad@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200802185644.19674-1-mohammedrushad@gmail.com>
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
Cc: devel@driverdev.osuosl.org, vkor@vkten.in, yanaijie@huawei.com,
 linux-kernel@vger.kernel.org, hdegoede@redhat.com, john.oldman@polehill.co.uk,
 Larry.Finger@lwfinger.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Mon, Aug 03, 2020 at 12:26:44AM +0530, Mohammed Rushad wrote:
> This is a patch to the xmit_linux.c file that fixes brace and missing
> line warning found by checkpatch.pl tool
> 
> Signed-off-by: Mohammed Rushad <mohammedrushad@gmail.com>
> ---
>  drivers/staging/rtl8723bs/os_dep/xmit_linux.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/staging/rtl8723bs/os_dep/xmit_linux.c b/drivers/staging/rtl8723bs/os_dep/xmit_linux.c
> index fec8a8caaa46..b199d355e568 100644
> --- a/drivers/staging/rtl8723bs/os_dep/xmit_linux.c
> +++ b/drivers/staging/rtl8723bs/os_dep/xmit_linux.c
> @@ -148,13 +148,13 @@ static int rtw_mlcst2unicst(struct adapter *padapter, struct sk_buff *skb)
>  	/* free sta asoc_queue */
>  	while (phead != plist) {
>  		int stainfo_offset;
> +
>  		psta = LIST_CONTAINOR(plist, struct sta_info, asoc_list);
>  		plist = get_next(plist);
>  
>  		stainfo_offset = rtw_stainfo_offset(pstapriv, psta);
> -		if (stainfo_offset_valid(stainfo_offset)) {
> +		if (stainfo_offset_valid(stainfo_offset))
>  			chk_alive_list[chk_alive_num++] = stainfo_offset;
> -		}
>  	}
>  	spin_unlock_bh(&pstapriv->asoc_list_lock);
>  

As trivial as it is, this is still two different things in a single
patch :(

If this was the last remaining issue in this file, I might consider it,
but it isn't, so please break up your changes into
one-type-of-change-per-patch.

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
