Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id AF00E294269
	for <lists+driverdev-devel@lfdr.de>; Tue, 20 Oct 2020 20:44:13 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 3996D860C5;
	Tue, 20 Oct 2020 18:44:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id zvs61KjQXucG; Tue, 20 Oct 2020 18:44:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 2A4A48589C;
	Tue, 20 Oct 2020 18:44:11 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 609D41BF33A
 for <devel@linuxdriverproject.org>; Tue, 20 Oct 2020 18:44:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 5503120456
 for <devel@linuxdriverproject.org>; Tue, 20 Oct 2020 18:44:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id pX6ERUGYXKZN for <devel@linuxdriverproject.org>;
 Tue, 20 Oct 2020 18:44:08 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from casper.infradead.org (casper.infradead.org [90.155.50.34])
 by silver.osuosl.org (Postfix) with ESMTPS id 2AF7820421
 for <devel@driverdev.osuosl.org>; Tue, 20 Oct 2020 18:44:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=FisEfntxRD16Mc2UH0UduZ4Jj0SVaufwZnhtyHdV9Pw=; b=AQupAPyUG0k5W7lneeKs9nvx+x
 bGynEHuIFEXEvoLfRuevtfLxeHZWXMIUZu8TCBrJYIMerXODBBK55cT4p+fkAPsbX8AgiNzn6b8rp
 a1T+06x6GzkyC+qMgCB7eBCe3Nb4LSAKeTzl+YLLvZ+qnc9BG7mzUahybecIuWrss0HeF0Mvrv4tg
 dTJRJsHEaYTXC0XZ/usvHGFw5u7hA266maVfxT1ENLOq+QssJ9kWMuy3lLhXFMlBNpplwsq0MbdhO
 M3bxJr5ostyJTMk3461VqiYiUiYRKa8b/0xuP/mAjAfit03TWBY0RhPQrfRZ9UPFXd6AAX9DCJrms
 x5JK0riw==;
Received: from willy by casper.infradead.org with local (Exim 4.92.3 #3 (Red
 Hat Linux)) id 1kUwc8-0007NB-Qy; Tue, 20 Oct 2020 18:44:05 +0000
Date: Tue, 20 Oct 2020 19:44:04 +0100
From: Matthew Wilcox <willy@infradead.org>
To: Elena Afanasova <eafanasova@gmail.com>
Subject: Re: [Outreachy kernel] [PATCH 3/3] staging/rtl8712: use BIT macro
Message-ID: <20201020184404.GC20115@casper.infradead.org>
References: <20201020182439.43314-1-eafanasova@gmail.com>
 <20201020182439.43314-3-eafanasova@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201020182439.43314-3-eafanasova@gmail.com>
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
 outreachy-kernel@googlegroups.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Tue, Oct 20, 2020 at 11:24:39AM -0700, Elena Afanasova wrote:
> Reported by checkpatch.pl

Checkpatch is wrong.

> +++ b/drivers/staging/rtl8712/rtl871x_recv.h
> @@ -8,7 +8,7 @@
>  #define NR_RECVFRAME 256
>  
>  #define RXFRAME_ALIGN	8
> -#define RXFRAME_ALIGN_SZ	(1 << RXFRAME_ALIGN)
> +#define RXFRAME_ALIGN_SZ	BIT(RXFRAME_ALIGN)
>  
>  #define MAX_SUBFRAME_COUNT	64
>  
> -- 
> 2.25.1
> 
> -- 
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20201020182439.43314-3-eafanasova%40gmail.com.
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
