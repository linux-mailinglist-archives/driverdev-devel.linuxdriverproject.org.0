Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id E92154EAB50
	for <lists+driverdev-devel@lfdr.de>; Tue, 29 Mar 2022 12:34:49 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0F534607D1;
	Tue, 29 Mar 2022 10:34:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id wur--61T1Ke3; Tue, 29 Mar 2022 10:34:47 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9DA59605AB;
	Tue, 29 Mar 2022 10:34:46 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 129281BF2BC
 for <devel@linuxdriverproject.org>; Tue, 29 Mar 2022 10:34:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 0038684201
 for <devel@linuxdriverproject.org>; Tue, 29 Mar 2022 10:34:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=linuxfoundation.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id tr_cPwysJSzy for <devel@linuxdriverproject.org>;
 Tue, 29 Mar 2022 10:34:42 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 025AC841F6
 for <devel@driverdev.osuosl.org>; Tue, 29 Mar 2022 10:34:41 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id D31926122B;
 Tue, 29 Mar 2022 10:34:40 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B56F7C340F2;
 Tue, 29 Mar 2022 10:34:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1648550080;
 bh=40vaXYujECRPq759yjf622O1qcpWEybCd8NmkHOSJaU=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=snHq0s20x5wvipHdOhtp0coIZowOd8cxckpZcwBPooemfF0a58YAJa//9IVURfyOL
 FZE4qLb3hmMYbG7ZUky2YM7R9ZVTd/64eIV7uVms2jgtW3pOxJL6GmrwxM6TMo/s46
 +jy2ghow4EEOxzTY22OEXdPECL/oYjqEau3o2Toc=
Date: Tue, 29 Mar 2022 12:34:37 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: QintaoShen <unSimple1993@163.com>
Subject: Re: [PATCH v1] pinctrl: ralink: rt2880: Check for return value of
 devm_kcalloc()
Message-ID: <YkLgvcHMKwxoOyP1@kroah.com>
References: <1648540212-9790-1-git-send-email-unSimple1993@163.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1648540212-9790-1-git-send-email-unSimple1993@163.com>
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
Cc: devel@driverdev.osuosl.org, devicetree@vger.kernel.org, yanaijie@huawei.com,
 linus.walleij@linaro.org, linux-kernel@vger.kernel.org,
 linux-gpio@vger.kernel.org, robh+dt@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Tue, Mar 29, 2022 at 03:50:12PM +0800, QintaoShen wrote:
> The memory allocation function devm_kcalloc() may return NULL pointer,
> so it is better to add a check for 'p->func[i]->pins' to avoid possible
> NULL pointer dereference.
> 
> Signed-off-by: QintaoShen <unSimple1993@163.com>
> ---
>  drivers/pinctrl/ralink/pinctrl-rt2880.c | 4 ++++
>  1 file changed, 4 insertions(+)
> 
> diff --git a/drivers/pinctrl/ralink/pinctrl-rt2880.c b/drivers/pinctrl/ralink/pinctrl-rt2880.c
> index 96fc06d..308610e 100644
> --- a/drivers/pinctrl/ralink/pinctrl-rt2880.c
> +++ b/drivers/pinctrl/ralink/pinctrl-rt2880.c
> @@ -266,6 +266,10 @@ static int rt2880_pinmux_pins(struct rt2880_priv *p)
>  						p->func[i]->pin_count,
>  						sizeof(int),
>  						GFP_KERNEL);
> +        
> +        if (!p->func[i]->pins)
> +            continue;
> +
>  		for (j = 0; j < p->func[i]->pin_count; j++)
>  			p->func[i]->pins[j] = p->func[i]->pin_first + j;
>  
> -- 
> 2.7.4
> 


Hi,

This is the friendly patch-bot of Greg Kroah-Hartman.  You have sent him
a patch that has triggered this response.  He used to manually respond
to these common problems, but in order to save his sanity (he kept
writing the same thing over and over, yet to different people), I was
created.  Hopefully you will not take offence and will fix the problem
in your patch and resubmit it so that it can be accepted into the Linux
kernel tree.

You are receiving this message because of the following common error(s)
as indicated below:

- Your patch contains warnings and/or errors noticed by the
  scripts/checkpatch.pl tool.

If you wish to discuss this problem further, or you have questions about
how to resolve this issue, please feel free to respond to this email and
Greg will reply once he has dug out from the pending patches received
from other developers.

thanks,

greg k-h's patch email bot
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
