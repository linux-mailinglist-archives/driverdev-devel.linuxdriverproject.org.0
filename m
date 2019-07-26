Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 30C3B770F3
	for <lists+driverdev-devel@lfdr.de>; Fri, 26 Jul 2019 20:07:00 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id A48B4254B3;
	Fri, 26 Jul 2019 18:06:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id flX2bfMFfe9j; Fri, 26 Jul 2019 18:06:57 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 6A9FD24EA2;
	Fri, 26 Jul 2019 18:06:55 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 748F61BF3BD
 for <devel@linuxdriverproject.org>; Fri, 26 Jul 2019 18:06:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 70FD2895FC
 for <devel@linuxdriverproject.org>; Fri, 26 Jul 2019 18:06:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id vf03D7oSJ9SB for <devel@linuxdriverproject.org>;
 Fri, 26 Jul 2019 18:06:51 +0000 (UTC)
X-Greylist: delayed 00:07:22 by SQLgrey-1.7.6
Received: from mail-io1-f65.google.com (mail-io1-f65.google.com
 [209.85.166.65])
 by hemlock.osuosl.org (Postfix) with ESMTPS id BD2FB89806
 for <devel@driverdev.osuosl.org>; Fri, 26 Jul 2019 18:06:49 +0000 (UTC)
Received: by mail-io1-f65.google.com with SMTP id i10so106538366iol.13
 for <devel@driverdev.osuosl.org>; Fri, 26 Jul 2019 11:06:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=usp-br.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Mz6yFp/JdoMmP88Hd9wgTkqmhK5wh8hSxVlurnjVo58=;
 b=AqdQBSa+KR+uV7HGSwYjR8NLjKpjPepgw0zylTLXZ2QQt/1THpF/IcxTn9NEC2+a1o
 mEdqDuJaXZJSxYKkUXBcNCmPTgQq3dGfUhPsntmMSDH5QtHkMKiKDU86C/gca8cxTMd8
 6/yzBbfm3RVHl15/DODIgB3Cd/GPtXpUnJkV2SR4GLk5GbVLK8RwEW3EX2EtkejrFmNv
 HVjdQh5HsFf+GdZ0BQSIw5dMf1rZZwStF4kg1X0vW0pmSU3Lgs4BDbgxFVRlci6MTiKY
 tZK3xW9fmKhVo7LFGLcFqYWBmUa72CuL2KwU9npClRTQetuaBXMVcAyI7GofbWa4TVm4
 OFKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Mz6yFp/JdoMmP88Hd9wgTkqmhK5wh8hSxVlurnjVo58=;
 b=uGciqAcRXnPUdMkFcm5ZolOONxGer2+wRi6d2yGY9mrXLm8lwwo93Ao9q6xtuPqzaK
 2F6ZwmE7xcP5SadI2pNqq/z9X4tjW6LaodQ2zeTreRm9xahqszQ7wUPByMT6qfeCU76z
 i4dRCzZBR7rryeTpAHEu12pCJ05Uyxe72D8DVpnlB/9A6mvPsT5Ql32GWPQPxD87ynwE
 xxjNjDe8lwcGSDypFaGfJZIds7D5O9yyxktKwOQ31tMtjDqIPRggwqyqY9oPlK+G0CDA
 xSoLw5WJG1Ec9XqAl6DcTSq8wVZq/BnIPJwNppW+bLTXb4rbfBwLuIcQ1bVloG5hbwnD
 RLxA==
X-Gm-Message-State: APjAAAX6mF0SglmDT+A9UMpJDSakyTZQLhVLvh7M1ootJKK6gXXrB2Ym
 VS7dOF+Hj9jBeDKsUxUq8gh6kMucyaIZJa3Evv5UvUeo40w=
X-Google-Smtp-Source: APXvYqxQgZBD3hEdmYQN0ATdE+xO3I4QX7GvRTvtCBuN9N9yUSx7Dm9vAjvX0rbeiciuckyUOL3NhdqK6yM+PYnGSzE=
X-Received: by 2002:a5d:9711:: with SMTP id h17mr16548342iol.280.1564163967979; 
 Fri, 26 Jul 2019 10:59:27 -0700 (PDT)
