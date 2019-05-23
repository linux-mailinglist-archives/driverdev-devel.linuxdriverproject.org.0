Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 0CF6D276F0
	for <lists+driverdev-devel@lfdr.de>; Thu, 23 May 2019 09:30:28 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 4F8F8865C4;
	Thu, 23 May 2019 07:30:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id WxfdejrQ6nou; Thu, 23 May 2019 07:30:24 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 41807865A9;
	Thu, 23 May 2019 07:30:22 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 29DBF1BF3FC
 for <devel@linuxdriverproject.org>; Thu, 23 May 2019 07:30:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 2766488060
 for <devel@linuxdriverproject.org>; Thu, 23 May 2019 07:30:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id wAtD8mfDIo5V for <devel@linuxdriverproject.org>;
 Thu, 23 May 2019 07:30:18 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id D15FF88035
 for <devel@driverdev.osuosl.org>; Thu, 23 May 2019 07:30:18 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 37FD0217D7;
 Thu, 23 May 2019 07:30:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1558596618;
 bh=ujhlpZ5mKhOsSZaVmr89iXdVz9pfrd/drTOvs0yhvHU=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=EsvtVZ34uzPG9EKYWQ/ck6dXWDhMiNMaXUy8RgTWicMVfjzv0Gq3d9hWEpnS2c7f7
 A4ZmOoJqYgDymznW3xADriW5o0blaYk9VcKquaWaELMQqX0h9LKp9NFONr13IUwTA1
 kdCREoeiugAkVh3XXRIT1f25qbrKID00URKXlSAk=
Date: Thu, 23 May 2019 09:30:16 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Shobhit Kukreti <shobhitkukreti@yahoo.com>
Subject: Re: [PATCH] staging: pi433: cleanup to adhere with linux coding style
Message-ID: <20190523073016.GA14393@kroah.com>
References: <20190523010619.GA23217@t-1000>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190523010619.GA23217@t-1000>
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
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Wed, May 22, 2019 at 06:06:22PM -0700, Shobhit Kukreti wrote:
> The linux coding style emphasizes on a limit of 80 characters
> per line. Cleaned up several over 80 character warnings in following files:
> 
> pi433_if.c
> pi433_if.h
> rf69.c
> 
> Signed-off-by: Shobhit Kukreti <shobhitkukreti@yahoo.com>
> ---
>  drivers/staging/pi433/pi433_if.c | 15 ++++---
>  drivers/staging/pi433/pi433_if.h | 25 +++++++----
>  drivers/staging/pi433/rf69.c     | 89 ++++++++++++++++++++++++----------------
>  3 files changed, 78 insertions(+), 51 deletions(-)
> 
> diff --git a/drivers/staging/pi433/pi433_if.c b/drivers/staging/pi433/pi433_if.c
> index c889f0b..07715c9 100644
> --- a/drivers/staging/pi433/pi433_if.c
> +++ b/drivers/staging/pi433/pi433_if.c
> @@ -439,8 +439,7 @@ pi433_receive(void *data)
>  		/* wait for RSSI level to become high */
>  		dev_dbg(dev->dev, "rx: going to wait for high RSSI level");
>  		retval = wait_event_interruptible(dev->rx_wait_queue,
> -						  rf69_get_flag(dev->spi,
> -								rssi_exceeded_threshold));
> +			rf69_get_flag(dev->spi,	rssi_exceeded_threshold));

Ick, no.  The original code is fine here, this makes it much harder to
understand what is going on here, right?

>  		if (retval) /* wait was interrupted */
>  			goto abort;
>  		dev->interrupt_rx_allowed = false;
> @@ -475,7 +474,7 @@ pi433_receive(void *data)
>  	/* length byte enabled? */
>  	if (dev->rx_cfg.enable_length_byte == OPTION_ON) {
>  		retval = wait_event_interruptible(dev->fifo_wait_queue,
> -						  dev->free_in_fifo < FIFO_SIZE);
> +					dev->free_in_fifo < FIFO_SIZE);

Same for this, and all the other changes you made.  The 80 column "rule"
is just a strong hint.  There are other ways to remove it instead of
just moving code to the left like you did here, if you really want to
fix these warnings up.

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
