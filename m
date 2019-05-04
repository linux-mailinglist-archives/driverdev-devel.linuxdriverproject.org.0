Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id D34BC1393C
	for <lists+driverdev-devel@lfdr.de>; Sat,  4 May 2019 12:37:03 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 86C8D861A1;
	Sat,  4 May 2019 10:37:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id XyeBEynZbIE0; Sat,  4 May 2019 10:37:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id D4D3985F87;
	Sat,  4 May 2019 10:36:59 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 696B81BF37F
 for <devel@linuxdriverproject.org>; Sat,  4 May 2019 10:36:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 60F448731A
 for <devel@linuxdriverproject.org>; Sat,  4 May 2019 10:36:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id U4EbUpwzzcvP for <devel@linuxdriverproject.org>;
 Sat,  4 May 2019 10:36:56 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ot1-f68.google.com (mail-ot1-f68.google.com
 [209.85.210.68])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 80BED8730E
 for <devel@driverdev.osuosl.org>; Sat,  4 May 2019 10:36:56 +0000 (UTC)
Received: by mail-ot1-f68.google.com with SMTP id b1so7553177otp.5
 for <devel@driverdev.osuosl.org>; Sat, 04 May 2019 03:36:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=1Mah2M/rOQLB9r1W2J9fPI+hW8KuDg9vx6L7LqhtKuY=;
 b=EkCAs1QHWCGHh45tgjFxaOEZw8KQHdFFAUhgv39Tfe/MgruVYnNcHIJ3rAgM+OlMcb
 Flqs8Z8if2rZi9/Vr1HahEjuKJLetOb52qpdUOY68yPaK+lphO4qaI3QD3JVGcCGW0Tn
 offtkXHHfduGN8+OQQyCVIUjjlo44VPeDALlKyylvflLfelI+mjrL9IbjT4QggJRZ49n
 3HHlPEdkmG75kQmduua/r7cLb7nugfDvQeYQlFpA7F0PGFTtz11czqC/otPR2r8hPivh
 vQzLq8qec4erkHvg7czYNOH8NcEdDvW7L3gjnQhF7ZR1+0wHohPpkWE/Uow/fYeep+w1
 2eVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=1Mah2M/rOQLB9r1W2J9fPI+hW8KuDg9vx6L7LqhtKuY=;
 b=fH1MCzpE3m63xt/A8e6JGbhwS+MQm961GUqzucrzuruZRrIw/vwDw12SUZQz56u8LH
 owxbJKxHYiK+jt23d5URKnFswVoJKfPaRd6RYK7ghEhYKHZ4D8CKdixHYJ4ACG9Q7H6O
 5N86pQO/7PW8BEx8reCiIMd+FKrkRa39EMApzDwS/JWWdbIUQqiGBS1BsqcfCYVh0QPy
 aDvcci5MvLfIeUEwsp4rBT/6xtMkmNs+WcNRTFQRen5OF/qgafJzO+mJC/EO1VHP8qFM
 QkENVViPuSkhDpydhjiSD7U6FVJYFn2IL55FdIa1KvJGxguRm46J9rQICzL/wpRt28eC
 j3yw==
X-Gm-Message-State: APjAAAUcDQzlJlLjXCdOSYIDxLBi564g6OrSVZWg3liDktk1g6ChSYI+
 qe3U/mmifwvOIZeS931uYeAuwPsZlvCrEKfULuQ=
X-Google-Smtp-Source: APXvYqy06Q/js8Zzz5TSbvg5kclOlz9RDFjeC90xMb/53GJiZ5mxvEINp8+cqpfTQjO7fNpd+G4ZsPMndS3J+I8KWgY=
X-Received: by 2002:a9d:7858:: with SMTP id c24mr4055310otm.66.1556966215617; 
 Sat, 04 May 2019 03:36:55 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1556919363.git.melissa.srw@gmail.com>
 <18725f7ddc3ac42b1c781b1848b05fabd4bd8320.1556919363.git.melissa.srw@gmail.com>
