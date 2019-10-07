Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F0DBCEE10
	for <lists+driverdev-devel@lfdr.de>; Mon,  7 Oct 2019 22:55:13 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 3982F87C69;
	Mon,  7 Oct 2019 20:55:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id YWbN2QMOR2-V; Mon,  7 Oct 2019 20:55:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 8862687BFE;
	Mon,  7 Oct 2019 20:55:10 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id AE0901BF387
 for <devel@linuxdriverproject.org>; Mon,  7 Oct 2019 20:55:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id A6E1482835
 for <devel@linuxdriverproject.org>; Mon,  7 Oct 2019 20:55:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id FMeBCmDtQ+mD for <devel@linuxdriverproject.org>;
 Mon,  7 Oct 2019 20:55:06 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail2-relais-roc.national.inria.fr
 (mail2-relais-roc.national.inria.fr [192.134.164.83])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 2C6CA81457
 for <devel@driverdev.osuosl.org>; Mon,  7 Oct 2019 20:55:05 +0000 (UTC)
X-IronPort-AV: E=Sophos;i="5.67,269,1566856800"; d="scan'208";a="405127971"
Received: from 81-65-53-202.rev.numericable.fr (HELO hadrien) ([81.65.53.202])
 by mail2-relais-roc.national.inria.fr with
 ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 07 Oct 2019 22:55:03 +0200
Date: Mon, 7 Oct 2019 22:55:03 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Jules Irenge <jbi.octave@gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] staging: rtl8712: Add comment to lock
 declaration
In-Reply-To: <20191007205248.24466-1-jbi.octave@gmail.com>
Message-ID: <alpine.DEB.2.21.1910072254290.2578@hadrien>
References: <20191007205248.24466-1-jbi.octave@gmail.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
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
Cc: devel@driverdev.osuosl.org, outreachy-kernel@googlegroups.com,
 Larry.Finger@lwfinger.net, gregkh@linuxfoundation.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>



On Mon, 7 Oct 2019, Jules Irenge wrote:

> Add comment to spinlock declaration to fix warning issued by checkpatch.pl
> "CHECK: spinlock_t definition without comment".

Since it is not apparent from the shown code, it would be helpful to
describe what evidence you used to choose this comment.

thanks,
julia

>
> Signed-off-by: Jules Irenge <jbi.octave@gmail.com>
> ---
>  drivers/staging/rtl8712/drv_types.h | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/staging/rtl8712/drv_types.h b/drivers/staging/rtl8712/drv_types.h
> index 0c4325073c63..960d8709aada 100644
> --- a/drivers/staging/rtl8712/drv_types.h
> +++ b/drivers/staging/rtl8712/drv_types.h
> @@ -160,7 +160,7 @@ struct _adapter {
>  	int pid; /*process id from UI*/
>  	struct work_struct wk_filter_rx_ff0;
>  	u8 blnEnableRxFF0Filter;
> -	spinlock_t lock_rx_ff0_filter;
> +	spinlock_t lock_rx_ff0_filter; /*spinlock to protect interrupt request*/
>  	const struct firmware *fw;
>  	struct usb_interface *pusb_intf;
>  	struct mutex mutex_start;
> --
> 2.21.0
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20191007205248.24466-1-jbi.octave%40gmail.com.
>
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
