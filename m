Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 86C3B31854D
	for <lists+driverdev-devel@lfdr.de>; Thu, 11 Feb 2021 07:47:23 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id E59266F5BA
	for <lists+driverdev-devel@lfdr.de>; Thu, 11 Feb 2021 06:47:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 8H752uxk3Fpg for <lists+driverdev-devel@lfdr.de>;
	Thu, 11 Feb 2021 06:47:20 +0000 (UTC)
Received: by smtp3.osuosl.org (Postfix, from userid 1001)
	id E4D416F60E; Thu, 11 Feb 2021 06:47:20 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 25ED56F4E1;
	Thu, 11 Feb 2021 06:47:05 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id A51BE1BF82F
 for <devel@linuxdriverproject.org>; Thu, 11 Feb 2021 06:46:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 9F20786C32
 for <devel@linuxdriverproject.org>; Thu, 11 Feb 2021 06:46:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 0M6Bp9gfHTEx for <devel@linuxdriverproject.org>;
 Thu, 11 Feb 2021 06:46:52 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ej1-f43.google.com (mail-ej1-f43.google.com
 [209.85.218.43])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id DF02486C24
 for <devel@driverdev.osuosl.org>; Thu, 11 Feb 2021 06:46:51 +0000 (UTC)
Received: by mail-ej1-f43.google.com with SMTP id i8so8343585ejc.7
 for <devel@driverdev.osuosl.org>; Wed, 10 Feb 2021 22:46:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=pvkKlHUDVRa3qkgR/GfYxns1n6XAXya10Xz2lVOncu0=;
 b=nn/zz7ZN1/vVW1TPEdqdQAzXDERC1RqFlcJzpCRGaMPzWaUb0alZltqlFab4z8h/WT
 VjVzaFykvNm9e8Oko/6XhAF0dQrkNbzfh/T1YIZDg3KduyM1r+TdVXX4eCbU0DftSLLP
 hrGuWaOggX4pc0eGZhk6wdpcM6i727QKtFEnMD4m+UlM5kaDv0QG0/TdiXUoVmLUyIQa
 44hYNjpeRBJag0AoSL5aNznNEthYVGxMykxmDohJSGY9nwyMEK8U+JatjoJ9wRnieIe8
 UFyg5ox4N0VcnEIjQpS+rkC0Z924S43eUctNT0DaJOPmA2lnS/vb8XyatYed/pSNsz2a
 oUDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=pvkKlHUDVRa3qkgR/GfYxns1n6XAXya10Xz2lVOncu0=;
 b=g65ZChAkxml7jC3pPLmCoxD3pmN5LUji95d3y93N+80oDyUL5iJ2CJJR58HVY1RjiU
 7saRgKvsYao5k7QZQPj1Tonw13CFe5ruDNOpzIqaLynHMz0cYrVMm0yqetzZ1Wn95Btq
 o/rB6y3+JIrwpaBdBCiahI6k8KazbZtXQDESrSuVhT3EXBHfB1Hmj3Sh/opq0MwxGIcB
 pxvFxFogXXa8DLl2F8ho3XhTkCuzrtp+lZf++de5wXiZAglF+y2U2gP9sA18K30FIip0
 /2w5JRHvZgotgF+ziPqQpvCSc8jeBhMFXgeyOUth2YO0FuDnZdugjwMoqVObLgIkd4Mx
 LGAA==
X-Gm-Message-State: AOAM531nROBq8umgr9l/aeAIGkAO/YhJqP3uBKC35ULc0qA9TxlOEXNO
 M4KOiOB99P9BnHlVDy8QSWA=
X-Google-Smtp-Source: ABdhPJxx/0QiGSx/KxoQr8se+c3Rbkm3NZxpckdM8sojApjEypkDKTPhYXbaHY64CTLIrUI17SGTDw==
X-Received: by 2002:a17:906:4f96:: with SMTP id
 o22mr6561925eju.511.1613026010357; 
 Wed, 10 Feb 2021 22:46:50 -0800 (PST)
Received: from localhost ([49.205.77.137])
 by smtp.gmail.com with ESMTPSA id n6sm3230732ejy.123.2021.02.10.22.46.49
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 10 Feb 2021 22:46:50 -0800 (PST)
Date: Thu, 11 Feb 2021 12:16:45 +0530
From: Aakash Hemadri <aakashhemadri123@gmail.com>
To: Greg Kroah-Hartman <greg@kroah.com>
Subject: Re: [PATCH] Staging: vt6655: Replace a camel case variable name
Message-ID: <20210211064645.3csilr2bosr7hu6a@xps.yggdrail>
References: <tencent_30203B4B4D63EBA1A5083C4AB110C9243C08@qq.com>
 <YCQc0iBNqqkr/KK/@kroah.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <YCQc0iBNqqkr/KK/@kroah.com>
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
 Yujia Qiao <rapiz@foxmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On 21/02/10 06:50PM, Greg Kroah-Hartman wrote:
> On Wed, Feb 10, 2021 at 06:42:07PM +0800, Yujia Qiao wrote:
> > Replace camel case variable names with snake case in baseband.c.
> >
> > Signed-off-by: Yujia Qiao <rapiz@foxmail.com>
> > ---
> >  drivers/staging/vt6655/baseband.c | 4 ++--
> >  1 file changed, 2 insertions(+), 2 deletions(-)
>
> This doesn't apply cleanly to my staging-next branch, can you please
> rebase it and resend?
>
> thanks,
>
> greg k-h
> _______________________________________________
> devel mailing list
> devel@linuxdriverproject.org
> http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

When I first encountered the CamelCase check I believed that
making such changes would only cause trouble for others.

Are such changes to API welcome in the kernel?
I presume it is as long it doesn't break building the kernel

If I do decide to fix such checks what must I look out for?

thanks,
aakash hemadri
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
