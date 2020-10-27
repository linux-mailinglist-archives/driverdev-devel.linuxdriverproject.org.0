Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 3442529AA73
	for <lists+driverdev-devel@lfdr.de>; Tue, 27 Oct 2020 12:22:15 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 91ADC86712;
	Tue, 27 Oct 2020 11:22:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 8nheGSE87BQQ; Tue, 27 Oct 2020 11:22:13 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 5F497866AF;
	Tue, 27 Oct 2020 11:22:12 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 3B28E1BF859
 for <devel@linuxdriverproject.org>; Tue, 27 Oct 2020 11:22:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 37B2F84EE2
 for <devel@linuxdriverproject.org>; Tue, 27 Oct 2020 11:22:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 97Q5HSu8jfwe for <devel@linuxdriverproject.org>;
 Tue, 27 Oct 2020 11:22:09 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id B040384E7A
 for <devel@driverdev.osuosl.org>; Tue, 27 Oct 2020 11:22:09 +0000 (UTC)
Received: from localhost (83-86-74-64.cable.dynamic.v4.ziggo.nl [83.86.74.64])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 9138C22265;
 Tue, 27 Oct 2020 11:22:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1603797729;
 bh=keEF1atJGqkxzQS1pRxnbXeyCt012WhNm5pF5TvhsVU=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=k+8yTyTgSvrWzQJlBd4p2EelGPxG9SlppibKiPGf6j/gWtX4+MfWH0kodO5S5XxLx
 2odmoek3kRu/Qqji/Bflm3Iv32yM5x5UH8YtmQJeS3Ij0bFzJ16VJu95sMnNAgCevX
 CsIBWe4uUjVBCO0yAP+BmR1uIqtiycAO5pox8yKA=
Date: Tue, 27 Oct 2020 12:23:03 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Muhammad Usama Anjum <musamaanjum@gmail.com>
Subject: Re: [PATCH] staging: rtl8192e, rtl8192u: use correct notation to
 define pointer
Message-ID: <20201027112303.GA405023@kroah.com>
References: <20201026121435.GA782465@LEGION>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201026121435.GA782465@LEGION>
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

On Mon, Oct 26, 2020 at 05:14:35PM +0500, Muhammad Usama Anjum wrote:
> Use pointer notation instead of using array notation as info_element is
> a pointer not array.
> 
> Warnings from sparse:
> drivers/staging/rtl8192u/ieee80211/ieee80211.h:1013:51: warning: array of flexible structures
> drivers/staging/rtl8192u/ieee80211/ieee80211.h:985:51: warning: array of flexible structures
> drivers/staging/rtl8192u/ieee80211/ieee80211.h:963:51: warning: array of flexible structures
> drivers/staging/rtl8192u/ieee80211/ieee80211.h:996:51: warning: array of flexible structures
> drivers/staging/rtl8192u/ieee80211/ieee80211.h:974:51: warning: array of flexible structures
> 
> drivers/staging/rtl8192e/rtllib.h:832:48: warning: array of flexible structures
> drivers/staging/rtl8192e/rtllib.h:851:48: warning: array of flexible structures
> drivers/staging/rtl8192e/rtllib.h:805:48: warning: array of flexible structures
> drivers/staging/rtl8192e/rtllib.h:843:48: warning: array of flexible structures
> drivers/staging/rtl8192e/rtllib.h:821:48: warning: array of flexible structures
> 
> Signed-off-by: Muhammad Usama Anjum <musamaanjum@gmail.com>
> ---
>  drivers/staging/rtl8192e/rtllib.h              | 10 +++++-----
>  drivers/staging/rtl8192u/ieee80211/ieee80211.h | 12 ++++++------
>  2 files changed, 11 insertions(+), 11 deletions(-)
> 
> diff --git a/drivers/staging/rtl8192e/rtllib.h b/drivers/staging/rtl8192e/rtllib.h
> index b84f00b8d18b..1dab9c3d08a8 100644
> --- a/drivers/staging/rtl8192e/rtllib.h
> +++ b/drivers/staging/rtl8192e/rtllib.h
> @@ -802,7 +802,7 @@ struct rtllib_authentication {
>  	__le16 transaction;
>  	__le16 status;
>  	/*challenge*/
> -	struct rtllib_info_element info_element[];
> +	struct rtllib_info_element *info_element;
>  } __packed;

Are you sure these changes are correct?  This isn't just a list of
structures after this at the end of the structure?

Please look at commit 5979afa2c4d1 ("staging: Replace zero-length array
with flexible-array member") which made most of these flexible arrays.

This is not a pointer, it really is an array, I think sparse is really
wrong here, be careful.

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
