Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 8007331F5B3
	for <lists+driverdev-devel@lfdr.de>; Fri, 19 Feb 2021 09:13:51 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 6400986B7C;
	Fri, 19 Feb 2021 08:13:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 69lBT2vRp--d; Fri, 19 Feb 2021 08:13:47 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 525E086A63;
	Fri, 19 Feb 2021 08:13:47 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 6B0641BF318
 for <devel@linuxdriverproject.org>; Fri, 19 Feb 2021 08:13:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 681EF87447
 for <devel@linuxdriverproject.org>; Fri, 19 Feb 2021 08:13:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id qrqrMWGHeKvg for <devel@linuxdriverproject.org>;
 Fri, 19 Feb 2021 08:13:44 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id DA62B87216
 for <devel@driverdev.osuosl.org>; Fri, 19 Feb 2021 08:13:44 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id CA81464EBD;
 Fri, 19 Feb 2021 08:13:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1613722424;
 bh=0vt+ZRs9Rwe2i5MnPG83TOwiw+V1EdFAt+vD6kMqqyM=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=XQwbj6iiqSgDhGhwXCc5VMOTiPUvm0+mqRkDxCGzbDTo863PmS0p9nImHFPVga7zD
 wmsRCAHosIIMfo1SwdTwEnnS5pyQjB0Qsj1q3lCiQoRZKCYVQJXU/I2ruE3oF1s+64
 LahreQ+/xdD5q231wXDvJz3b31spLRXf542ru1cc=
Date: Fri, 19 Feb 2021 09:13:41 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Prakash Dubey <prakashdubey1999@gmail.com>
Subject: Re: [PATCH] staging: fwserial: Fix alignment of function parameters
Message-ID: <YC9zNVWX7R9kD0Rq@kroah.com>
References: <20210218102851.GA20810@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210218102851.GA20810@gmail.com>
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

On Thu, Feb 18, 2021 at 03:58:51PM +0530, Prakash Dubey wrote:
> This patch fixes the following checkpatch.pl check:
> 
> CHECK: Alignment should match open parenthesis
> 
> Signed-off-by: Prakash Dubey <prakashdubey1999@gmail.com>
> ---
>  drivers/staging/fwserial/fwserial.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/staging/fwserial/fwserial.c b/drivers/staging/fwserial/fwserial.c
> index c368082aae1a..a92741b8b6c6 100644
> --- a/drivers/staging/fwserial/fwserial.c
> +++ b/drivers/staging/fwserial/fwserial.c
> @@ -1318,8 +1318,8 @@ static int fwtty_break_ctl(struct tty_struct *tty, int state)
>  	if (state == -1) {
>  		set_bit(STOP_TX, &port->flags);
>  		ret = wait_event_interruptible_timeout(port->wait_tx,
> -					       !test_bit(IN_TX, &port->flags),
> -					       10);
> +							!test_bit(IN_TX, &port->flags),
> +							10);

Shouldn't you make this line up with the ( above?  This indents it a bit
further :(

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
