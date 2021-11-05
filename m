Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 91F1D4461A5
	for <lists+driverdev-devel@lfdr.de>; Fri,  5 Nov 2021 10:52:29 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id AB5ED6151F;
	Fri,  5 Nov 2021 09:52:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id BJ63NFd3d40b; Fri,  5 Nov 2021 09:52:26 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1343760614;
	Fri,  5 Nov 2021 09:52:26 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 9A14D1BF3CD
 for <devel@linuxdriverproject.org>; Fri,  5 Nov 2021 09:52:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 88F8440106
 for <devel@linuxdriverproject.org>; Fri,  5 Nov 2021 09:52:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=linuxfoundation.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Xsc1WqqO_eG9 for <devel@linuxdriverproject.org>;
 Fri,  5 Nov 2021 09:52:15 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 939E8400AF
 for <devel@driverdev.osuosl.org>; Fri,  5 Nov 2021 09:52:15 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 7F2D261244;
 Fri,  5 Nov 2021 09:52:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1636105935;
 bh=w/GVcEOxMPFyEJIF3yroSEVnpOUUdFNp520ko3d1cXA=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=RaR0qjLJAoRDTnI2yPpKe5MDAHdJA+nsB9zms+N08RT+nK2q4a3CJVkzPJ70Qcy4B
 sEm8UNawNgLvse88A3XWocyUENjENxbRdwtxEiZ4lfLEV3HR5Mlc6wrxwghUuT61Ay
 0zMsgNgq1Bg4Al3DnOAp+BAkclgwpT/gPOLUF4Fc=
Date: Fri, 5 Nov 2021 10:52:12 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: hoshinomorimorimo@gmail.com
Subject: Re: [PATCH] staging: rtl8723bs: Remove redundant indentation
Message-ID: <YYT+zNJ1synjMCib@kroah.com>
References: <6180f31a.1c69fb81.7f7e.541c@mx.google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <6180f31a.1c69fb81.7f7e.541c@mx.google.com>
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

On Tue, Nov 02, 2021 at 04:12:59PM +0800, hoshinomorimorimo@gmail.com wrote:
> From: Hoshinomori-Owari <hoshinomorimorimo@gmail.com>
> 
> Remove redundant indentation in
> drivers/staging/rtl8723bs/core/rtw_ap.c:1139.
> Issue found by checkpatch.pl
> 
> Signed-off-by: Hoshinomori-Owari <hoshinomorimorimo@gmail.com>
> ---
>  drivers/staging/rtl8723bs/core/rtw_ap.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/rtl8723bs/core/rtw_ap.c b/drivers/staging/rtl8723bs/core/rtw_ap.c
> index a76e81330756..4345dca1b552 100644
> --- a/drivers/staging/rtl8723bs/core/rtw_ap.c
> +++ b/drivers/staging/rtl8723bs/core/rtw_ap.c
> @@ -1137,7 +1137,7 @@ int rtw_check_beacon_data(struct adapter *padapter, u8 *pbuf,  int len)
>  		}
>  
>  		if ((p == NULL) || (ie_len == 0))
> -				break;
> +			break;
>  	}
>  
>  	/* wmm */
> -- 
> 2.31.1

This does not apply to my tree (or Linus's tree) at all.  Always make
sure you work against linux-next so you do not duplicate other people's
work that has already been done.

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
