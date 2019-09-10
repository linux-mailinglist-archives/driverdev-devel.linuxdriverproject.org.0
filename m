Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id B6418AE5CA
	for <lists+driverdev-devel@lfdr.de>; Tue, 10 Sep 2019 10:43:11 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 57997820E8;
	Tue, 10 Sep 2019 08:43:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id JXJLoDb8Dk-x; Tue, 10 Sep 2019 08:43:09 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 606DC824BE;
	Tue, 10 Sep 2019 08:43:08 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id DC4161BF2B6
 for <devel@linuxdriverproject.org>; Tue, 10 Sep 2019 08:43:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id D5DC6820FC
 for <devel@linuxdriverproject.org>; Tue, 10 Sep 2019 08:43:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id bdLmZloH5Ryv for <devel@linuxdriverproject.org>;
 Tue, 10 Sep 2019 08:43:06 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f66.google.com (mail-wr1-f66.google.com
 [209.85.221.66])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 0AE2D81FB4
 for <devel@driverdev.osuosl.org>; Tue, 10 Sep 2019 08:43:06 +0000 (UTC)
Received: by mail-wr1-f66.google.com with SMTP id k6so6219175wrn.11
 for <devel@driverdev.osuosl.org>; Tue, 10 Sep 2019 01:43:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=references:user-agent:from:to:cc:subject:in-reply-to:date
 :message-id:mime-version;
 bh=nfdC2GGtaooPtZtmidwW3K7yrWTHhue1SpTbAz123sM=;
 b=jKHppvFkO5Gt5906dogykoF3lYe9HZbBaPvbhIUFyv+x7WW/g8Sdj17t4VhfEqZpEB
 q4k4j3WBTG90HOZP1t2HW994ApnivdCukvcifEY+8RQbGxHF4oTeiUeCH1ywXaT/bcZT
 GTxMMZ5NKWsd1gCNCOZ25vYup9pxunGCqnTVnrJ6EOLCk5U328VUNYDCrrYSymggX6On
 18z3mD1KH5AyFou6teiXOU/rPf+/P6ZIrWLNzyBIJC6FMQKDcIrAqyOc6YAdmgDej+2F
 7T49SC1PwKbY8Uyz1vvf3trKAh/IHBpzSKvh6uUF2YuTxi9OlJq4A3CrPj483kpYWcUr
 4Rrg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:references:user-agent:from:to:cc:subject
 :in-reply-to:date:message-id:mime-version;
 bh=nfdC2GGtaooPtZtmidwW3K7yrWTHhue1SpTbAz123sM=;
 b=q188V/oX8Bi8LALwZgaka+LYdvoTcnmKytKRipvrJTdo2qrgrJJJ12DGE2qEoyrXsR
 goRYrwdh4B66urCcbOD/ztgv6WP7L3CL8yXBz0SxO2lebDKJir7VbA5oAu1v66PHt23v
 QqId3EP93Qv71D/7ZKj2HaJRKO+Ixr6FzbWVVbb2xoTmqecVgkT5rVLmFH7vZxX1VsLb
 y08iRHaJBJ9lSv1UfamAf4U/gSu+Wdw09gvy2ojnfZx5+bKSBD1ZQl/OZbgQnOwk88Gm
 J5zb0dA8WZZ0HfHS5ajisBJEx/mUUrsbeF7Ca8ukUbfunz5a8+56qtZsUVCCcF+xqqVC
 8bGA==
X-Gm-Message-State: APjAAAU6921JIrX24DZS0ZJXI9JL1z7f1i4ZO067MAGDiHldt42yV2Lh
 xrNSOl7EyHeesxiNLXJGNQ4=
X-Google-Smtp-Source: APXvYqydvCw8RjIL5trT9vYV+h75kxjAAQgjOhtgr/ThwUm0YuVUtshKI2bG//L18ev46IW1+a6HAA==
X-Received: by 2002:a5d:6604:: with SMTP id n4mr24405862wru.267.1568104984503; 
 Tue, 10 Sep 2019 01:43:04 -0700 (PDT)
Received: from arch-late ([148.69.85.38])
 by smtp.gmail.com with ESMTPSA id n8sm3473721wma.7.2019.09.10.01.43.02
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 10 Sep 2019 01:43:03 -0700 (PDT)
References: <20190906150823.30859-1-colin.king@canonical.com>
User-agent: mu4e 1.2.0; emacs 27.0.50
From: Rui Miguel Silva <rmfrfs@gmail.com>
To: Colin King <colin.king@canonical.com>
Subject: Re: [PATCH] media: imx7-mipi-csis: make array 'registers' static
 const, makes object smaller
In-reply-to: <20190906150823.30859-1-colin.king@canonical.com>
Date: Tue, 10 Sep 2019 09:43:01 +0100
Message-ID: <m3y2ywley2.fsf@gmail.com>
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
 Sascha Hauer <s.hauer@pengutronix.de>, kernel-janitors@vger.kernel.org,
 linux-kernel@vger.kernel.org, Philipp Zabel <p.zabel@pengutronix.de>,
 Steve Longerbeam <slongerbeam@gmail.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi Colin,
Thanks for the patch.

On Fri 06 Sep 2019 at 16:08, Colin King wrote:
> From: Colin Ian King <colin.king@canonical.com>
>
> Don't populate the array 'registers' on the stack but instead make it
> static const. Makes the object code smaller by 10 bytes.
>
>
> Before:
>    text	   data	    bss	    dec	    hex	filename
>   20138	   5196	    128	  25462	   6376	staging/media/imx/imx7-mipi-csis.o
>
> After:
>    text	   data	    bss	    dec	    hex	filename
>   20032	   5292	    128	  25452	   636c	staging/media/imx/imx7-mipi-csis.o
>
> (gcc version 9.2.1, amd64)
>
> Signed-off-by: Colin Ian King <colin.king@canonical.com>

Looks very good to me.
Reviewed-by: Rui Miguel Silva <rmfrfs@gmail.com>

Cheers,
   Rui
> ---
>  drivers/staging/media/imx/imx7-mipi-csis.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/staging/media/imx/imx7-mipi-csis.c b/drivers/staging/media/imx/imx7-mipi-csis.c
> index 73d8354e618c..f8a97b7e2535 100644
> --- a/drivers/staging/media/imx/imx7-mipi-csis.c
> +++ b/drivers/staging/media/imx/imx7-mipi-csis.c
> @@ -293,7 +293,7 @@ static int mipi_csis_dump_regs(struct csi_state *state)
>  	struct device *dev = &state->pdev->dev;
>  	unsigned int i;
>  	u32 cfg;
> -	struct {
> +	static const struct {
>  		u32 offset;
>  		const char * const name;
>  	} registers[] = {

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
