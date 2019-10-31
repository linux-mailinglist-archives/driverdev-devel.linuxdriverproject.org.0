Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D798EAAA6
	for <lists+driverdev-devel@lfdr.de>; Thu, 31 Oct 2019 07:36:13 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 9369787E8B;
	Thu, 31 Oct 2019 06:36:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ZqqJSyX46N-1; Thu, 31 Oct 2019 06:36:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id E245F87E53;
	Thu, 31 Oct 2019 06:36:10 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id E94841BF405
 for <devel@linuxdriverproject.org>; Thu, 31 Oct 2019 06:36:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id E2D168746B
 for <devel@linuxdriverproject.org>; Thu, 31 Oct 2019 06:36:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 9i4GCa5EXCaj for <devel@linuxdriverproject.org>;
 Thu, 31 Oct 2019 06:36:07 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail3-relais-sop.national.inria.fr
 (mail3-relais-sop.national.inria.fr [192.134.164.104])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 379EC87015
 for <devel@driverdev.osuosl.org>; Thu, 31 Oct 2019 06:36:06 +0000 (UTC)
X-IronPort-AV: E=Sophos;i="5.68,250,1569276000"; d="scan'208";a="325190394"
Received: from abo-45-121-68.mrs.modulonet.fr (HELO hadrien) ([85.68.121.45])
 by mail3-relais-sop.national.inria.fr with
 ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 31 Oct 2019 07:35:55 +0100
Date: Thu, 31 Oct 2019 07:35:54 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Gabriela Bittencourt <gabrielabittencourt00@gmail.com>
Subject: Re: [Outreachy kernel] [PATCH v3 3/3] staging: rts5208: Eliminate
 the use of Camel Case in file sd.h
In-Reply-To: <20191030190514.10011-4-gabrielabittencourt00@gmail.com>
Message-ID: <alpine.DEB.2.21.1910310734520.2718@hadrien>
References: <20191030190514.10011-1-gabrielabittencourt00@gmail.com>
 <20191030190514.10011-4-gabrielabittencourt00@gmail.com>
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
Cc: devel@driverdev.osuosl.org, gregkh@linuxfoundation.org,
 linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com,
 lkcamp@lists.libreplanetbr.org, nishkadg.linux@gmail.com,
 kim.jamie.bradley@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>



On Wed, 30 Oct 2019, Gabriela Bittencourt wrote:

> Cleans up checks of "Avoid CamelCase" in file sd.h
>
> Signed-off-by: Gabriela Bittencourt <gabrielabittencourt00@gmail.com>
> ---
>  drivers/staging/rts5208/sd.h | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/staging/rts5208/sd.h b/drivers/staging/rts5208/sd.h
> index dc9e8cad7a74..f4ff62653b56 100644
> --- a/drivers/staging/rts5208/sd.h
> +++ b/drivers/staging/rts5208/sd.h
> @@ -232,7 +232,7 @@
>  #define DCM_LOW_FREQUENCY_MODE   0x01
>
>  #define DCM_HIGH_FREQUENCY_MODE_SET  0x0C
> -#define DCM_Low_FREQUENCY_MODE_SET   0x00
> +#define DCM_LOW_FREQUENCY_MODE_SET   0x00

So this is never used in the kernel?  In that case, maybe it would still
be useful to keep it, because it somehow documents the device.  But the
log message should say that this is the case.

julia

>
>  #define MULTIPLY_BY_1    0x00
>  #define MULTIPLY_BY_2    0x01
> --
> 2.20.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20191030190514.10011-4-gabrielabittencourt00%40gmail.com.
>
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
