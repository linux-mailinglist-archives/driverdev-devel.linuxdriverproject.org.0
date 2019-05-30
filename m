Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id B0F24303E8
	for <lists+driverdev-devel@lfdr.de>; Thu, 30 May 2019 23:12:52 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 5F1D1203E2;
	Thu, 30 May 2019 21:12:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ezdaq3P+iQZj; Thu, 30 May 2019 21:12:49 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id DE8CD203C7;
	Thu, 30 May 2019 21:12:48 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id B9E941BF2BA
 for <devel@linuxdriverproject.org>; Thu, 30 May 2019 21:12:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id B72498825E
 for <devel@linuxdriverproject.org>; Thu, 30 May 2019 21:12:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 8EBYMO+CXcLp for <devel@linuxdriverproject.org>;
 Thu, 30 May 2019 21:12:45 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 36E778815D
 for <devel@driverdev.osuosl.org>; Thu, 30 May 2019 21:12:45 +0000 (UTC)
Received: from localhost (unknown [207.225.69.115])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id EE53621985;
 Thu, 30 May 2019 21:12:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1559250765;
 bh=8ogzh1kXxnB4e4k6xpIqU2Y6rtedLnLHRgwK4C8BkxQ=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=y+4fRKmJ9QXOZWZLpA/DAp88qHyQyRLnoGL/6/Dme0ree+A+GQ/SE7E5acG8x6hLz
 dV0Cf3jLUqaAQ/GpVK8kfEk0EixWb7d9Y0YZs4F52VX8IUzFN+XNGSmDdkD8TifKsA
 3ypNkO2Oz4EdiXRAtsp+XS30uh5NuIAVr+H6z1eQ=
Date: Thu, 30 May 2019 14:12:44 -0700
From: Greg KH <gregkh@linuxfoundation.org>
To: Nishka Dasgupta <nishkadg.linux@gmail.com>
Subject: Re: [PATCH] staging: rtl8712: Remove unnecessary variable in
 rtl8712_recv.c
Message-ID: <20190530211244.GA24020@kroah.com>
References: <20190529132031.6493-1-nishkadg.linux@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190529132031.6493-1-nishkadg.linux@gmail.com>
User-Agent: Mutt/1.12.0 (2019-05-25)
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
Cc: florian.c.schilhabel@googlemail.com, devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org, daniela.mormocea@gmail.com,
 vatsalanarang@gmail.com, larry.finger@lwfinger.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Wed, May 29, 2019 at 06:50:31PM +0530, Nishka Dasgupta wrote:
> Remove unnecessary variable last_evm in rtl8712_recv.c and use its value
> directly.
> Issue found with Coccinelle.
> 
> Signed-off-by: Nishka Dasgupta <nishkadg.linux@gmail.com>
> ---
>  drivers/staging/rtl8712/rtl8712_recv.c | 5 ++---
>  drivers/staging/rtl8712/rtl871x_cmd.c  | 2 +-
>  2 files changed, 3 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/staging/rtl8712/rtl8712_recv.c b/drivers/staging/rtl8712/rtl8712_recv.c
> index 82ddc0c3ecd4..f6f7cd5fd0f2 100644
> --- a/drivers/staging/rtl8712/rtl8712_recv.c
> +++ b/drivers/staging/rtl8712/rtl8712_recv.c
> @@ -885,7 +885,7 @@ static void query_rx_phy_status(struct _adapter *padapter,
>  static void process_link_qual(struct _adapter *padapter,
>  			      union recv_frame *prframe)
>  {
> -	u32	last_evm = 0, tmpVal;
> +	u32	tmpVal;
>  	struct rx_pkt_attrib *pattrib;
>  	struct smooth_rssi_data *sqd = &padapter->recvpriv.signal_qual_data;
>  
> @@ -898,8 +898,7 @@ static void process_link_qual(struct _adapter *padapter,
>  		 */
>  		if (sqd->total_num++ >= PHY_LINKQUALITY_SLID_WIN_MAX) {
>  			sqd->total_num = PHY_LINKQUALITY_SLID_WIN_MAX;
> -			last_evm = sqd->elements[sqd->index];
> -			sqd->total_val -= last_evm;
> +			sqd->total_val -= sqd->elements[sqd->index];

Nope, original code is easier to understand :(

>  		}
>  		sqd->total_val += pattrib->signal_qual;
>  		sqd->elements[sqd->index++] = pattrib->signal_qual;
> diff --git a/drivers/staging/rtl8712/rtl871x_cmd.c b/drivers/staging/rtl8712/rtl871x_cmd.c
> index 05a78ac24987..7c437ee9e022 100644
> --- a/drivers/staging/rtl8712/rtl871x_cmd.c
> +++ b/drivers/staging/rtl8712/rtl871x_cmd.c
> @@ -880,7 +880,7 @@ void r8712_createbss_cmd_callback(struct _adapter *padapter,
>  		}
>  		r8712_indicate_connect(padapter);
>  	} else {
> -		pwlan = _r8712_alloc_network(pmlmepriv);
> +		pwlan = r8712_alloc_network(pmlmepriv);

what does this change have to do with your changelog?

confused,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
