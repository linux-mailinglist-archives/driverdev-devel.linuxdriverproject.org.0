Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id D920925CEE2
	for <lists+driverdev-devel@lfdr.de>; Fri,  4 Sep 2020 02:59:36 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 288182E189;
	Fri,  4 Sep 2020 00:59:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id MqT7xffsQ9o3; Fri,  4 Sep 2020 00:59:34 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 8483C2E181;
	Fri,  4 Sep 2020 00:59:31 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 63F371BF20B
 for <devel@linuxdriverproject.org>; Fri,  4 Sep 2020 00:59:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 5D44D874D3
 for <devel@linuxdriverproject.org>; Fri,  4 Sep 2020 00:59:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id A7lgsYDtYwNv for <devel@linuxdriverproject.org>;
 Fri,  4 Sep 2020 00:59:27 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ej1-f67.google.com (mail-ej1-f67.google.com
 [209.85.218.67])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 9674D874D2
 for <devel@driverdev.osuosl.org>; Fri,  4 Sep 2020 00:59:27 +0000 (UTC)
Received: by mail-ej1-f67.google.com with SMTP id a26so6410216ejc.2
 for <devel@driverdev.osuosl.org>; Thu, 03 Sep 2020 17:59:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:cc;
 bh=qvfCuz0yuh3MsTm69717RI4Gp9IbhKPEeIA+SE5rkxE=;
 b=AQIa8Aj6RUic6TSZZuyxkYyKhejkbrDibWkAqUSRozIVY7YGfnjw/4ELqOl9Eu0Ldd
 Hh5rJ5oWy2GFLESM2kMmZHrZvL/OU7Zcz4WG7PzAqLfGmGzwlAimgYJ1oz8r6mdGLbKU
 hf6Kyz8hL6ttt0dquUCFa6xj6RCcnjjy9GX4ZkK4CvAcN32d83LQ6wwyFqgiWNuUDeye
 kc2Jc3iCqTQ9hY1s9XJvBPgQx1Gc8Vy3abPvM86K+4y5otR3dIoCYS7planxcPeX/GiN
 rgRBUlYS7TivxOAzKLKr/JEJGTFcv9qW3/VMUe63c+NKqVYbFEtLrfWIBTWnSJuiJKy1
 YyFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:cc;
 bh=qvfCuz0yuh3MsTm69717RI4Gp9IbhKPEeIA+SE5rkxE=;
 b=VNoZAJkb+nEVjun4mHvy3dk9axfKiTPjp8V5aGs32A20Ag6+iTCeqYcTYLxLTYotBm
 W0fFHZ7S0khFM0ncg9KldjoHlRqoDgwYTzuv1fQM2zZpNmq0esA3yUWCqBRCf9Lalady
 F5jORzNa595n0pUDVQ2bzu+/YUTPU3ecEklUbCNdSlZkBTRdlAvRU8+Bn/pLATm2wjhV
 6lvtZz1G3cKFgiNhbDgmfu57NlYZZheD8hTaFWEsK+rnosSH2UqkZOfjR/iiOfnJz+Jq
 h8uIgaAuuX0fW73Lx1fxayic9OWqveEfNKw0aBXRPjH9bHVShksTdYkL0ga2PQiD74g+
 gwpw==
X-Gm-Message-State: AOAM530vDIhzMXffTx71suxlX5hA2/OMdsZmqgcv+6B2zjlzr2Kh9njD
 d7ZJ90fEralcI3pK2CWUgM+POikB2KD78p5rUyw=
X-Received: by 2002:a17:906:bc47:: with SMTP id
 s7mt4686595ejv.354.1599181165713; 
 Thu, 03 Sep 2020 17:59:25 -0700 (PDT)
MIME-Version: 1.0
References: <20200904003408.452999-1-anant.thazhemadam@gmail.com>
In-Reply-To: <20200904003408.452999-1-anant.thazhemadam@gmail.com>
From: Anant Thazhemadam <anant.thazhemadam@gmail.com>
Date: Fri, 4 Sep 2020 06:29:14 +0530
Message-ID: <CAKBsNOkn+kx1VGc9274qT7-RDskoFNank27vG5g7Vt51+zvgmA@mail.gmail.com>
Subject: Re: [PATCH] Remove unused variables
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
 linux-kernel@vger.kernel.org, Ian Abbott <abbotti@mev.co.uk>,
 "Alexander A. Klimov" <grandmaster@al2klimov.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

This patch was generated, and sent by a script I was working on (and
apparently, still am), that would run sparse,
detect unused variables and eliminate them. However, upon manual
inspection, it became clear
to me that these functions are in fact necessary. I'm sorry this
mistake happened. Kindly ignore and discard this patch.
My sincere apologies.

Thanks,
Anant

On Fri, Sep 4, 2020 at 6:04 AM Anant Thazhemadam
<anant.thazhemadam@gmail.com> wrote:
>
> A few unused variables that were defined were found and removed.
>
> Signed-off-by: Anant Thazhemadam <anant.thazhemadam@gmail.com>
> ---
>  drivers/staging/comedi/drivers/dt2814.c | 2 --
>  1 file changed, 2 deletions(-)
>
> diff --git a/drivers/staging/comedi/drivers/dt2814.c b/drivers/staging/comedi/drivers/dt2814.c
> index bcf4d5444faf..1a36d8612d9f 100644
> --- a/drivers/staging/comedi/drivers/dt2814.c
> +++ b/drivers/staging/comedi/drivers/dt2814.c
> @@ -190,7 +190,6 @@ static irqreturn_t dt2814_interrupt(int irq, void *d)
>         struct comedi_device *dev = d;
>         struct dt2814_private *devpriv = dev->private;
>         struct comedi_subdevice *s = dev->read_subdev;
> -       int data;
>
>         if (!dev->attached) {
>                 dev_err(dev->class_dev, "spurious interrupt\n");
> @@ -229,7 +228,6 @@ static int dt2814_attach(struct comedi_device *dev, struct comedi_devconfig *it)
>         struct dt2814_private *devpriv;
>         struct comedi_subdevice *s;
>         int ret;
> -       int i;
>
>         ret = comedi_request_region(dev, it->options[0], 0x2);
>         if (ret)
> --
> 2.25.1
>
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
