Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 6272D82513
	for <lists+driverdev-devel@lfdr.de>; Mon,  5 Aug 2019 20:53:01 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 035B920420;
	Mon,  5 Aug 2019 18:53:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id t8RIuPQ9oo7o; Mon,  5 Aug 2019 18:52:59 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id EEEF920441;
	Mon,  5 Aug 2019 18:52:57 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 830001BF35D
 for <devel@linuxdriverproject.org>; Mon,  5 Aug 2019 18:52:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 7FDEB879DA
 for <devel@linuxdriverproject.org>; Mon,  5 Aug 2019 18:52:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id SYLQpX5N4sNV for <devel@linuxdriverproject.org>;
 Mon,  5 Aug 2019 18:52:55 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lj1-f196.google.com (mail-lj1-f196.google.com
 [209.85.208.196])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 767AD879CC
 for <devel@driverdev.osuosl.org>; Mon,  5 Aug 2019 18:52:55 +0000 (UTC)
Received: by mail-lj1-f196.google.com with SMTP id i21so908035ljj.3
 for <devel@driverdev.osuosl.org>; Mon, 05 Aug 2019 11:52:55 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=tjeoZJSeJkKftPMhGTbICIt4Paaa37S6NJ3KXecwDeY=;
 b=BNU83MYIqRcrp3lENilFsHgWqgxzYif8tRl0rdSz2JRqPexiGb5FlCZoYONgJXAmzQ
 PQbiQRPm5+oPHgjTRZYj7Ge6dg/YcKH1Tw7DtE52CBoVnwrtjdwD4gnRRI8l4ySryI/1
 ZKdEdaQh0iIRrwsaRbg5Wbw9xaOxGqpiohhoCobsh76NRvhXQLoSiPl2UE2tnTmuZdAF
 cfDgXpL2M0cxwTF3PyxSxrkrqZfuAtcrryn0HU2C4LybH3WdomBQIK9GHYlHzRstnFaB
 udAYA8zrcSJzuQKYkemdgkgMz59+GfHfeI+c7E7OlM41ZRNYJlxwE/cGA+kG0Vw+ZczD
 IRiA==
X-Gm-Message-State: APjAAAWwrnKopAaDY+5XIlo2Uf5i14V51bpdY+dOjQoU+WLYSlTsWLXT
 20MNjLUTsGwwrb5s5Z6tOtM1BB0UaPk=
X-Google-Smtp-Source: APXvYqzuE99C0JX1TXmu/trLo6E5dWqTMK2h21LhIpYDdF/BsZ7cp23RYaizp+FCJoFHuWAwzaXMgg==
X-Received: by 2002:a2e:8183:: with SMTP id e3mr30052245ljg.97.1565031173527; 
 Mon, 05 Aug 2019 11:52:53 -0700 (PDT)
Received: from mail-lj1-f182.google.com (mail-lj1-f182.google.com.
 [209.85.208.182])
 by smtp.gmail.com with ESMTPSA id o24sm17460484ljg.6.2019.08.05.11.52.53
 for <devel@driverdev.osuosl.org>
 (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
 Mon, 05 Aug 2019 11:52:53 -0700 (PDT)
Received: by mail-lj1-f182.google.com with SMTP id z28so25938034ljn.4
 for <devel@driverdev.osuosl.org>; Mon, 05 Aug 2019 11:52:53 -0700 (PDT)
X-Received: by 2002:a2e:2c14:: with SMTP id s20mr17515926ljs.54.1565031173071; 
 Mon, 05 Aug 2019 11:52:53 -0700 (PDT)
MIME-Version: 1.0
References: <20190802195017.27845-1-ricardo6142@gmail.com>
 <20190802145448.0bcd5374@hermes.lan>
In-Reply-To: <20190802145448.0bcd5374@hermes.lan>
From: Helen Koike <helen@koikeco.de>
Date: Mon, 5 Aug 2019 15:52:42 -0300
X-Gmail-Original-Message-ID: <CAPW4XYYUQGungxgvDq5G7zhT3M+N75WrR1HoOFesMtU2hYK2dA@mail.gmail.com>
Message-ID: <CAPW4XYYUQGungxgvDq5G7zhT3M+N75WrR1HoOFesMtU2hYK2dA@mail.gmail.com>
Subject: Re: [Lkcamp] [PATCH] isdn: hysdn: fix code style error from checkpatch
To: Stephen Hemminger <stephen@networkplumber.org>
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
Cc: devel@driverdev.osuosl.org, Karsten Keil <isdn@linux-pingi.de>,
 Ricardo Bruno Lopes da Silva <ricardo6142@gmail.com>,
 Greg KH <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 lkcamp@lists.libreplanetbr.org, netdev@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi,

On Fri, Aug 2, 2019 at 6:55 PM Stephen Hemminger
<stephen@networkplumber.org> wrote:
>
> On Fri,  2 Aug 2019 19:50:17 +0000
> Ricardo Bruno Lopes da Silva <ricardo6142@gmail.com> wrote:
>
> > Fix error bellow from checkpatch.
> >
> > WARNING: Block comments use * on subsequent lines
> > +/***********************************************************
> > +
> >
> > Signed-off-by: Ricardo Bruno Lopes da Silva <ricardo6142@gmail.com>
>
> Read the TODO, these drivers are scheduled for removal, so changes
> are not helpful at this time.

I'm sorry, it was me who suggested Ricardo to make this change
as his first contribution, I didn't see the TODO file.

Ricardo, it would be great if you could send a patch to another staging driver
to get starting and to learn how the kernel development cycle works.
Feel free to ping me or the lkcamp group if you want some pointers/guidance.

Thanks both for your contribution.
Helen

>
> _______________________________________________
> Lkcamp mailing list
> Lkcamp@lists.libreplanetbr.org
> https://lists.libreplanetbr.org/mailman/listinfo/lkcamp
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
