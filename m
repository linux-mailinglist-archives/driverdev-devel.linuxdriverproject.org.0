Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 8359A81FB1
	for <lists+driverdev-devel@lfdr.de>; Mon,  5 Aug 2019 17:03:14 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id B31E22076E;
	Mon,  5 Aug 2019 15:03:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id bXs-EgkB5k4N; Mon,  5 Aug 2019 15:03:10 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id ED11120554;
	Mon,  5 Aug 2019 15:03:08 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 8BE831BF33C
 for <devel@linuxdriverproject.org>; Mon,  5 Aug 2019 15:03:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 8853687C91
 for <devel@linuxdriverproject.org>; Mon,  5 Aug 2019 15:03:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id qIvySkbRCc43 for <devel@linuxdriverproject.org>;
 Mon,  5 Aug 2019 15:03:07 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id F212D87C11
 for <devel@driverdev.osuosl.org>; Mon,  5 Aug 2019 15:03:06 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 46BBA206C1;
 Mon,  5 Aug 2019 15:03:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1565017386;
 bh=+Xz3bwnFyaWyqY9a37gwwnBNAogellhkHzcb0xquKIA=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=au5ozn6Us640CQSmT+gPP1wjfGcLKu+5AO3u44G76dCrxZWNyyj1JcwczmM6US+Dn
 IiWu9CBPX4J8YB54hKk0nqGlb9y9AuROg+Rzr1ViY2xle0v+U4k59UI9YGzet5c7YZ
 Uu9F7zgngDfMe+2b6iAurxNCW5MLhRAYDMZGoEO8=
Date: Mon, 5 Aug 2019 17:03:04 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Giridhar Prasath R <cristianoprasath@gmail.com>
Subject: Re: [PATCH] staging: pi433 line over 80 characters in multiple places
Message-ID: <20190805150304.GA746@kroah.com>
References: <20190805000248.4902-1-cristianoprasath@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190805000248.4902-1-cristianoprasath@gmail.com>
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
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Mon, Aug 05, 2019 at 05:32:45AM +0530, Giridhar Prasath R wrote:
> Fix the following checkpatch warnings:
> 
> WARNING: line over 80 characters
> FILE: drivers/staging/pi433/pi433_if.h
> 
> Signed-off-by: Giridhar Prasath R <cristianoprasath@gmail.com>
> ---
>  drivers/staging/pi433/pi433_if.h | 23 ++++++++++++++++-------
>  1 file changed, 16 insertions(+), 7 deletions(-)
> 
> diff --git a/drivers/staging/pi433/pi433_if.h b/drivers/staging/pi433/pi433_if.h
> index 9feb95c431cb..915bd96910c6 100644
> --- a/drivers/staging/pi433/pi433_if.h
> +++ b/drivers/staging/pi433/pi433_if.h
> @@ -117,9 +117,14 @@ struct pi433_rx_cfg {
>  
>  	/* packet format */
>  	enum option_on_off	enable_sync;
> -	enum option_on_off	enable_length_byte;	  /* should be used in combination with sync, only */
> -	enum address_filtering	enable_address_filtering; /* operational with sync, only */
> -	enum option_on_off	enable_crc;		  /* only operational, if sync on and fixed length or length byte is used */
> +	/* should be used in combination with sync, only */
> +	enum option_on_off	enable_length_byte;
> +	/* operational with sync, only */
> +	enum address_filtering	enable_address_filtering;
> +	/* only operational,
> +	 * if sync on and fixed length or length byte is used
> +	 */
> +	enum option_on_off	enable_crc;
>  
>  	__u8			sync_length;
>  	__u8			fixed_message_length;
> @@ -132,10 +137,14 @@ struct pi433_rx_cfg {
>  
>  #define PI433_IOC_MAGIC			'r'
>  
> -#define PI433_IOC_RD_TX_CFG	_IOR(PI433_IOC_MAGIC, PI433_TX_CFG_IOCTL_NR, char[sizeof(struct pi433_tx_cfg)])
> -#define PI433_IOC_WR_TX_CFG	_IOW(PI433_IOC_MAGIC, PI433_TX_CFG_IOCTL_NR, char[sizeof(struct pi433_tx_cfg)])
> +#define PI433_IOC_RD_TX_CFG	_IOR(PI433_IOC_MAGIC, PI433_TX_CFG_IOCTL_NR,\
> +char[sizeof(struct pi433_tx_cfg)])

Ick, that does not look better :(

We write code for humans first, compilers second.

The original is fine, thanks.

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
