Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 91CA0A9B8C
	for <lists+driverdev-devel@lfdr.de>; Thu,  5 Sep 2019 09:18:02 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id E32E687C55;
	Thu,  5 Sep 2019 07:17:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id b+ltxU8A0A4l; Thu,  5 Sep 2019 07:17:59 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 5C25D87C1C;
	Thu,  5 Sep 2019 07:17:58 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 9FBDE1BF3D6
 for <devel@linuxdriverproject.org>; Thu,  5 Sep 2019 07:17:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 9B340204F2
 for <devel@linuxdriverproject.org>; Thu,  5 Sep 2019 07:17:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Ma6amz6pbblG for <devel@linuxdriverproject.org>;
 Thu,  5 Sep 2019 07:17:54 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lf1-f67.google.com (mail-lf1-f67.google.com
 [209.85.167.67])
 by silver.osuosl.org (Postfix) with ESMTPS id AF057204D6
 for <devel@driverdev.osuosl.org>; Thu,  5 Sep 2019 07:17:53 +0000 (UTC)
Received: by mail-lf1-f67.google.com with SMTP id z21so1101270lfe.1
 for <devel@driverdev.osuosl.org>; Thu, 05 Sep 2019 00:17:53 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=RTxQxEPMu/S6pvKFwk3GURZ2Pv3mdgBCFDIodIwFr0k=;
 b=tIHn7FGTJ6DtnA1q4uDr3dbq3fguthuIVQjgyrhLv7qYpbpX6L/2WoHDRSlGKKz1Yf
 keA9scVdcpEKHfMGtPmrFxd0s2Ea4ZawH937aqx4FUWo5DjjvyoGeVq/vT4nTw7A+MIQ
 GlnI9ospjWDcRiPqwh5LdeeHAPOpggNqR0QDxeERhREUT/RN2fB88G0aMPAbTfrsdT02
 +2dKfnW8A9Tme/XwvQJqNuVY38TW6Px7nU91c9iaYq3Ng0JHCGPsPNJmgXDXSTGm31mk
 C303w6aayRecJPBPHl/0E/6gJ1nD56gzPgLBrC/ETylmAmatMgS2aqRbyi22XYcDpr5b
 +njQ==
X-Gm-Message-State: APjAAAXrQGZJKnDReiILFBr/vYcLR0KDmKv9YCyNdiIpjdAKHaId/tLG
 7uPnS1jGBJBjDLDT3cqFXcw=
X-Google-Smtp-Source: APXvYqwYrRtF5ta/sNfxWtl9EmJfjp7gB1SroU3Sbkzpe/nf6vYGuQdoCKOrdZisMXsHRIeGrVG0MQ==
X-Received: by 2002:ac2:5ec1:: with SMTP id d1mr1235343lfq.83.1567667871895;
 Thu, 05 Sep 2019 00:17:51 -0700 (PDT)
Received: from xi.terra (c-51f1e055.07-184-6d6c6d4.bbcust.telenor.se.
 [85.224.241.81])
 by smtp.gmail.com with ESMTPSA id i17sm96012ljd.2.2019.09.05.00.17.50
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 05 Sep 2019 00:17:51 -0700 (PDT)
Received: from johan by xi.terra with local (Exim 4.92)
 (envelope-from <johan@kernel.org>)
 id 1i5m1Y-0007hH-Vh; Thu, 05 Sep 2019 09:17:45 +0200
Date: Thu, 5 Sep 2019 09:17:44 +0200
From: Johan Hovold <johan@kernel.org>
To: joahannes <joahannes@gmail.com>
Subject: Re: [PATCH] staging: greybus: remove blank line after an open brace
 '{'.
Message-ID: <20190905071744.GC1701@localhost>
References: <20190904205558.27666-1-joahannes@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190904205558.27666-1-joahannes@gmail.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
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
Cc: devel@driverdev.osuosl.org, elder@kernel.org, gregkh@linuxfoundation.org,
 jevsilv@gmail.com, johan@kernel.org, linux-kernel@vger.kernel.org,
 greybus-dev@lists.linaro.org, lkcamp@lists.libreplanetbr.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Wed, Sep 04, 2019 at 08:55:58PM +0000, joahannes wrote:
> Fix checkpatch error
> "CHECK: Blank lines aren't necessary after an open brace '{'"
> in loopback_test.c:742.

Please fix up all of the blank lines before/after closing/opening brace
checkpatch CHECKs in one go. There appears to be many of them.

> Signed-off-by: joahannes <joahannes@gmail.com>

We need your full name here and in the From line.

> ---
>  drivers/staging/greybus/tools/loopback_test.c | 1 -

Also, please include the component your modifying in the subject line
even if you need to shorten the description somehow, for example, 

	staging: greybus: loopback_test: remove unnecessary blank lines

>  1 file changed, 1 deletion(-)
> 
> diff --git a/drivers/staging/greybus/tools/loopback_test.c b/drivers/staging/greybus/tools/loopback_test.c
> index ba6f905f2..251b05710 100644
> --- a/drivers/staging/greybus/tools/loopback_test.c
> +++ b/drivers/staging/greybus/tools/loopback_test.c
> @@ -739,7 +739,6 @@ static int wait_for_complete(struct loopback_test *t)
>  		ts = &t->poll_timeout;
>  
>  	while (1) {
> -
>  		ret = ppoll(t->fds, t->poll_count, ts, &mask_old);
>  		if (ret <= 0) {
>  			stop_tests(t);

Johan
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
