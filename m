Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 08A9D344A7F
	for <lists+driverdev-devel@lfdr.de>; Mon, 22 Mar 2021 17:08:13 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9544940387;
	Mon, 22 Mar 2021 16:08:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 3DVgzag02KsG; Mon, 22 Mar 2021 16:08:10 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 50BB540366;
	Mon, 22 Mar 2021 16:08:09 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 0EADD1BF319
 for <devel@linuxdriverproject.org>; Mon, 22 Mar 2021 16:07:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id F27A74027F
 for <devel@linuxdriverproject.org>; Mon, 22 Mar 2021 16:07:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=linuxfoundation.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 2l4kqOwB8s2r for <devel@linuxdriverproject.org>;
 Mon, 22 Mar 2021 16:07:58 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 7AA964026B
 for <devel@driverdev.osuosl.org>; Mon, 22 Mar 2021 16:07:58 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 15E07619B8;
 Mon, 22 Mar 2021 16:07:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1616429276;
 bh=bqoeuGuZHclyiqqImlv9B3+pvikM/T3tAXBfmPztMmQ=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=D47G+25pfVObiOEQ9qddeviFeBgdbM0QJ28BZQPfmBDcUqRub5fih46R6ccse/DhD
 ukLw9iCqatyUK7H1y1+JzPJk+90NrXApke0bibWlcjXNSb8C7a+nEC1a2IPLiFg/F4
 XW+CM0GdI3XR9de/ITa6TVeYOXmRWg6Lom+L9M0A=
Date: Mon, 22 Mar 2021 17:07:53 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Fabio Aiuto <fabioaiuto83@gmail.com>
Subject: Re: [PATCH 02/11] staging: rtl8723bs: moved function prototypes out
 of core/rtw_efuse.c
Message-ID: <YFjA2XhxhJE/iN4j@kroah.com>
References: <cover.1616422773.git.fabioaiuto83@gmail.com>
 <c46e7d7a686988bb6aaea9bc24b15188136e0aed.1616422773.git.fabioaiuto83@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <c46e7d7a686988bb6aaea9bc24b15188136e0aed.1616422773.git.fabioaiuto83@gmail.com>
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
Cc: joe@perches.com, apw@canonical.com, devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Mon, Mar 22, 2021 at 03:31:40PM +0100, Fabio Aiuto wrote:
> fix the following checkpatch issues:
> 
> WARNING: externs should be avoided in .c files
> 35: FILE: drivers/staging/rtl8723bs/core/rtw_efuse.c:35:
> +bool
> 
> moved two function prototypes in include/rtw_efuse.h
> 
> Signed-off-by: Fabio Aiuto <fabioaiuto83@gmail.com>
> ---
>  drivers/staging/rtl8723bs/core/rtw_efuse.c    | 10 ----------
>  drivers/staging/rtl8723bs/include/rtw_efuse.h |  3 +++
>  2 files changed, 3 insertions(+), 10 deletions(-)
> 
> diff --git a/drivers/staging/rtl8723bs/core/rtw_efuse.c b/drivers/staging/rtl8723bs/core/rtw_efuse.c
> index 32ca10f01413..0772397738d4 100644
> --- a/drivers/staging/rtl8723bs/core/rtw_efuse.c
> +++ b/drivers/staging/rtl8723bs/core/rtw_efuse.c
> @@ -32,11 +32,6 @@ u8 fakeBTEfuseModifiedMap[EFUSE_BT_MAX_MAP_LEN] = {0};
>  #define REG_EFUSE_CTRL		0x0030
>  #define EFUSE_CTRL			REG_EFUSE_CTRL		/*  E-Fuse Control. */
>  
> -bool
> -Efuse_Read1ByteFromFakeContent(
> -	struct adapter *padapter,
> -	u16 	Offset,
> -	u8 *Value);
>  bool
>  Efuse_Read1ByteFromFakeContent(
>  	struct adapter *padapter,
> @@ -53,11 +48,6 @@ Efuse_Read1ByteFromFakeContent(
>  	return true;
>  }
>  
> -bool
> -Efuse_Write1ByteToFakeContent(
> -	struct adapter *padapter,
> -	u16 	Offset,
> -	u8 Value);
>  bool
>  Efuse_Write1ByteToFakeContent(
>  	struct adapter *padapter,
> diff --git a/drivers/staging/rtl8723bs/include/rtw_efuse.h b/drivers/staging/rtl8723bs/include/rtw_efuse.h
> index 5bae46ecd9de..1f304df8c421 100644
> --- a/drivers/staging/rtl8723bs/include/rtw_efuse.h
> +++ b/drivers/staging/rtl8723bs/include/rtw_efuse.h
> @@ -103,6 +103,9 @@ extern u8 fakeBTEfuseInitMap[];
>  extern u8 fakeBTEfuseModifiedMap[];
>  /*------------------------Export global variable----------------------------*/
>  
> +bool Efuse_Read1ByteFromFakeContent(struct adapter *padapter, u16 Offset, u8 *Value);
> +bool Efuse_Write1ByteToFakeContent(struct adapter *padapter, u16 Offset, u8 Value);

No, there's no need for this to be in a .h file, it is only called from
one .c file.

Make the thing static and all should be fine, right?

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
