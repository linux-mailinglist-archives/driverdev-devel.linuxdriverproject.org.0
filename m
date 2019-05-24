Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 19815299E4
	for <lists+driverdev-devel@lfdr.de>; Fri, 24 May 2019 16:16:18 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 9558F31931;
	Fri, 24 May 2019 14:16:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id q7xGLV5yveml; Fri, 24 May 2019 14:16:15 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 9147631921;
	Fri, 24 May 2019 14:16:13 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 68B341BF311
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 24 May 2019 14:16:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 6579988C33
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 24 May 2019 14:16:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id yzECS226R-Tx
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 24 May 2019 14:16:10 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 37E0888C2B
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 24 May 2019 14:16:10 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 8E340206A3;
 Fri, 24 May 2019 14:16:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1558707370;
 bh=JAfLweRJ4vMGud+U+nWnoienaeNwbAJg0Iqdornm6Eg=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=uAnZ20iqIyIT4pqkwGtle3qgGyKjmzEGXeo51+F1wasDlFqvWo2SVks71NbNvAUUM
 rHBSJc6VkS4oWSBc6IU1U7+9/07QXRS0WGuevq13pJ6JvTrbL5n3ieGf2IZ0BEiIMK
 gbNb/7sBPXQiGpNaFy0owOf0A43zImUF6tDCtlUQ=
Date: Fri, 24 May 2019 16:16:07 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Jeremy Sowden <jeremy@azazel.net>
Subject: Re: [PATCH] staging: kpc2000: simplify nested conditionals that just
 return a boolean.
Message-ID: <20190524141607.GA3766@kroah.com>
References: <20190524121926.32487-1-jeremy@azazel.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190524121926.32487-1-jeremy@azazel.net>
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
Cc: Linux Driver Project Developer List
 <driverdev-devel@linuxdriverproject.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Fri, May 24, 2019 at 01:19:26PM +0100, Jeremy Sowden wrote:
> kp2000_check_uio_irq contained a pair of nested ifs which each evaluated
> a bitwise operation.  If both operations yielded true, the function
> returned 1; otherwise it returned 0.
> 
> Replaced the whole thing with one return statement that evaluates the
> combination of both bitwise operations.

Does this really do the same thing?

> 
> Signed-off-by: Jeremy Sowden <jeremy@azazel.net>
> ---
> This applies to staging-testing.
> 
> I was in two minds whether to send this patch or something less terse:
> 
> +	return (interrupt_active & irq_check_mask) &&
> +	       (interrupt_mask_inv & irq_check_mask);
> 
>  drivers/staging/kpc2000/kpc2000/cell_probe.c | 10 ++++------
>  1 file changed, 4 insertions(+), 6 deletions(-)
> 
> diff --git a/drivers/staging/kpc2000/kpc2000/cell_probe.c b/drivers/staging/kpc2000/kpc2000/cell_probe.c
> index f731a97c6cac..d10f695b6673 100644
> --- a/drivers/staging/kpc2000/kpc2000/cell_probe.c
> +++ b/drivers/staging/kpc2000/kpc2000/cell_probe.c
> @@ -240,12 +240,10 @@ int  kp2000_check_uio_irq(struct kp2000_device *pcard, u32 irq_num)
>  	u64 interrupt_mask_inv = ~readq(pcard->sysinfo_regs_base + REG_INTERRUPT_MASK);
>  	u64 irq_check_mask = (1 << irq_num);
>  
> -	if (interrupt_active & irq_check_mask) { // if it's active (interrupt pending)
> -		if (interrupt_mask_inv & irq_check_mask) {    // and if it's not masked off
> -			return 1;
> -		}
> -	}
> -	return 0;
> +	/*
> +	 * Is the IRQ active (interrupt pending) and not masked off?
> +	 */
> +	return (interrupt_active & interrupt_mask_inv & irq_check_mask) != 0;

I have no idea what these bits really are, but try the above with the
following values:
	interrupt_active = BIT(0);
	interrupt_mask_inv = BIT(1);
	irq_check_mask = (BIT(1) | BIT(0));

So in your new code you have:
	BIT(0) & BIT(1) & (BIT(1) | BIT(0))
which reduces to:
	0 & (BIT(1) | BIT(0))
which then reduces to:
	0

The original if statements will return 1.
Your new one will return 0.

You can't AND interrupt_active with interrupt_mask_inv like you did
here, right?

Or am I reading this all wrong?

And what's wrong with the original code here?  What is complaining about
it (other than the crazy comment style...)?

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
