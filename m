Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 730B9345133
	for <lists+driverdev-devel@lfdr.de>; Mon, 22 Mar 2021 21:55:37 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5A62D607E2;
	Mon, 22 Mar 2021 20:55:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id J7KJvE8GgmRu; Mon, 22 Mar 2021 20:55:34 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9CB6E607D4;
	Mon, 22 Mar 2021 20:55:33 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 9EB7C1BF2B5
 for <devel@linuxdriverproject.org>; Mon, 22 Mar 2021 20:55:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 86C75607D7
 for <devel@linuxdriverproject.org>; Mon, 22 Mar 2021 20:55:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id bSK3D6uQ1I7m for <devel@linuxdriverproject.org>;
 Mon, 22 Mar 2021 20:55:21 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from casper.infradead.org (casper.infradead.org [90.155.50.34])
 by smtp3.osuosl.org (Postfix) with ESMTPS id B143F607D4
 for <devel@driverdev.osuosl.org>; Mon, 22 Mar 2021 20:55:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:Content-Type:
 In-Reply-To:MIME-Version:Date:Message-ID:From:References:To:Subject:Sender:
 Reply-To:Cc:Content-ID:Content-Description;
 bh=b3Ab64gMwLXEjOKWzRYzhgtkfQ7yGZ0iEhUU73fIUU8=; b=ELAKB/0n1zibeXStmS+wwJQt9x
 Ixo0pWMKt+9VlcCYoCCeJ3Rc6c5t+sUBRmeKPHLEjZZoFvrFDy0ww5l+S9cj8YZQ/pGAonAL8fxdm
 ht9K8VzKy5NnhBoG/rBwGljCySo23xjMIMM/qzE9NVY0Dufbwbsh7I9I6krQGQmTppuljG5KpKSSN
 QfsE2UHL+NoKWQqUgV2ueUYP9Tyej2hCNVO5aIShW5/x3mvDYYWtvzvRHixLaBemXCBIQbiIN3G0G
 NcUAtZEZiA2c9WXzlPiKG62fPr/xMAruv7CtJxa1/N5KbY3CpxSU1BkIH+LfoYEP54TF/LVSR18yF
 roeGZsSw==;
Received: from [2601:1c0:6280:3f0::3ba4]
 by casper.infradead.org with esmtpsa (Exim 4.94 #2 (Red Hat Linux))
 id 1lORZr-0094Ia-Hb; Mon, 22 Mar 2021 20:55:09 +0000
Subject: Re: [PATCH V2] staging: rtl8723bs: Mundane typo fixes
To: Bhaskar Chowdhury <unixbhaskar@gmail.com>, gregkh@linuxfoundation.org,
 devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
References: <20210322201648.137317-1-unixbhaskar@gmail.com>
From: Randy Dunlap <rdunlap@infradead.org>
Message-ID: <af9c4139-80f4-1003-d484-ee984232869c@infradead.org>
Date: Mon, 22 Mar 2021 13:55:04 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.0
MIME-Version: 1.0
In-Reply-To: <20210322201648.137317-1-unixbhaskar@gmail.com>
Content-Language: en-US
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On 3/22/21 1:16 PM, Bhaskar Chowdhury wrote:
> s/stoping/stopping/
> s/arragement/arrangement/
> s/eralier/earlier/
> 
> Plus one extra word in the sentence "the" removed.
> 
> Signed-off-by: Bhaskar Chowdhury <unixbhaskar@gmail.com>

Acked-by: Randy Dunlap <rdunlap@infradead.org>

> ---
>   Changes from V1:
>   Greg,pointed out my mistake of introducing typo to typo , corrected.
> 
>  drivers/staging/rtl8723bs/include/hal_com_reg.h | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/staging/rtl8723bs/include/hal_com_reg.h b/drivers/staging/rtl8723bs/include/hal_com_reg.h
> index 37fa59a352d6..b555826760d0 100644
> --- a/drivers/staging/rtl8723bs/include/hal_com_reg.h
> +++ b/drivers/staging/rtl8723bs/include/hal_com_reg.h
> @@ -1002,9 +1002,9 @@ Current IOREG MAP
>  	/* 		 8192C (TXPAUSE) transmission pause	(Offset 0x522, 8 bits) */
>  	/*  */
>  /*  Note: */
> -/* 	The the bits of stoping AC(VO/VI/BE/BK) queue in datasheet RTL8192S/RTL8192C are wrong, */
> -/* 	the correct arragement is VO - Bit0, VI - Bit1, BE - Bit2, and BK - Bit3. */
> -/* 	8723 and 88E may be not correct either in the eralier version. Confirmed with DD Tim. */
> +/* 	The  bits of stopping AC(VO/VI/BE/BK) queue in datasheet RTL8192S/RTL8192C are wrong, */
> +/* 	the correct arrangement is VO - Bit0, VI - Bit1, BE - Bit2, and BK - Bit3. */
> +/* 	8723 and 88E may be not correct either in the earlier version. Confirmed with DD Tim. */
>  /*  By Bruce, 2011-09-22. */
>  #define StopBecon		BIT6
>  #define StopHigh			BIT5
> --


-- 
~Randy

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
