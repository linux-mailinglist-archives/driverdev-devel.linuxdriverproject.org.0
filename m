Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 83B0ECDF53
	for <lists+driverdev-devel@lfdr.de>; Mon,  7 Oct 2019 12:27:45 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 6D14F86759;
	Mon,  7 Oct 2019 10:27:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id zexJ82dL0UUe; Mon,  7 Oct 2019 10:27:42 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 38937865E2;
	Mon,  7 Oct 2019 10:27:41 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id D8E5C1BF3C2
 for <devel@linuxdriverproject.org>; Mon,  7 Oct 2019 10:27:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id D5BCE85551
 for <devel@linuxdriverproject.org>; Mon,  7 Oct 2019 10:27:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 4gynD002qaze for <devel@linuxdriverproject.org>;
 Mon,  7 Oct 2019 10:27:37 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id B1BF3849BE
 for <devel@driverdev.osuosl.org>; Mon,  7 Oct 2019 10:27:37 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 026F7206BB;
 Mon,  7 Oct 2019 10:27:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1570444057;
 bh=o/3HX+sqnNh7vr3SYYCutqGAasG1AMtER1h8gM4+CBo=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=jVyox7Ty4EgYsSneZb3KoxWcLIsY8yooYV1lyMOfV5nrrDlBzcueVtqupZbxCNCoB
 iisw6VDNuCnOHbvJg6o76eKW+Q9obYfeXL7yMqsyt0RFDHSewKV8iK+mhdQ+Zy5fOl
 LtLtslBBAFup2HpSDXzURN8U6U4Zc7S962nKSHMc=
Date: Mon, 7 Oct 2019 12:27:35 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Gabriela Bittencourt <gabrielabittencourt00@gmail.com>
Subject: Re: [PATCH] staging: rtl8712: align block comments
Message-ID: <20191007102735.GA345628@kroah.com>
References: <20191006203420.11202-1-gabrielabittencourt00@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191006203420.11202-1-gabrielabittencourt00@gmail.com>
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
Cc: devel@driverdev.osuosl.org, florian.c.schilhabel@googlemail.com,
 trivial@kernel.org, linux-kernel@vger.kernel.org,
 outreachy-kernel@googlegroups.com, lkcamp@lists.libreplanetbr.org,
 nishkadg.linux@gmail.com, Larry.Finger@lwfinger.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Sun, Oct 06, 2019 at 05:34:20PM -0300, Gabriela Bittencourt wrote:
> Cleans up warnings of "Block comments should align the * on each line"
> 
> Signed-off-by: Gabriela Bittencourt <gabrielabittencourt00@gmail.com>
> ---
>  drivers/staging/rtl8712/recv_linux.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/staging/rtl8712/recv_linux.c b/drivers/staging/rtl8712/recv_linux.c
> index 84c4c8580f9a..70a4dcd4a1e5 100644
> --- a/drivers/staging/rtl8712/recv_linux.c
> +++ b/drivers/staging/rtl8712/recv_linux.c
> @@ -115,8 +115,8 @@ void r8712_recv_indicatepkt(struct _adapter *adapter,
>  	skb->protocol = eth_type_trans(skb, adapter->pnetdev);
>  	netif_rx(skb);
>  	recvframe->u.hdr.pkt = NULL; /* pointers to NULL before
> -					* r8712_free_recvframe()
> -					*/
> +				      * r8712_free_recvframe()
> +				      */
>  	r8712_free_recvframe(recvframe, free_recv_queue);
>  	return;
>  _recv_indicatepkt_drop:

This patch did not apply to my tree at all.  Be sure you are working
against the staging-next branch of the staging.git tree, or off of
linux-next which includes this branch as well.

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
