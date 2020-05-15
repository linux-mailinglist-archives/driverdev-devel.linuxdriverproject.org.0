Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 858541D4F80
	for <lists+driverdev-devel@lfdr.de>; Fri, 15 May 2020 15:49:19 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 4E5462E52E;
	Fri, 15 May 2020 13:49:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id GWqSn0jT0Pp4; Fri, 15 May 2020 13:49:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id B2C522E865;
	Fri, 15 May 2020 13:49:09 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 1E5BA1BF2A1
 for <devel@linuxdriverproject.org>; Fri, 15 May 2020 13:49:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 407628589A
 for <devel@linuxdriverproject.org>; Fri, 15 May 2020 13:49:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id LYncZ81+SjMc for <devel@linuxdriverproject.org>;
 Fri, 15 May 2020 13:49:02 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 1D9E28851C
 for <devel@driverdev.osuosl.org>; Fri, 15 May 2020 13:49:02 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 7C258206D4;
 Fri, 15 May 2020 13:49:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1589550541;
 bh=HFbyjxC4aSz/WBBxS/2xZgacqhZC2KmQgAjkHuWCFrY=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=00Cvbmn3DhDyA5RGAF9XzorUyjuSIZWm4CXlkZKSgld116pjWFtF9lEYaVixaogvI
 7pbuBIdmtOgP7uS3I3KPObiUQyQD+6iZD/YGNwmuNmoZVHEZAnreKXGWJ+MSBSWApo
 UKMvRZ96g0IZeK99jNNPe/LTJJifN+B5RyXsOsSE=
Date: Fri, 15 May 2020 15:48:59 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Matej Dujava <mdujava@kocurkovo.cz>
Subject: Re: [PATCH v3 2/2] staging: vt6655: vt6656: change order of makefile
 variable definitions
Message-ID: <20200515134859.GA2112248@kroah.com>
References: <1589397351-24655-1-git-send-email-mdujava@kocurkovo.cz>
 <1589397351-24655-3-git-send-email-mdujava@kocurkovo.cz>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1589397351-24655-3-git-send-email-mdujava@kocurkovo.cz>
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
Cc: devel@driverdev.osuosl.org, Forest Bond <forest@alittletooquiet.net>,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Wed, May 13, 2020 at 09:15:51PM +0200, Matej Dujava wrote:
> This patch will add indentation to multiline variable and put
> obj-$(CONFIG_X) at the beginning of the file. This order of variables is
> used in other drives, so this will make vt665x Makefiles fit into the
> pattern.
> 
> Indentation is fixed in vt6655/Makefile.
> 
> Order of variable declaration is changed in vt6656/Makefile.
> 
> Signed-off-by: Matej Dujava <mdujava@kocurkovo.cz>
> ---
> v1: Initial patch
> v2: This patch was split from original bigger patch
> v3: Added more info about what and why it's removed
> 
>  drivers/staging/vt6655/Makefile | 24 ++++++++++++------------
>  drivers/staging/vt6656/Makefile |  4 ++--
>  2 files changed, 14 insertions(+), 14 deletions(-)
> 
> diff --git a/drivers/staging/vt6655/Makefile b/drivers/staging/vt6655/Makefile
> index e70357ec0af8..eda08a1516ab 100644
> --- a/drivers/staging/vt6655/Makefile
> +++ b/drivers/staging/vt6655/Makefile
> @@ -1,15 +1,15 @@
>  # SPDX-License-Identifier: GPL-2.0
>  
> -vt6655_stage-y +=	device_main.o \
> -	card.o \
> -	channel.o \
> -	mac.o \
> -	baseband.o \
> -	rxtx.o \
> -	dpc.o \
> -	power.o \
> -	srom.o \
> -	key.o \
> -	rf.o
> -
>  obj-$(CONFIG_VT6655) +=	vt6655_stage.o
> +
> +vt6655_stage-y +=	device_main.o \
> +			card.o \
> +			channel.o \
> +			mac.o \
> +			baseband.o \
> +			rxtx.o \
> +			dpc.o \
> +			power.o \
> +			srom.o \
> +			key.o \
> +			rf.o
> diff --git a/drivers/staging/vt6656/Makefile b/drivers/staging/vt6656/Makefile
> index f696a9d7a143..aac323d6a684 100644
> --- a/drivers/staging/vt6656/Makefile
> +++ b/drivers/staging/vt6656/Makefile
> @@ -1,5 +1,7 @@
>  # SPDX-License-Identifier: GPL-2.0
>  
> +obj-$(CONFIG_VT6656) +=	vt6656_stage.o
> +
>  vt6656_stage-y +=	main_usb.o \
>  			card.o  \
>  			mac.o   \
> @@ -11,5 +13,3 @@ vt6656_stage-y +=	main_usb.o \
>  			rf.o \
>  			usbpipe.o \
>  			channel.o
> -
> -obj-$(CONFIG_VT6656) +=	vt6656_stage.o

I still fail to understand the need for this patch at all.  It doesn't
clean anything up, nor change anything.  There is no rule that this has
to be in one order or the other, and in fact, I like the order that the
files currently have :)

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