In-Reply-To: <18725f7ddc3ac42b1c781b1848b05fabd4bd8320.1556919363.git.melissa.srw@gmail.com>
From: Alexandru Ardelean <ardeleanalex@gmail.com>
Date: Sat, 4 May 2019 13:36:43 +0300
Message-ID: <CA+U=DsoYaN_gCc=jcQ9nHHNpC+voPfHCc=RP_ZyQAC497Jx_7A@mail.gmail.com>
Subject: Re: [PATCH 3/4] staging: iio: ad7150: simplify i2c SMBus return
 treatment
To: Melissa Wen <melissa.srw@gmail.com>
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
 Barry Song <21cnbao@gmail.com>, LKML <linux-kernel@vger.kernel.org>,
 kernel-usp@googlegroups.com, Peter Meerwald-Stadler <pmeerw@pmeerw.net>,
 Hartmut Knaack <knaack.h@gmx.de>, Jonathan Cameron <jic23@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Sat, May 4, 2019 at 1:26 AM Melissa Wen <melissa.srw@gmail.com> wrote:
>
> Since i2c_smbus_write_byte_data returns no-positive value, this commit
> making the treatment of its return value less verbose.
>
> Signed-off-by: Melissa Wen <melissa.srw@gmail.com>
> ---
>  drivers/staging/iio/cdc/ad7150.c | 10 +++-------
>  1 file changed, 3 insertions(+), 7 deletions(-)
>
> diff --git a/drivers/staging/iio/cdc/ad7150.c b/drivers/staging/iio/cdc/ad7150.c
> index 4ba46fb6ac02..3a4572a9e5ec 100644
> --- a/drivers/staging/iio/cdc/ad7150.c
> +++ b/drivers/staging/iio/cdc/ad7150.c
> @@ -201,16 +201,12 @@ static int ad7150_write_event_params(struct iio_dev *indio_dev,
>         ret = i2c_smbus_write_byte_data(chip->client,
>                                         ad7150_addresses[chan][4],
>                                         sens);
> -       if (ret < 0)
> +       if (ret)

For i2c_smbus_write_byte_data(), checking "ret < 0" or non-zero, is the same.
Changing this doesn't have any added value.

>                 return ret;
> -
> -       ret = i2c_smbus_write_byte_data(chip->client,
> +       else
> +               return i2c_smbus_write_byte_data(chip->client,
>                                         ad7150_addresses[chan][5],
>                                         timeout);

The introduction of the "else" branch is a bit noisy.
The code was a bit neater (and readable) before the else branch, and
functionally identical.

Well, when I say neater before, you have to understand, that I (and I
assume that some other people who write drivers) have a slight
fixation for this pattern:

example1:
ret = fn1();

if (ret < 0)  // could also be just "if (ret)"
   return ret;

ret = fn2();
if (ret < 0)  // could also be just "if (ret)"
   return ret;

example1a:
+ret = fn3();
+if (ret < 0)  // could also be just "if (ret)"
+    return ret;


Various higher-level programming languages, will discourage this
pattern in favor of neater patterns.

I personally, have a few arguments in favor of this pattern:
1) it is closer to how the machine code ; so, closer to how a
low-level instruction looks like
2) if (ever) this needs to be patched, the patch could be neat (see
example1a) ; the examle assumes that it's been added via a patch at a
later point in time
3) it keeps indentation level to a minimum ; this also aligns with
kernel-coding guidelines
(https://www.kernel.org/doc/html/v4.10/process/coding-style.html )
    (indentation seems a bit OCD-like when someone points it out at a
review, but it has it's value over time)

> -       if (ret < 0)
> -               return ret;
> -
> -       return 0;
>  }
>
>  static int ad7150_write_event_config(struct iio_dev *indio_dev,
> --
> 2.20.1
>
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
