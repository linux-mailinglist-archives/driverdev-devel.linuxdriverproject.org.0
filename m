Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id EFC871B85DA
	for <lists+driverdev-devel@lfdr.de>; Sat, 25 Apr 2020 12:54:42 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 96F2D20516;
	Sat, 25 Apr 2020 10:54:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id GUurdoviVilh; Sat, 25 Apr 2020 10:54:40 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 01D4E203FB;
	Sat, 25 Apr 2020 10:54:38 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 682FF1BF5A6
 for <devel@linuxdriverproject.org>; Sat, 25 Apr 2020 10:54:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 63DE1203FB
 for <devel@linuxdriverproject.org>; Sat, 25 Apr 2020 10:54:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id oYA-X8yjiwsb for <devel@linuxdriverproject.org>;
 Sat, 25 Apr 2020 10:54:35 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by silver.osuosl.org (Postfix) with ESMTPS id B588620021
 for <devel@driverdev.osuosl.org>; Sat, 25 Apr 2020 10:54:35 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id E9CB520714;
 Sat, 25 Apr 2020 10:54:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1587812075;
 bh=XU8fusLrSTHmIUAeVbGFgNvIoVqbEQlw1d7OY9tTAvg=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=nCa3PyZVCeUVlmy+czbQUoSbGWp5TY6eCGW9a9RqrhOEd4i8Da8iIGz2KhysHPVIv
 /ArdsHI4hsE15umyFtYnPbtienLTyQBZhgquwoskmWLZBcqdJyO4EOZglxlWSoonq0
 QKUsISQlJRMJwIRfIZ/ZGzWrhMdHdoMDp2XX0Ww8=
Date: Sat, 25 Apr 2020 12:54:32 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Suraj Upadhyay <usuraj35@gmail.com>
Subject: Re: [PATCH v3] staging: wfx: cleanup long lines in data_tx.c
Message-ID: <20200425105432.GA2068247@kroah.com>
References: <20200424134834.GA19700@blackclown>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200424134834.GA19700@blackclown>
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
Cc: devel@driverdev.osuosl.org, kernel-janitors@vger.kernel.org,
 dan.carpenter@oracle.com, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Fri, Apr 24, 2020 at 07:18:34PM +0530, Suraj Upadhyay wrote:
> Break lines with length over 80 characters to conform
> to the linux coding style and refactor wherever necessary.
> 
> Signed-off-by: Suraj Upadhyay <usuraj35@gmail.com>
> ---
> 
> Changes in v3:
> 	- Changed the temporary variable name for the memzcmp statement
> 	  to is_used. (as suggested).
> 	- Added a temporary ieee80211_supported_band variable to address
> 	  the problem in wfx_get_hw_rate() more efficiently. (not
> 	  suggested, but still).
> 
> Changes in v2:
>         - Introduced a temporary variable for the memzcmp statement.
>         - Addressed the checkpatch problem with wfx_get_hw_rate().
>         - Restored the function definition of wfx_tx_get_tx_parms
>           as suggested by the reviewer.
>         - Added suggested changes for req->packet_id statement.
> 
>  drivers/staging/wfx/data_tx.c | 40 +++++++++++++++++++++++------------
>  1 file changed, 26 insertions(+), 14 deletions(-)
> 
> diff --git a/drivers/staging/wfx/data_tx.c b/drivers/staging/wfx/data_tx.c
> index 9c1a91207dd8..717155975345 100644
> --- a/drivers/staging/wfx/data_tx.c
> +++ b/drivers/staging/wfx/data_tx.c
> @@ -20,6 +20,8 @@
>  static int wfx_get_hw_rate(struct wfx_dev *wdev,
>  			   const struct ieee80211_tx_rate *rate)
>  {
> +
> +	struct ieee80211_supported_band *band;
>  	if (rate->idx < 0)

checkpatch did not complain about this change?

It should have...

Please fix that up.

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
