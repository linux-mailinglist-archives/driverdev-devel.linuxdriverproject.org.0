Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id A276E325E81
	for <lists+driverdev-devel@lfdr.de>; Fri, 26 Feb 2021 08:57:34 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id E772184148;
	Fri, 26 Feb 2021 07:57:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id s7ZIddMjqXy9; Fri, 26 Feb 2021 07:57:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1D6AA8411A;
	Fri, 26 Feb 2021 07:57:31 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 283981BF31D
 for <devel@linuxdriverproject.org>; Fri, 26 Feb 2021 07:57:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 225D38411A
 for <devel@linuxdriverproject.org>; Fri, 26 Feb 2021 07:57:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id YlvQSNU-iwe8 for <devel@linuxdriverproject.org>;
 Fri, 26 Feb 2021 07:57:20 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 7D83C84117
 for <devel@driverdev.osuosl.org>; Fri, 26 Feb 2021 07:57:20 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 1359464EDB;
 Fri, 26 Feb 2021 07:57:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1614326239;
 bh=17qB4OXEg3fk/1Suqbr0+KU1+wYrtixrMN3SQL5rC6Q=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=TYiVX3WIRJwOR+6ey01evnpqoX5pi335iyoEpRZUouqvE/o423wlj43M6pq/7EFfO
 MjGOGWrdz1XFx6BfbcMsKaBj7x1L1Kp8Y5VCfnc2L6O/nDTPoG2Osofz55FQJL//VH
 Hb0JHaJb+suQNrZZPlE76NKjJ8uUc66lPVHKfAqw=
Date: Fri, 26 Feb 2021 08:57:17 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Lee Gibson <leegib@gmail.com>
Subject: Re: [PATCH] staging: rtl8192u: minor coding style fix
Message-ID: <YDip3fQJcDIxKr0w@kroah.com>
References: <20210225100351.12199-1-leegib@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210225100351.12199-1-leegib@gmail.com>
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

On Thu, Feb 25, 2021 at 10:03:51AM +0000, Lee Gibson wrote:
> Fixes this checkpatch warning
> WARNING: Comparisons should place the constant on the right side of the test
> 
> Signed-off-by: Lee Gibson <leegib@gmail.com>
> ---
>  drivers/staging/rtl8192u/r8192U_wx.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/rtl8192u/r8192U_wx.c b/drivers/staging/rtl8192u/r8192U_wx.c
> index d853586705fc..175bb8b15389 100644
> --- a/drivers/staging/rtl8192u/r8192U_wx.c
> +++ b/drivers/staging/rtl8192u/r8192U_wx.c
> @@ -726,7 +726,7 @@ static int r8192_wx_set_enc_ext(struct net_device *dev,
>  			idx--;
>  		group = ext->ext_flags & IW_ENCODE_EXT_GROUP_KEY;
>  
> -		if ((!group) || (IW_MODE_ADHOC == ieee->iw_mode) || (alg ==  KEY_TYPE_WEP40)) {
> +		if ((!group) || (ieee->iw_mode == IW_MODE_ADHOC) || (alg ==  KEY_TYPE_WEP40)) {
>  			if ((ext->key_len == 13) && (alg == KEY_TYPE_WEP40))
>  				alg = KEY_TYPE_WEP104;
>  			ieee->pairwise_key_type = alg;
> -- 
> 2.25.1

Someone already sent this same fix in before you did, sorry.

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
