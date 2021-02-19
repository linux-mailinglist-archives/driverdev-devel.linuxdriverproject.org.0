Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 90E6A31F9B9
	for <lists+driverdev-devel@lfdr.de>; Fri, 19 Feb 2021 14:18:23 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id CC2F786C20;
	Fri, 19 Feb 2021 13:18:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id YYYgr68W2Nbl; Fri, 19 Feb 2021 13:18:20 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id C610E86B92;
	Fri, 19 Feb 2021 13:18:19 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id EF1291BF393
 for <devel@linuxdriverproject.org>; Fri, 19 Feb 2021 13:18:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id EBB3186816
 for <devel@linuxdriverproject.org>; Fri, 19 Feb 2021 13:18:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id oBGA1wwnFW19 for <devel@linuxdriverproject.org>;
 Fri, 19 Feb 2021 13:16:55 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 78E588711B
 for <devel@driverdev.osuosl.org>; Fri, 19 Feb 2021 13:16:55 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 55ACA64EB1;
 Fri, 19 Feb 2021 13:16:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1613740615;
 bh=fPbHxMLrEmvBJRzhGkUecG7yzmcuMrZN/Qxn/XfmJEk=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=NVNrJ09Gn2etYs5h0w42h6cJ2Gi7vPhxLqTj+ww6kvYvN7dLDfLPMgzQzZuZSs/aq
 p059IA59YlA5+FE7Eia3D6T6XC7D7HbEYL5H+/ZnvkU/3ji0ZAk8IUgvSU4Fg9GvXk
 o29+DDs29xHcn5MhxIhPpB3KleHOLlIHdzzeJUX4=
Date: Fri, 19 Feb 2021 14:16:51 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Prakash Dubey <prakashdubey1999@gmail.com>
Subject: Re: [PATCH v2] staging: fwserial: fix alignment of function parameters
Message-ID: <YC+6QxVMfl2cq7QC@kroah.com>
References: <20210219105112.GA8315@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210219105112.GA8315@gmail.com>
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

On Fri, Feb 19, 2021 at 04:21:12PM +0530, Prakash Dubey wrote:
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
> index a92741b8b6c6..137e97c9406c 100644
> --- a/drivers/staging/fwserial/fwserial.c
> +++ b/drivers/staging/fwserial/fwserial.c
> @@ -1318,8 +1318,8 @@ static int fwtty_break_ctl(struct tty_struct *tty, int state)
>  	if (state == -1) {
>  		set_bit(STOP_TX, &port->flags);
>  		ret = wait_event_interruptible_timeout(port->wait_tx,
> -							!test_bit(IN_TX, &port->flags),
> -							10);
> +						       !test_bit(IN_TX, &port->flags),
> +						       10);
>  		if (ret == 0 || ret == -ERESTARTSYS) {
>  			clear_bit(STOP_TX, &port->flags);
>  			fwtty_restart_tx(port);
> -- 
> 2.25.1

Does not apply to my tree at all, please be sure to always work off of
linux-next or my staging-next tree so as not to duplicate work that
others have already done.

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
