Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 011EE293F6A
	for <lists+driverdev-devel@lfdr.de>; Tue, 20 Oct 2020 17:19:13 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 8C3EC86B1C;
	Tue, 20 Oct 2020 15:19:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id oG2l6Yf8qUdJ; Tue, 20 Oct 2020 15:19:10 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 8774C86D69;
	Tue, 20 Oct 2020 15:19:09 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 099941BF82F
 for <devel@linuxdriverproject.org>; Tue, 20 Oct 2020 15:19:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 0690D8687E
 for <devel@linuxdriverproject.org>; Tue, 20 Oct 2020 15:19:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 7TD1+dPm-McR for <devel@linuxdriverproject.org>;
 Tue, 20 Oct 2020 15:19:07 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 824F986D69
 for <devel@driverdev.osuosl.org>; Tue, 20 Oct 2020 15:19:07 +0000 (UTC)
Received: from localhost (83-86-74-64.cable.dynamic.v4.ziggo.nl [83.86.74.64])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 7A87320757;
 Tue, 20 Oct 2020 15:19:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1603207147;
 bh=VrXgey1iP8/TPkJntOZW6GK2ussCxQ3E8Co6wldPBdE=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=x9Xw3QQs3u9pmRugTxWenzkIZAqq0EAlC5uFPyenPILssvJQa4WEBTGZuD+wWU1yr
 rB5YPayaCkFOc4AuRbFsfTT2ppI2dI49vfK6U8RwJVGzzp+f/W5V3kES8wIDJeV8pt
 caPQAWwevIWEdlsCntBVv/JgKhUnLm04A50xrKSY=
Date: Tue, 20 Oct 2020 17:19:49 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Elena Afanasova <eafanasova@gmail.com>
Subject: Re: [PATCH] staging/rtl8192u/ieee80211: use __func__ macro
Message-ID: <20201020151949.GA852005@kroah.com>
References: <20201020150823.35734-1-eafanasova@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201020150823.35734-1-eafanasova@gmail.com>
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
Cc: devel@driverdev.osuosl.org, outreachy-kernel@googlegroups.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Tue, Oct 20, 2020 at 08:08:23AM -0700, Elena Afanasova wrote:
> Replace function names with __func__ macro.
> Remove unnecessary characters in error messages.
> Reported by checkpatch.pl.
> 
> Signed-off-by: Elena Afanasova <eafanasova@gmail.com>
> ---
>  drivers/staging/rtl8192u/ieee80211/dot11d.c | 12 ++++++------
>  1 file changed, 6 insertions(+), 6 deletions(-)
> 
> diff --git a/drivers/staging/rtl8192u/ieee80211/dot11d.c b/drivers/staging/rtl8192u/ieee80211/dot11d.c
> index bc642076b96f..f972edcde8a0 100644
> --- a/drivers/staging/rtl8192u/ieee80211/dot11d.c
> +++ b/drivers/staging/rtl8192u/ieee80211/dot11d.c
> @@ -15,7 +15,7 @@ void rtl8192u_dot11d_init(struct ieee80211_device *ieee)
>  	memset(dot11d_info->max_tx_pwr_dbm_list, 0xFF, MAX_CHANNEL_NUMBER + 1);
>  	RESET_CIE_WATCHDOG(ieee);
>  
> -	netdev_info(ieee->dev, "rtl8192u_dot11d_init()\n");
> +	netdev_info(ieee->dev, "%s\n", __func__);

This is a pure debugging line, and should just be removed.  Can you do
that as an add-on patch to this?

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
