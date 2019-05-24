Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FF0D29158
	for <lists+driverdev-devel@lfdr.de>; Fri, 24 May 2019 08:54:36 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id E12D286D2D;
	Fri, 24 May 2019 06:54:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id rWtKRNOr7w-0; Fri, 24 May 2019 06:54:34 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 0CA0A86D19;
	Fri, 24 May 2019 06:54:33 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id AE2BD1BF423
 for <devel@linuxdriverproject.org>; Fri, 24 May 2019 06:54:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id AB45922CC7
 for <devel@linuxdriverproject.org>; Fri, 24 May 2019 06:54:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id MlRI38s+kOhs for <devel@linuxdriverproject.org>;
 Fri, 24 May 2019 06:54:30 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by silver.osuosl.org (Postfix) with ESMTPS id 2A9A522CC6
 for <devel@driverdev.osuosl.org>; Fri, 24 May 2019 06:54:30 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 74A712175B;
 Fri, 24 May 2019 06:54:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1558680869;
 bh=6yxF1DtxCQR03wlZSHaFbiN7xZqIfFk2Sf23Qua7HVk=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=1iEFCXphs7fp5rMUlTY41GxWM8ORExSmofvbS+cVmeAPQqqWe1MBg44+/ygUdtAuo
 Qtj4yin9EuUdQzWNYIFOILGMqkoA023RDARfaYfhmz4DxVcEnhoEAuKmckA+DpwhyQ
 K3tG8sohWZcXnvaJxzwRsRiDnyimrA4dAoImhX8Q=
Date: Fri, 24 May 2019 08:54:27 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Nishka Dasgupta <nishkadg.linux@gmail.com>
Subject: Re: [PATCH 2/2] staging: gdm724x: Remove variable
Message-ID: <20190524065427.GB3600@kroah.com>
References: <20190524060026.3763-1-nishkadg.linux@gmail.com>
 <20190524060026.3763-2-nishkadg.linux@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190524060026.3763-2-nishkadg.linux@gmail.com>
User-Agent: Mutt/1.11.4 (2019-03-13)
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
Cc: devel@driverdev.osuosl.org, colin.king@canonical.com,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Fri, May 24, 2019 at 11:30:26AM +0530, Nishka Dasgupta wrote:
> The return variable is used only twice (in two different branches), and
> both times it is assigned the same constant value. These can therefore
> be merged into the same assignment, placed at the point that both
> these branches (and no other) go to. The return variable itself can be
> removed.
> Issue found with Coccinelle.
> 
> Signed-off-by: Nishka Dasgupta <nishkadg.linux@gmail.com>
> ---
>  drivers/staging/gdm724x/gdm_usb.c | 5 +----
>  1 file changed, 1 insertion(+), 4 deletions(-)

Your subject line needs a lot of work.

How about:
	staging: gdm724x: remove unneeded variable in init_usb()



> 
> diff --git a/drivers/staging/gdm724x/gdm_usb.c b/drivers/staging/gdm724x/gdm_usb.c
> index d023f83f9097..8145ae2afba7 100644
> --- a/drivers/staging/gdm724x/gdm_usb.c
> +++ b/drivers/staging/gdm724x/gdm_usb.c
> @@ -295,7 +295,6 @@ static void release_usb(struct lte_udev *udev)
>  
>  static int init_usb(struct lte_udev *udev)
>  {
> -	int ret = 0;
>  	int i;
>  	struct tx_cxt *tx = &udev->tx;
>  	struct rx_cxt *rx = &udev->rx;
> @@ -326,7 +325,6 @@ static int init_usb(struct lte_udev *udev)
>  	for (i = 0; i < MAX_NUM_SDU_BUF; i++) {
>  		t_sdu = alloc_tx_sdu_struct();
>  		if (!t_sdu) {
> -			ret = -ENOMEM;
>  			goto fail;
>  		}
>  
> @@ -337,7 +335,6 @@ static int init_usb(struct lte_udev *udev)
>  	for (i = 0; i < MAX_RX_SUBMIT_COUNT * 2; i++) {
>  		r = alloc_rx_struct();
>  		if (!r) {
> -			ret = -ENOMEM;
>  			goto fail;
>  		}
>  
> @@ -349,7 +346,7 @@ static int init_usb(struct lte_udev *udev)
>  	return 0;
>  fail:
>  	release_usb(udev);
> -	return ret;
> +	return -ENOMEM;
>  }

Again, you are getting _really_ close to the "churn for churn sake".
Maybe this is needed, but it's really a fine line...

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