MIME-Version: 1.0
References: <20190725200817.31277-1-kartik.koolks@gmail.com>
 <0e273486f1c4fb6249896225837cdf2da0fd2415.camel@analog.com>
In-Reply-To: <0e273486f1c4fb6249896225837cdf2da0fd2415.camel@analog.com>
From: Matheus Tavares Bernardino <matheus.bernardino@usp.br>
Date: Fri, 26 Jul 2019 14:59:16 -0300
Message-ID: <CAHd-oW5sOry2g_tQbgQ9-dp1esVStmS+UF-TTYoB2mWmzR10jQ@mail.gmail.com>
Subject: Re: [PATCH] staging:iio:adc:ad7280a: add of_match_table entry
To: "Ardelean, Alexandru" <alexandru.Ardelean@analog.com>
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
Cc: "devel@driverdev.osuosl.org" <devel@driverdev.osuosl.org>,
 "lars@metafoo.de" <lars@metafoo.de>, "Hennerich,
 Michael" <Michael.Hennerich@analog.com>,
 "linux-iio@vger.kernel.org" <linux-iio@vger.kernel.org>,
 "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "kernel-usp@googlegroups.com" <kernel-usp@googlegroups.com>,
 "kartik.koolks@gmail.com" <kartik.koolks@gmail.com>,
 "pmeerw@pmeerw.net" <pmeerw@pmeerw.net>, "knaack.h@gmx.de" <knaack.h@gmx.de>,
 "Popa, Stefan Serban" <StefanSerban.Popa@analog.com>,
 "jic23@kernel.org" <jic23@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Fri, Jul 26, 2019 at 2:30 AM Ardelean, Alexandru
<alexandru.Ardelean@analog.com> wrote:
>
> On Fri, 2019-07-26 at 01:38 +0530, Kartik Kulkarni wrote:
> > Add the of_device_id struct and the respective
> > of_match_device entry to complete device tree support.
> >
>
> This would be a [V2] I suppose.
>
> This change also does the rename of the driver name in a single go.
> Since it's a trivial change, it's fine from my side.

I think there was a small confusion when we sent the patches. Sorry
for that. Originally, Kartik made the rename in its own patch. Would
it be better if we resend the two patches separately?

Thanks,
Matheus

> Reviewed-by: Alexandru Ardelean <alexandru.ardelean@analog.com>
>
>
> > Signed-off-by: Kartik Kulkarni <kartik.koolks@gmail.com>
> > Reviewed-by: Matheus Tavares <matheus.bernardino@usp.br>
> > ---
> >  drivers/staging/iio/adc/ad7280a.c | 9 ++++++++-
> >  1 file changed, 8 insertions(+), 1 deletion(-)
> >
> > diff --git a/drivers/staging/iio/adc/ad7280a.c b/drivers/staging/iio/adc/ad7280a.c
> > index 19a5f244dcae..ded0ba093a28 100644
> > --- a/drivers/staging/iio/adc/ad7280a.c
> > +++ b/drivers/staging/iio/adc/ad7280a.c
> > @@ -1027,9 +1027,16 @@ static const struct spi_device_id ad7280_id[] = {
> >  };
> >  MODULE_DEVICE_TABLE(spi, ad7280_id);
> >
> > +static const struct of_device_id ad7280_of_match[] = {
> > +     { .compatible = "adi,ad7280a", },
> > +     { }
> > +};
> > +MODULE_DEVICE_TABLE(of, ad7280_of_match);
> > +
> >  static struct spi_driver ad7280_driver = {
> >       .driver = {
> > -             .name   = "ad7280",
> > +             .name   = "ad7280a",
> > +             .of_match_table = ad7280_of_match,
> >       },
> >       .probe          = ad7280_probe,
> >       .id_table       = ad7280_id,
>
> --
> You received this message because you are subscribed to the Google Groups "Kernel USP" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to kernel-usp+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/kernel-usp/0e273486f1c4fb6249896225837cdf2da0fd2415.camel%40analog.com.
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
