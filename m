Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B52129107
	for <lists+driverdev-devel@lfdr.de>; Fri, 24 May 2019 08:34:26 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 6B5FB86BBB;
	Fri, 24 May 2019 06:34:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id XRyWOnGtP_FK; Fri, 24 May 2019 06:34:23 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id B18E886A53;
	Fri, 24 May 2019 06:34:22 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 3B4101BF423
 for <devel@linuxdriverproject.org>; Fri, 24 May 2019 06:34:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 3416886A54
 for <devel@linuxdriverproject.org>; Fri, 24 May 2019 06:34:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 53-LATxbwZC7 for <devel@linuxdriverproject.org>;
 Fri, 24 May 2019 06:34:19 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ot1-f66.google.com (mail-ot1-f66.google.com
 [209.85.210.66])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 7435186A53
 for <devel@driverdev.osuosl.org>; Fri, 24 May 2019 06:34:19 +0000 (UTC)
Received: by mail-ot1-f66.google.com with SMTP id j49so7682972otc.13
 for <devel@driverdev.osuosl.org>; Thu, 23 May 2019 23:34:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=WweuK19xa24l5W9LMdbztVqMPaDctoIgcKyXzOqKMhE=;
 b=Rx4R/PCrjzbiBEVKS5NJc/b+SHaiNOuSv+5G49HOQQGH6DkE3C1/wTUPfg7sYNHf+U
 YdtBdAp3raM+VpCc7/4rj1on2Tzwbu/jo5h8h+hrKPZCrp4COegxgM4Ih8y/Jx0bMZnQ
 JUujxGiy2IkVnrl4zeP5yj0opuw3jtGp0rytygCyrgfTTD6GNRGFtvjDZPCQbJ8lPUWP
 FUl0gxd5EBNtTqZM+98nzi+i7KkxeNrHQ2kICnbra09Swxh9rMLSB+2n9aY+Pq7oWG3W
 Ik7x26/j0+Tbwknb9ub8x+gKEi1mwqisoGxYCHCs7G1rT0FeQ8pC/+YknKFC9/G57ZdJ
 5LYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=WweuK19xa24l5W9LMdbztVqMPaDctoIgcKyXzOqKMhE=;
 b=sk9RK+VVETZx7X2I1xw32asOHCWS4vD73SRKAwe8hdPqOaDpYE1yydm8CKw2TsiZJD
 3xCjaF+E8XdVsqM5vNK4Upk2L+S7/mc4uoy5TX2xYIqM/XUOHmVLcQzIK2uRAqBCAkdP
 gf4ApyqRymtohMIKC//VVAZtMokgsatFphL/UGSpUBa0/9jTGtiDzNAu7yA8VbIokqjf
 40dd8Q74tYpX1pT11Qmgmz6DnA+TpUQLZldAShXFzTiU+y00DpkQ9fgEhBMUAdixuUKF
 c0bvEL4iWFg5jzUBCWr2yNgqtug8/1b/qI2LqlvU2ddSs77LfBRL5DL6/ozfkNkcSXcL
 VC4w==
X-Gm-Message-State: APjAAAXTo71g0xaA2888O/JP4luTMQ/zjcoLN/8lqlHOxbZ93f24+TC7
 9qH8LKyO6Ab1sJDGdrWkjBwDp/+P/DnbIxeTxmA=
X-Google-Smtp-Source: APXvYqwO4WAV/RQ6brDgsW2z6/O0nT1SeWLWXXXfQbL7jqStL+jI/RDuC/HbNHoTbPa1sLafu+feh2zqkD9UvOvNj9g=
X-Received: by 2002:a05:6830:1182:: with SMTP id
 u2mr11542717otq.71.1558679658680; 
 Thu, 23 May 2019 23:34:18 -0700 (PDT)
MIME-Version: 1.0
References: <20190524032950.2398-1-rodrigorsdc@gmail.com>
In-Reply-To: <20190524032950.2398-1-rodrigorsdc@gmail.com>
From: Alexandru Ardelean <ardeleanalex@gmail.com>
Date: Fri, 24 May 2019 12:34:05 +0300
Message-ID: <CA+U=DspqLFBMrRcV6VmypHOpE6Qs7OqmiDzWAd6pxpA7B=4S4g@mail.gmail.com>
Subject: Re: [PATCH] staging: iio: adis16240: add of_match_table entry
To: Rodrigo Ribeiro <rodrigorsdc@gmail.com>
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
Cc: devel@driverdev.osuosl.org, Lars-Peter Clausen <lars@metafoo.de>,
 Stefan Popa <stefan.popa@analog.com>,
 Michael Hennerich <Michael.Hennerich@analog.com>, linux-iio@vger.kernel.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 LKML <linux-kernel@vger.kernel.org>, kernel-usp@googlegroups.com,
 Marcelo Schmitt <marcelo.schmitt1@gmail.com>,
 Peter Meerwald-Stadler <pmeerw@pmeerw.net>, Hartmut Knaack <knaack.h@gmx.de>,
 Alexandru Ardelean <alexandru.ardelean@analog.com>,
 Jonathan Cameron <jic23@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Fri, May 24, 2019 at 6:30 AM Rodrigo Ribeiro <rodrigorsdc@gmail.com> wrote:
>
> This patch adds of_match_table entry in device driver in order to
> enable spi fallback probing.
>
> Signed-off-by: Rodrigo Ribeiro <rodrigorsdc@gmail.com>
> Reviewed-by: Marcelo Schmitt <marcelo.schmitt1@gmail.com>
> ---
>  drivers/staging/iio/accel/adis16240.c | 1 +
>  1 file changed, 1 insertion(+)
>
> diff --git a/drivers/staging/iio/accel/adis16240.c b/drivers/staging/iio/accel/adis16240.c
> index 8c6d23604eca..b80c8529784b 100644
> --- a/drivers/staging/iio/accel/adis16240.c
> +++ b/drivers/staging/iio/accel/adis16240.c
> @@ -444,6 +444,7 @@ MODULE_DEVICE_TABLE(of, adis16240_of_match);
>  static struct spi_driver adis16240_driver = {
>         .driver = {
>                 .name = "adis16240",
> +               .of_match_table = adis16240_of_match,

This patch is missing the actual table.

>         },
>         .probe = adis16240_probe,
>         .remove = adis16240_remove,
> --
> 2.20.1
>
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
