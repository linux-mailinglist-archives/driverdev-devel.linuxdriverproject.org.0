Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id C2D3A69BBD
	for <lists+driverdev-devel@lfdr.de>; Mon, 15 Jul 2019 21:55:35 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 8041F87BA6;
	Mon, 15 Jul 2019 19:55:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 57o2UglwpYst; Mon, 15 Jul 2019 19:55:33 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id D5B5D87541;
	Mon, 15 Jul 2019 19:55:32 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 8D5F51BF393
 for <driverdev-devel@linuxdriverproject.org>;
 Mon, 15 Jul 2019 19:55:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 89CBF8682A
 for <driverdev-devel@linuxdriverproject.org>;
 Mon, 15 Jul 2019 19:55:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 6o7-jTXYQyzh
 for <driverdev-devel@linuxdriverproject.org>;
 Mon, 15 Jul 2019 19:55:29 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by whitealder.osuosl.org (Postfix) with ESMTPS id E2BA386812
 for <driverdev-devel@linuxdriverproject.org>;
 Mon, 15 Jul 2019 19:55:29 +0000 (UTC)
Received: from localhost (unknown [88.128.80.139])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 509C320659;
 Mon, 15 Jul 2019 19:55:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1563220529;
 bh=fGSZwRNXTFWr2cAC0TV6l/TwCZ90jLYn2o9TxSbqe+M=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=pg5HY5PXXB+wjN9lV9hxbB23K+El3wnMhUeMvEV749MPvn9+wjblBN+veyUVS20WW
 zEgIQpCXWH4Xgy5T5LxeCmx4giXOdO8sajgtTLCA9FHdTF77/IF1+2gY8DCYduHuU9
 6aIVrzti46W1bXG+EBR8GxfPPtgc9ipBRpAf07Rs=
Date: Mon, 15 Jul 2019 21:39:50 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: christianluciano.m@gmail.com
Subject: Re: [PATCH] staging: rtl8712: Add parenthesis to Macro argument
Message-ID: <20190715193950.GA26092@kroah.com>
References: <20190713212652.11095-1-christianluciano.m@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190713212652.11095-1-christianluciano.m@gmail.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
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
Cc: florian.c.schilhabel@googlemail.com, driverdev-devel@linuxdriverproject.org,
 Larry.Finger@lwfinger.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Sat, Jul 13, 2019 at 06:26:52PM -0300, christianluciano.m@gmail.com wrote:
> From: Christian Luciano Moreno <christianluciano.m@gmail.com>
> 
> Add parenthesis to Macro argument to avoid precedence issues.
> 
> Signed-off-by: Christian Luciano Moreno <christianluciano.m@gmail.com>
> ---
>  drivers/staging/rtl8712/basic_types.h | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/rtl8712/basic_types.h b/drivers/staging/rtl8712/basic_types.h
> index 4ad7f35b1644..3e6d4ff45a75 100644
> --- a/drivers/staging/rtl8712/basic_types.h
> +++ b/drivers/staging/rtl8712/basic_types.h
> @@ -21,7 +21,7 @@
>  
>  #define SIZE_T __kernel_size_t
>  #define sint signed int
> -#define FIELD_OFFSET(s, field)	((addr_t)&((s *)(0))->field)
> +#define FIELD_OFFSET(s, field)	((addr_t)&(((s) *)(0))->(field))
>  

This change makes no sense, and it breaks the build, which implies you
did not test it at all :(

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
