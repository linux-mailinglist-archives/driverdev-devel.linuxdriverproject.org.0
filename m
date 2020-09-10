Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 42611263DE3
	for <lists+driverdev-devel@lfdr.de>; Thu, 10 Sep 2020 09:03:35 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 19A2C87592;
	Thu, 10 Sep 2020 07:03:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id d+GnJm3L0I5F; Thu, 10 Sep 2020 07:03:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 67CF28764C;
	Thu, 10 Sep 2020 07:03:32 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 10E4E1BF85D
 for <devel@linuxdriverproject.org>; Thu, 10 Sep 2020 07:03:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id EEAF22040C
 for <devel@linuxdriverproject.org>; Thu, 10 Sep 2020 07:03:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id PMe1nx1ZzoqL for <devel@linuxdriverproject.org>;
 Thu, 10 Sep 2020 07:03:29 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by silver.osuosl.org (Postfix) with ESMTPS id 26C6A200ED
 for <devel@driverdev.osuosl.org>; Thu, 10 Sep 2020 07:03:29 +0000 (UTC)
Received: from coco.lan (ip5f5ad5ac.dynamic.kabel-deutschland.de
 [95.90.213.172])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id BC05020732;
 Thu, 10 Sep 2020 07:03:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1599721408;
 bh=GHwpOYNmP2VBs3IsWSoD/Y47FY59xH8qEK8oIuyUzS4=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=hRhDEOC5550ziCYEAcuP4EshnVG6QqVh9PKQniInln2swjwtInL7b3QkvvMqBTIL1
 flXt8lSPfCUUMsuzAVg8ShS5+kcG+6q4dGQF2gdwR5lOO0zqJxJIrF9Se4IFq3Yxxj
 O1q4S+RAHhbz3yTIACpn+9+ZjsuS+yfCoaanbxl8=
Date: Thu, 10 Sep 2020 09:03:25 +0200
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To: YueHaibing <yuehaibing@huawei.com>
Subject: Re: [PATCH -next] staging: regulator: hi6421v600-regulator: Remove
 unused including <linux/version.h>
Message-ID: <20200910090325.133061db@coco.lan>
In-Reply-To: <20200910061756.40864-1-yuehaibing@huawei.com>
References: <20200910061756.40864-1-yuehaibing@huawei.com>
X-Mailer: Claws Mail 3.17.6 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
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
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Em Thu, 10 Sep 2020 14:17:56 +0800
YueHaibing <yuehaibing@huawei.com> escreveu:

> Remove including <linux/version.h> that don't need it.
> 
> Reported-by: Hulk Robot <hulkci@huawei.com>
> Signed-off-by: YueHaibing <yuehaibing@huawei.com>

Reviewed-by: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>

> ---
>  drivers/staging/hikey9xx/hi6421v600-regulator.c | 1 -
>  1 file changed, 1 deletion(-)
> 
> diff --git a/drivers/staging/hikey9xx/hi6421v600-regulator.c b/drivers/staging/hikey9xx/hi6421v600-regulator.c
> index 82635ff54a74..614b03c9ddfb 100644
> --- a/drivers/staging/hikey9xx/hi6421v600-regulator.c
> +++ b/drivers/staging/hikey9xx/hi6421v600-regulator.c
> @@ -36,7 +36,6 @@
>  #include <linux/spmi.h>
>  #include <linux/time.h>
>  #include <linux/uaccess.h>
> -#include <linux/version.h>
>  
>  #define rdev_dbg(rdev, fmt, arg...)	\
>  		 pr_debug("%s: %s: " fmt, (rdev)->desc->name, __func__, ##arg)



Thanks,
Mauro
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
