Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 07601144067
	for <lists+driverdev-devel@lfdr.de>; Tue, 21 Jan 2020 16:24:11 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 8C7BE87532;
	Tue, 21 Jan 2020 15:24:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id SW3ShJ9iHVHG; Tue, 21 Jan 2020 15:24:08 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 40FDD8744A;
	Tue, 21 Jan 2020 15:24:03 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 4301E1BF297
 for <devel@linuxdriverproject.org>; Tue, 21 Jan 2020 15:24:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 3AED08561D
 for <devel@linuxdriverproject.org>; Tue, 21 Jan 2020 15:24:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ai9359nhItKk for <devel@linuxdriverproject.org>;
 Tue, 21 Jan 2020 15:23:57 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 9695D84F58
 for <devel@driverdev.osuosl.org>; Tue, 21 Jan 2020 15:23:57 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id E2516217F4;
 Tue, 21 Jan 2020 15:23:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1579620237;
 bh=SPh9mzwvhAdkUs6vC0kUWXdfIIlM4+eJLXXJUm9Egv0=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=eAEI4U3SGvRtfioj899ov7S10ysziOtVUxEcw3jlCpLyG7LVWy/xExHC9Vxlin9s2
 vbejJPuMBoxi2D/6GTwXEOhNsd8EiQ8q/RRAX920lIjv1B4PDWrrvOUzl5US6VABXk
 bRXoGZUYWbrMIJw5+PlHp+kLqXerqaP4sNJudB8w=
Date: Tue, 21 Jan 2020 16:23:55 +0100
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Sandesh Kenjana Ashok <sandeshkenjanaashok@gmail.com>
Subject: Re: [PATCH] staging: mt7621-pinctrl: Align to fix warnings of line
 over 80 characters
Message-ID: <20200121152355.GB572414@kroah.com>
References: <20200121134705.GA28240@SandeshPC>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200121134705.GA28240@SandeshPC>
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
Cc: Matthias Brugger <matthias.bgg@gmail.com>, devel@driverdev.osuosl.org,
 linux-mediatek@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Tue, Jan 21, 2020 at 02:47:05PM +0100, Sandesh Kenjana Ashok wrote:
> Issue found by checkpatch.
> 
> Signed-off-by: Sandesh Kenjana Ashok <sandeshkenjanaashok@gmail.com>
> ---
>  drivers/staging/mt7621-pinctrl/pinctrl-rt2880.c | 11 ++++++-----
>  1 file changed, 6 insertions(+), 5 deletions(-)
> 
> diff --git a/drivers/staging/mt7621-pinctrl/pinctrl-rt2880.c b/drivers/staging/mt7621-pinctrl/pinctrl-rt2880.c
> index d0f06790d38f..df5da5fce630 100644
> --- a/drivers/staging/mt7621-pinctrl/pinctrl-rt2880.c
> +++ b/drivers/staging/mt7621-pinctrl/pinctrl-rt2880.c
> @@ -159,7 +159,8 @@ static int rt2880_pmx_group_enable(struct pinctrl_dev *pctrldev,
>  }
>  
>  static int rt2880_pmx_group_gpio_request_enable(struct pinctrl_dev *pctrldev,
> -						struct pinctrl_gpio_range *range,
> +						struct pinctrl_gpio_range
> +						*range,

Ick, that looks worse now, right?  checkpatch is a guideline, not a
hard-and-fast rule here.

>  						unsigned int pin)
>  {
>  	struct rt2880_priv *p = pinctrl_dev_get_drvdata(pctrldev);
> @@ -218,10 +219,10 @@ static int rt2880_pinmux_index(struct rt2880_priv *p)
>  	p->func_count++;
>  
>  	/* allocate our function and group mapping index buffers */
> -	f = p->func = devm_kcalloc(p->dev,
> -				   p->func_count,
> -				   sizeof(struct rt2880_pmx_func),
> -				   GFP_KERNEL);
> +	f = p->func;
> +	p->func =  devm_kcalloc(p->dev, p->func_count,
> +				sizeof(struct rt2880_pmx_func), GFP_KERNEL);
> +

You broke the code here :(

Please learn a bit more about how C works before attempting to work on
kernel code.

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
