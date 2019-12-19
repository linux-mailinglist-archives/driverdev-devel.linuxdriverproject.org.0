Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E6851267B9
	for <lists+driverdev-devel@lfdr.de>; Thu, 19 Dec 2019 18:12:16 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id E53ED88005;
	Thu, 19 Dec 2019 17:12:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id L1OPdIlz4XEZ; Thu, 19 Dec 2019 17:12:13 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 5094D87FE5;
	Thu, 19 Dec 2019 17:12:12 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 1E6101BF2C7
 for <devel@linuxdriverproject.org>; Thu, 19 Dec 2019 17:12:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 1B30D886A3
 for <devel@linuxdriverproject.org>; Thu, 19 Dec 2019 17:12:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id GYQMdbZjsyzV for <devel@linuxdriverproject.org>;
 Thu, 19 Dec 2019 17:12:10 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 9424288638
 for <devel@driverdev.osuosl.org>; Thu, 19 Dec 2019 17:12:10 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id E8EB124672;
 Thu, 19 Dec 2019 17:12:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1576775530;
 bh=gtRIXUIO8/7p8WMoeBwntSQJkt2SzKky6CLRodXmKco=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=SZ/oxQq5nLw+CSDUMlkxklbz3JHLaEkUHdpKHH7Q4vgtrdToI/9uAHR1RfS8fsYuR
 PNPoPTNKD3o3voZrF/JEkSlbdtVqIPltcCDCBgs0+U+G1c/VT60vBuB1+OD09VyQEx
 PXkisJoXixfwO3vNrNxiWnHA0oFmAdLBjFIWAovc=
Date: Thu, 19 Dec 2019 18:11:41 +0100
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Aditya Pakki <pakki001@umn.edu>
Subject: Re: [PATCH v2] staging: kpc2000: remove unnecessary assertion on priv
Message-ID: <20191219171141.GA2068060@kroah.com>
References: <20191217225830.4018-1-pakki001@umn.edu>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191217225830.4018-1-pakki001@umn.edu>
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
Cc: Bharath Vedartham <linux.bhar@gmail.com>, devel@driverdev.osuosl.org,
 Harsh Jain <harshjain32@gmail.com>, Vandana BN <bnvandana@gmail.com>,
 kjlu@umn.edu, linux-kernel@vger.kernel.org,
 Madhumitha Prabakaran <madhumithabiw@gmail.com>,
 Simon =?iso-8859-1?Q?Sandstr=F6m?= <simon@nikanor.nu>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Tue, Dec 17, 2019 at 04:58:24PM -0600, Aditya Pakki wrote:
> In kpc_dma_transfer(), the assertion that priv is NULL is never
> satisfied. The two callers of the function, dereference the priv
> pointer before the call is executed. This patch removes the
> unnecessary BUG_ON call.
> 
> Signed-off-by: Aditya Pakki <pakki001@umn.edu>
> ---
> v1: Replace the recovery code by removing the assertion, as suggested
> by Greg Kroah-Hartman.
> ---
>  drivers/staging/kpc2000/kpc_dma/fileops.c | 1 -
>  1 file changed, 1 deletion(-)
> 
> diff --git a/drivers/staging/kpc2000/kpc_dma/fileops.c b/drivers/staging/kpc2000/kpc_dma/fileops.c
> index cb52bd9a6d2f..61d762535823 100644
> --- a/drivers/staging/kpc2000/kpc_dma/fileops.c
> +++ b/drivers/staging/kpc2000/kpc_dma/fileops.c
> @@ -49,7 +49,6 @@ static int kpc_dma_transfer(struct dev_private_data *priv,
>  	u64 dma_addr;
>  	u64 user_ctl;
>  
> -	BUG_ON(priv == NULL);
>  	ldev = priv->ldev;
>  	BUG_ON(ldev == NULL);

ldev is also obviously never NULL so you can remove that at the same
time.

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
