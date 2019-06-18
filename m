Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id A3E68499A7
	for <lists+driverdev-devel@lfdr.de>; Tue, 18 Jun 2019 08:59:37 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 8E7DD878D7;
	Tue, 18 Jun 2019 06:59:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 1cg6Tc+8nQ86; Tue, 18 Jun 2019 06:59:35 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 1C75A86E5C;
	Tue, 18 Jun 2019 06:59:35 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 1C59D1BF20D
 for <devel@linuxdriverproject.org>; Tue, 18 Jun 2019 06:59:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 197C58207D
 for <devel@linuxdriverproject.org>; Tue, 18 Jun 2019 06:59:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id hEhJ9Q-ce3n1 for <devel@linuxdriverproject.org>;
 Tue, 18 Jun 2019 06:59:32 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id AA70D80AE4
 for <devel@driverdev.osuosl.org>; Tue, 18 Jun 2019 06:59:32 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 0C9FE20673;
 Tue, 18 Jun 2019 06:59:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1560841172;
 bh=5ecne3rCtVqpWXP+h0ZrAWJGGu531cJx7E9w2U9xOz0=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=nW10Hu++sUQrj/S3YQTKUNgZJgfWeNCSb95YUyAw0/gQlWPavg1CfR91PTbv60Cgy
 HaE+ZOhu3Vdc25N0ZC7bJvT20lGMLHaT0eu850YiT8QH35rZ9nlejaP2LGHkgtFCY2
 gJl1cK8K4kK5wU7MDBxhKaP6wHa8fVWD4MoeEFCI=
Date: Tue, 18 Jun 2019 08:59:30 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Hariprasad Kelam <hariprasad.kelam@gmail.com>
Subject: Re: [PATCH] staging: rtl8723bs: os_dep: Make use rtw_zmalloc
Message-ID: <20190618065930.GB15358@kroah.com>
References: <20190616051619.GA15036@hari-Inspiron-1545>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190616051619.GA15036@hari-Inspiron-1545>
User-Agent: Mutt/1.12.1 (2019-06-15)
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
Cc: devel@driverdev.osuosl.org, Arnd Bergmann <arnd@arndb.de>,
 Puranjay Mohan <puranjay12@gmail.com>, linux-kernel@vger.kernel.org,
 Omer Efrat <omer.efrat@tandemg.com>, Larry Finger <Larry.Finger@lwfinger.net>,
 Quytelda Kahja <quytelda@tamalin.org>, Jeeeun Evans <jeeeunevans@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Sun, Jun 16, 2019 at 10:46:19AM +0530, Hariprasad Kelam wrote:
> rtw_malloc with memset can be replaced with rtw_zmalloc.
> 
> Signed-off-by: Hariprasad Kelam <hariprasad.kelam@gmail.com>
> ---
>  drivers/staging/rtl8723bs/os_dep/ioctl_cfg80211.c | 4 +---
>  1 file changed, 1 insertion(+), 3 deletions(-)
> 
> diff --git a/drivers/staging/rtl8723bs/os_dep/ioctl_cfg80211.c b/drivers/staging/rtl8723bs/os_dep/ioctl_cfg80211.c
> index 9bc6856..aa7cc50 100644
> --- a/drivers/staging/rtl8723bs/os_dep/ioctl_cfg80211.c
> +++ b/drivers/staging/rtl8723bs/os_dep/ioctl_cfg80211.c
> @@ -1078,12 +1078,10 @@ static int cfg80211_rtw_add_key(struct wiphy *wiphy, struct net_device *ndev,
>  	DBG_871X("pairwise =%d\n", pairwise);
>  
>  	param_len = sizeof(struct ieee_param) + params->key_len;
> -	param = rtw_malloc(param_len);
> +	param = rtw_zmalloc(param_len);


No, please call the "real" kernel function instead.

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
