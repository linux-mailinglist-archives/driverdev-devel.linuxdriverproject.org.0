Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id DB19D1A1CB7
	for <lists+driverdev-devel@lfdr.de>; Wed,  8 Apr 2020 09:34:08 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 68D7887C2C;
	Wed,  8 Apr 2020 07:34:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Dfz4B2Pp6vOh; Wed,  8 Apr 2020 07:34:06 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id D865687B94;
	Wed,  8 Apr 2020 07:34:05 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id B9E9B1BF589
 for <devel@linuxdriverproject.org>; Wed,  8 Apr 2020 07:34:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id B1A9C86D96
 for <devel@linuxdriverproject.org>; Wed,  8 Apr 2020 07:34:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id j5+xRB74hX5x for <devel@linuxdriverproject.org>;
 Wed,  8 Apr 2020 07:34:01 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 06E19843DB
 for <devel@driverdev.osuosl.org>; Wed,  8 Apr 2020 07:34:00 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 5244C206A1;
 Wed,  8 Apr 2020 07:34:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1586331240;
 bh=c2Uzl2X79AqNfnzfAf4v+3E5WKLVF38m2BfHhrwAzsQ=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=NSUEB3vtoZWkAeQTUpXcWLGRaK8ZRAf4wWtQRCR/j1teZSyvXav3xE9oGRyMv3Xoh
 TuMbnqpXiq0T76nkf1EnokINRz+DPCL2YOUz0JpruI+WwgdFmCFNA0r4hJX8b3lEN7
 zsI/YcvOOu8aisPjg1DrS7ZWl3bpvP5WeGfQj2Yk=
Date: Wed, 8 Apr 2020 09:33:58 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: R Veera Kumar <vkor@vkten.in>
Subject: Re: [PATCH] staging: mt7621-pinctrl: Use correct pointer type
 argument for sizeof
Message-ID: <20200408073358.GA1033546@kroah.com>
References: <20200408071112.11578-1-vkor@vkten.in>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200408071112.11578-1-vkor@vkten.in>
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

On Wed, Apr 08, 2020 at 12:41:12PM +0530, R Veera Kumar wrote:
> Use correct pointer type argument for sizeof.
> Found using coccinelle.
> 
> Signed-off-by: R Veera Kumar <vkor@vkten.in>
> ---
>  drivers/staging/mt7621-pinctrl/pinctrl-rt2880.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/mt7621-pinctrl/pinctrl-rt2880.c b/drivers/staging/mt7621-pinctrl/pinctrl-rt2880.c
> index d0f06790d38f..62babad5ee0b 100644
> --- a/drivers/staging/mt7621-pinctrl/pinctrl-rt2880.c
> +++ b/drivers/staging/mt7621-pinctrl/pinctrl-rt2880.c
> @@ -220,7 +220,7 @@ static int rt2880_pinmux_index(struct rt2880_priv *p)
>  	/* allocate our function and group mapping index buffers */
>  	f = p->func = devm_kcalloc(p->dev,
>  				   p->func_count,
> -				   sizeof(struct rt2880_pmx_func),
> +				   sizeof(rt2880_pmx_func),

Did you build this change?

Always do so.

Also, nothing is really wrong with the existing code, remember,
checkpatch is a hint, telling you that maybe something is odd with this
line.  It is not always correct.

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
