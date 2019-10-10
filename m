Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E51BD25C3
	for <lists+driverdev-devel@lfdr.de>; Thu, 10 Oct 2019 11:04:18 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 2EC8B88522;
	Thu, 10 Oct 2019 09:04:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id kPoHpWZVyduT; Thu, 10 Oct 2019 09:04:16 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 5E7D08850E;
	Thu, 10 Oct 2019 09:04:15 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id E04ED1BF97B
 for <devel@linuxdriverproject.org>; Thu, 10 Oct 2019 09:04:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id D39018850E
 for <devel@linuxdriverproject.org>; Thu, 10 Oct 2019 09:04:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 8zT9fpxLhfu4 for <devel@linuxdriverproject.org>;
 Thu, 10 Oct 2019 09:04:09 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 247FB88541
 for <devel@driverdev.osuosl.org>; Thu, 10 Oct 2019 09:04:08 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 2D7112067B;
 Thu, 10 Oct 2019 09:04:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1570698248;
 bh=H6RTQHkgnOqK1Pnifhj8f8xAqA61MNagEhmL/2b5I/k=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=LKYaTGr+/60LAks4D8ZWDzkm2fvx44gz7TM+BndY0b2zBkB9V5ZopH6LwWInWB1YW
 JrQIxwsgr0cIg8zGV16AXp9JIENSPJCnvHeiPWaeuVuJIVhISJnaMhViNWy46Xg68j
 g+vhTcKDCy5oWCuSxcc42LhSizxSpHC064IkV/OA=
Date: Thu, 10 Oct 2019 11:04:06 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Yizhuo <yzhai003@ucr.edu>
Subject: Re: [PATCH] staging: sm750fb: Potential uninitialized field in "pll"
Message-ID: <20191010090406.GA466733@kroah.com>
References: <20191010043809.27594-1-yzhai003@ucr.edu>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191010043809.27594-1-yzhai003@ucr.edu>
User-Agent: Mutt/1.12.2 (2019-09-21)
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
Cc: devel@driverdev.osuosl.org, Sudip Mukherjee <sudipm.mukherjee@gmail.com>,
 linux-fbdev@vger.kernel.org, Teddy Wang <teddy.wang@siliconmotion.com>,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Wed, Oct 09, 2019 at 09:38:08PM -0700, Yizhuo wrote:
> Inside function set_chip_clock(), struct pll is supposed to be
> initialized in sm750_calc_pll_value(), if condition
> "diff < mini_diff" in sm750_calc_pll_value() cannot be fulfilled,
> then some field of pll will not be initialized but used in
> function sm750_format_pll_reg(), which is potentially unsafe.
> 
> Signed-off-by: Yizhuo <yzhai003@ucr.edu>
> ---
>  drivers/staging/sm750fb/ddk750_chip.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/sm750fb/ddk750_chip.c b/drivers/staging/sm750fb/ddk750_chip.c
> index 5a317cc98a4b..31b3cf9c2d8b 100644
> --- a/drivers/staging/sm750fb/ddk750_chip.c
> +++ b/drivers/staging/sm750fb/ddk750_chip.c
> @@ -55,7 +55,7 @@ static unsigned int get_mxclk_freq(void)
>   */
>  static void set_chip_clock(unsigned int frequency)
>  {
> -	struct pll_value pll;
> +	struct pll_value pll = {};
>  	unsigned int actual_mx_clk;
>  
>  	/* Cheok_0509: For SM750LE, the chip clock is fixed. Nothing to set. */

This doesn't apply to my tree at all.  Please rebase it against the
staging-next branch of staging.git and resend.

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
