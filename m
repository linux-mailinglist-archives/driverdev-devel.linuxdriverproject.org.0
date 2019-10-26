Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 49765E58A3
	for <lists+driverdev-devel@lfdr.de>; Sat, 26 Oct 2019 06:41:06 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id EED252041B;
	Sat, 26 Oct 2019 04:41:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id xqgInA0fFP0k; Sat, 26 Oct 2019 04:41:03 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id AF70A20133;
	Sat, 26 Oct 2019 04:41:02 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 4CD3D1BF28F
 for <devel@linuxdriverproject.org>; Sat, 26 Oct 2019 04:41:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 3B0A1203E1
 for <devel@linuxdriverproject.org>; Sat, 26 Oct 2019 04:41:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id e8off31RtG4K for <devel@linuxdriverproject.org>;
 Sat, 26 Oct 2019 04:40:57 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail2-relais-roc.national.inria.fr
 (mail2-relais-roc.national.inria.fr [192.134.164.83])
 by silver.osuosl.org (Postfix) with ESMTPS id 1802D20133
 for <devel@driverdev.osuosl.org>; Sat, 26 Oct 2019 04:40:56 +0000 (UTC)
X-IronPort-AV: E=Sophos;i="5.68,230,1569276000"; d="scan'208";a="408354237"
Received: from ip-121.net-89-2-166.rev.numericable.fr (HELO hadrien)
 ([89.2.166.121])
 by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 26 Oct 2019 06:40:54 +0200
Date: Sat, 26 Oct 2019 06:40:54 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Cristiane Naves <cristianenavescardoso09@gmail.com>
Subject: Re: [Outreachy kernel] [RESEND PATCH] staging: gasket: Fix line
 ending with a '('
In-Reply-To: <20191025233909.GA1599@cristiane-Inspiron-5420>
Message-ID: <alpine.DEB.2.21.1910260640340.2559@hadrien>
References: <20191025233909.GA1599@cristiane-Inspiron-5420>
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
Cc: devel@driverdev.osuosl.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com,
 Rob Springer <rspringer@google.com>, Todd Poynor <toddpoynor@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>



On Fri, 25 Oct 2019, Cristiane Naves wrote:

> Fix line ending with a '('
>
> Signed-off-by: Cristiane Naves <cristianenavescardoso09@gmail.com>

Acked-by: Julia Lawall <julia.lawall@lip6.fr>


> ---
>  drivers/staging/gasket/gasket_ioctl.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/staging/gasket/gasket_ioctl.c b/drivers/staging/gasket/gasket_ioctl.c
> index 240f9bb..d1b3e9a 100644
> --- a/drivers/staging/gasket/gasket_ioctl.c
> +++ b/drivers/staging/gasket/gasket_ioctl.c
> @@ -34,8 +34,8 @@ static int gasket_set_event_fd(struct gasket_dev *gasket_dev,
>
>  	trace_gasket_ioctl_eventfd_data(die.interrupt, die.event_fd);
>
> -	return gasket_interrupt_set_eventfd(
> -		gasket_dev->interrupt_data, die.interrupt, die.event_fd);
> +	return gasket_interrupt_set_eventfd(gasket_dev->interrupt_data,
> +					    die.interrupt, die.event_fd);
>  }
>
>  /* Read the size of the page table. */
> --
> 2.7.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20191025233909.GA1599%40cristiane-Inspiron-5420.
>
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
