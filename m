Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 1589F2A3462
	for <lists+driverdev-devel@lfdr.de>; Mon,  2 Nov 2020 20:40:11 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 673F2204BF;
	Mon,  2 Nov 2020 19:40:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id NN4zQ7SddSCn; Mon,  2 Nov 2020 19:40:07 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 26EF6204A8;
	Mon,  2 Nov 2020 19:40:05 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id C0DE61BF36E
 for <devel@linuxdriverproject.org>; Mon,  2 Nov 2020 19:40:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id BA68386BA1
 for <devel@linuxdriverproject.org>; Mon,  2 Nov 2020 19:40:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 6kUDP6upQgq1 for <devel@linuxdriverproject.org>;
 Mon,  2 Nov 2020 19:40:01 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 748A686B9F
 for <devel@driverdev.osuosl.org>; Mon,  2 Nov 2020 19:40:01 +0000 (UTC)
Received: from localhost (83-86-74-64.cable.dynamic.v4.ziggo.nl [83.86.74.64])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 2F8CA22268;
 Mon,  2 Nov 2020 19:39:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1604346000;
 bh=IWunD2Cz2xcaCwPBQNJRvEa6f66eGVu+ZtfdVqx9Ivk=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=cSRBOUtkHP+xHtFE878bi0AZQGfo0GAygXV2x1BUU+joBUGj/03cbHOYhxbsOxBoD
 +DrMG+Qro8hQLQ4rlVnq0Xf+SR9GmrAw7nPRFzY3UPRWJWTFIvABJVAz2xF+YU20hr
 SH6n/VG6nEZIsoqBbXt3mmxNdFr+TZdllKa7DAGY=
Date: Mon, 2 Nov 2020 20:40:55 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: "siddhant gupta(siddhant1223)" <siddhantgupta416@gmail.com>
Subject: Re: [PATCH] staging: mt7621-dma: Prefer Using BIT Macro instead of
 left shifting on 1.
Message-ID: <20201102194055.GA2429929@kroah.com>
References: <20201102193402.GA14965@Sleakybeast>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201102193402.GA14965@Sleakybeast>
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
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
 linux-mediatek@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 matthias.bgg@gmail.com, mamatashukla555@gmail.com, himadrispandya@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Tue, Nov 03, 2020 at 01:04:02AM +0530, siddhant gupta(siddhant1223) wrote:
> 
> Replace left shifting on 1 by a BIT macro to fix checkpatch warning.
> 
> Signed-off-by: Siddhant Gupta <siddhantgupta416@gmail.com>
> 
> ---
>  drivers/staging/mt7621-dma/mtk-hsdma.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/mt7621-dma/mtk-hsdma.c b/drivers/staging/mt7621-dma/mtk-hsdma.c
> index 354536783e1c..a9e1a1b14035 100644
> --- a/drivers/staging/mt7621-dma/mtk-hsdma.c
> +++ b/drivers/staging/mt7621-dma/mtk-hsdma.c
> @@ -72,7 +72,7 @@
>  #define HSDMA_GLO_TX_DMA		BIT(0)
>  
>  #define HSDMA_BT_SIZE_16BYTES		(0 << HSDMA_GLO_BT_SHIFT)
> -#define HSDMA_BT_SIZE_32BYTES		(1 << HSDMA_GLO_BT_SHIFT)
> +#define HSDMA_BT_SIZE_32BYTES		BIT(HSDMA_GLO_BT_SHIFT)
>  #define HSDMA_BT_SIZE_64BYTES		(2 << HSDMA_GLO_BT_SHIFT)
>  #define HSDMA_BT_SIZE_128BYTES		(3 << HSDMA_GLO_BT_SHIFT)

In looking at the code, does this change really make sense?

(hint, I don't think so...)
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
