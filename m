Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 6110F136CFD
	for <lists+driverdev-devel@lfdr.de>; Fri, 10 Jan 2020 13:24:43 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 73E9087601;
	Fri, 10 Jan 2020 12:24:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id riVVtZV62UJ7; Fri, 10 Jan 2020 12:24:41 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 625EE86E71;
	Fri, 10 Jan 2020 12:24:40 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 444021BF2EF
 for <devel@linuxdriverproject.org>; Fri, 10 Jan 2020 12:24:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 40CA388453
 for <devel@linuxdriverproject.org>; Fri, 10 Jan 2020 12:24:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id hM09lnLBQDS4 for <devel@linuxdriverproject.org>;
 Fri, 10 Jan 2020 12:24:37 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id AC3AC878B3
 for <devel@driverdev.osuosl.org>; Fri, 10 Jan 2020 12:24:37 +0000 (UTC)
Received: from localhost (83-84-126-242.cable.dynamic.v4.ziggo.nl
 [83.84.126.242])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 0F1C52077C;
 Fri, 10 Jan 2020 12:24:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1578659077;
 bh=HCvJP+UdwCX6Q2crGVwKn7N7yPIf75Fk5SPzBBin100=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=kk0BBdWnW5aZ1JZ6Bcv8/vIsAgIMssATKbTDPONtWkM/Cgi7cxGtGWEXBOoieyrvg
 Zj1aE3c6SqAmUSHHkXwNZOhcnMGRVV0iBdWd/cnqUR4lKSjCL5Ko79R7x32ydPB4U7
 Ee8QKutkNtOIosejv/SM5hQu39TB3vjjFxTzbWxw=
Date: Fri, 10 Jan 2020 13:19:51 +0100
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Masahiro Yamada <masahiroy@kernel.org>
Subject: Re: [PATCH] staging: vc04_service: remove unused header include path
Message-ID: <20200110121951.GA1047840@kroah.com>
References: <20200104162829.20400-1-masahiroy@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200104162829.20400-1-masahiroy@kernel.org>
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
Cc: devel@driverdev.osuosl.org, bcm-kernel-feedback-list@broadcom.com,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rpi-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Sun, Jan 05, 2020 at 01:28:29AM +0900, Masahiro Yamada wrote:
> I can build drivers/staging/vc04_services without this.
> 
> Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
> ---
> 
>  drivers/staging/vc04_services/Makefile | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/vc04_services/Makefile b/drivers/staging/vc04_services/Makefile
> index afe43fa5a6d7..54d9e2f31916 100644
> --- a/drivers/staging/vc04_services/Makefile
> +++ b/drivers/staging/vc04_services/Makefile
> @@ -13,5 +13,5 @@ vchiq-objs := \
>  obj-$(CONFIG_SND_BCM2835)	+= bcm2835-audio/
>  obj-$(CONFIG_VIDEO_BCM2835)	+= bcm2835-camera/
>  
> -ccflags-y += -Idrivers/staging/vc04_services -D__VCCOREVER__=0x04000000
> +ccflags-y += -D__VCCOREVER__=0x04000000
>  
> -- 

This patch breaks the build for me:
drivers/staging/vc04_services/interface/vchiq_arm/vchiq_shim.c:6:10: fatal error: interface/vchi/vchi.h: No such file or directory
    6 | #include "interface/vchi/vchi.h"
      |          ^~~~~~~~~~~~~~~~~~~~~~~
compilation terminated.

So maybe you did't select all of the modules to build?

Sorry, I can't take this as-is :(

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
