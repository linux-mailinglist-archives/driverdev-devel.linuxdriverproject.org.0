Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 3DF8729945
	for <lists+driverdev-devel@lfdr.de>; Fri, 24 May 2019 15:50:48 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 9AE3831927;
	Fri, 24 May 2019 13:50:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 0fMKHxvNSPIM; Fri, 24 May 2019 13:50:45 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id A8DB7230BD;
	Fri, 24 May 2019 13:50:43 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id A11B41BF330
 for <devel@linuxdriverproject.org>; Fri, 24 May 2019 13:50:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 9AAFE88C26
 for <devel@linuxdriverproject.org>; Fri, 24 May 2019 13:50:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ew5slf7QVG4I for <devel@linuxdriverproject.org>;
 Fri, 24 May 2019 13:50:42 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-qk1-f196.google.com (mail-qk1-f196.google.com
 [209.85.222.196])
 by hemlock.osuosl.org (Postfix) with ESMTPS id EF66088C10
 for <devel@driverdev.osuosl.org>; Fri, 24 May 2019 13:50:41 +0000 (UTC)
Received: by mail-qk1-f196.google.com with SMTP id p26so5076582qkj.5
 for <devel@driverdev.osuosl.org>; Fri, 24 May 2019 06:50:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=p8F4WyQZW+GI44XlYkE2TwGfMqACxuEMgKBoIKdGQcU=;
 b=P3DLjgakvjT7EAxdRbyr6rciA5GOllMVOr5E5Qalw2k7kdxVQRBO5KJoQWjVXPFDbr
 2LXSXh/tlmEDqR3dnEYOWJQQSWQv2lcz+5gxg0hBY7wow5DpVBwYTPHNmreVZAKlNG8Q
 BSBG09n9QlR6TBvyRaeUp+zTs8Amn+Z2mMUFMZgSdR6LSvxLVnNwbmwlMbl0sk80WKo6
 6+NBDTPmQ72c6VgiwkRs7a4b9rQGKRWGPTtEQWwQgG6GipX6DyHgNpy6Ng+A7U0cek0M
 qcGoE0VWSc2W3m+uLHHttAPTwQH0MbqBUyh9oK2wiJhDAd6whVpsz1t8hvnYV+lXV+mX
 ytdQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=p8F4WyQZW+GI44XlYkE2TwGfMqACxuEMgKBoIKdGQcU=;
 b=fZ1T5RV8grfYEujVsTqEhnD+xBLvbC6rySozv60Jupz8hZ7meZ3sS1Duom3lg/x6TA
 YXObubc15L0Fc98E8URC98w74GymDI2Moy7bmIO82/qsDadjVHVPQsSK4Dvluyh8w4An
 5hvSfiwjfYwQtlqQXrXhknwCfmnaT21Nmx61idVgn4Q6M7/YHbdeuMRv53j2/6MV89y/
 urPWbrnH1cofFgWmZbnnxFRVOkbLLbTXbEcT/zVl3nj1EzRuI9LNFl6xXiPH7VcJDLla
 RkICIW7mVVhcAG3BIIw0tJJfofN1S5mK7MRxlKJ5XH93MMo/MCLICkDQpome4jnYSIoi
 xodA==
X-Gm-Message-State: APjAAAVAqg4YWVmfHr0cNGI4IPIgh3YS1jiPn6kce62LqQ/dBxykrd7N
 HPMDtDNW+wpxv2KUBTcl5ec=
X-Google-Smtp-Source: APXvYqxIb7KnFdaoUvh+xhdTgH619i0pVWqH9VkoiettkG+ekigRjW25Pf0XMhomyWxIbx+I7n2LbQ==
X-Received: by 2002:ac8:2e74:: with SMTP id s49mr85793416qta.23.1558705841124; 
 Fri, 24 May 2019 06:50:41 -0700 (PDT)
Received: from smtp.gmail.com ([143.107.45.1])
 by smtp.gmail.com with ESMTPSA id u2sm1064043qtq.45.2019.05.24.06.50.37
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Fri, 24 May 2019 06:50:40 -0700 (PDT)
Date: Fri, 24 May 2019 10:50:35 -0300
From: Marcelo Schmitt <marcelo.schmitt1@gmail.com>
To: Alexandru Ardelean <ardeleanalex@gmail.com>
Subject: Re: [PATCH] staging: iio: adis16240: add of_match_table entry
Message-ID: <20190524135034.u2mbtq2jwhp6ent7@smtp.gmail.com>
References: <20190524032950.2398-1-rodrigorsdc@gmail.com>
 <CA+U=DspqLFBMrRcV6VmypHOpE6Qs7OqmiDzWAd6pxpA7B=4S4g@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CA+U=DspqLFBMrRcV6VmypHOpE6Qs7OqmiDzWAd6pxpA7B=4S4g@mail.gmail.com>
User-Agent: NeoMutt/20180716
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
 Peter Meerwald-Stadler <pmeerw@pmeerw.net>,
 Michael Hennerich <Michael.Hennerich@analog.com>, linux-iio@vger.kernel.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 LKML <linux-kernel@vger.kernel.org>, Rodrigo Ribeiro <rodrigorsdc@gmail.com>,
 kernel-usp@googlegroups.com, Stefan Popa <stefan.popa@analog.com>,
 Hartmut Knaack <knaack.h@gmx.de>,
 Alexandru Ardelean <alexandru.ardelean@analog.com>,
 Jonathan Cameron <jic23@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi Alexandru,

On 05/24, Alexandru Ardelean wrote:
> On Fri, May 24, 2019 at 6:30 AM Rodrigo Ribeiro <rodrigorsdc@gmail.com> wrote:
> >
> > This patch adds of_match_table entry in device driver in order to
> > enable spi fallback probing.
> >
> > Signed-off-by: Rodrigo Ribeiro <rodrigorsdc@gmail.com>
> > Reviewed-by: Marcelo Schmitt <marcelo.schmitt1@gmail.com>
> > ---
> >  drivers/staging/iio/accel/adis16240.c | 1 +
> >  1 file changed, 1 insertion(+)
> >
> > diff --git a/drivers/staging/iio/accel/adis16240.c b/drivers/staging/iio/accel/adis16240.c
> > index 8c6d23604eca..b80c8529784b 100644
> > --- a/drivers/staging/iio/accel/adis16240.c
> > +++ b/drivers/staging/iio/accel/adis16240.c
> > @@ -444,6 +444,7 @@ MODULE_DEVICE_TABLE(of, adis16240_of_match);
> >  static struct spi_driver adis16240_driver = {
> >         .driver = {
> >                 .name = "adis16240",
> > +               .of_match_table = adis16240_of_match,
> 
> This patch is missing the actual table.

Struct with compatible devices table was included separately in a
previous patch at commit d9e533b6c0a26c7ef8116b7f3477c164c07bb6fb.
Yeah, I also thought it was missing the match table the first time I was
this patch. It's really confusing when we have two patches, one
depending on another, that are not part of the same patch set. We're
trying to avoid things like this the most but that slipped out from our
internal review. We're sorry about that.

> 
> >         },
> >         .probe = adis16240_probe,
> >         .remove = adis16240_remove,
> > --
> > 2.20.1
> >
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
