Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 20E4B1BF94B
	for <lists+driverdev-devel@lfdr.de>; Thu, 30 Apr 2020 15:22:42 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 842A086D2F;
	Thu, 30 Apr 2020 13:22:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id UGOKQIlWFcyN; Thu, 30 Apr 2020 13:22:39 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 3E48186D2B;
	Thu, 30 Apr 2020 13:22:39 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id B8D781BF387
 for <devel@linuxdriverproject.org>; Thu, 30 Apr 2020 13:22:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id B2D3B86C1E
 for <devel@linuxdriverproject.org>; Thu, 30 Apr 2020 13:22:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id bv_noZcwhnva for <devel@linuxdriverproject.org>;
 Thu, 30 Apr 2020 13:22:35 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mout.kundenserver.de (mout.kundenserver.de [212.227.126.131])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id C265D86DD5
 for <devel@driverdev.osuosl.org>; Thu, 30 Apr 2020 13:22:09 +0000 (UTC)
Received: from mail-qv1-f54.google.com ([209.85.219.54]) by
 mrelayeu.kundenserver.de (mreue012 [212.227.15.129]) with ESMTPSA (Nemesis)
 id 1M2gt5-1jSmtE1Bj5-004FGK for <devel@driverdev.osuosl.org>; Thu, 30 Apr
 2020 15:22:07 +0200
Received: by mail-qv1-f54.google.com with SMTP id ck5so2902294qvb.11
 for <devel@driverdev.osuosl.org>; Thu, 30 Apr 2020 06:22:06 -0700 (PDT)
X-Gm-Message-State: AGi0PuZLJXyE8iOIIBp2wZ4xOif1gTSxhWMQ9mM3Eq4eWsKyK4Q8SzjD
 unM8LJ0poYk9buDHJqwrVo0IV7sxXWk1eUmL2hI=
X-Google-Smtp-Source: APiQypLuqw7/v6Gh8dAGdkb3SrT/lgJqjVQEkm7oovSCJMnVMwaKvPbW2WJQKu+eMQVtBvXDbWBidCWN2fMbtSmOSbU=
X-Received: by 2002:a0c:ea43:: with SMTP id u3mr2739084qvp.211.1588252925601; 
 Thu, 30 Apr 2020 06:22:05 -0700 (PDT)
MIME-Version: 1.0
References: <20200429142119.1735196-1-arnd@arndb.de> <3943343.tW1xmJHsB6@pc-42>
 <CAK8P3a1e=-H_b8_GPJW5-uufye5_6OJ6f+ZWErjKPWkxSRSigw@mail.gmail.com>
 <3063047.NHY2raB2sq@pc-42>
In-Reply-To: <3063047.NHY2raB2sq@pc-42>
From: Arnd Bergmann <arnd@arndb.de>
Date: Thu, 30 Apr 2020 15:21:49 +0200
X-Gmail-Original-Message-ID: <CAK8P3a3Per2f3noAzgN7brQ3g_4EN-vNLcv40k7_vtH+qZG4wA@mail.gmail.com>
Message-ID: <CAK8P3a3Per2f3noAzgN7brQ3g_4EN-vNLcv40k7_vtH+qZG4wA@mail.gmail.com>
Subject: Re: [PATCH] staging: wfx: avoid compiler warning on empty array
To: Jerome Pouiller <Jerome.Pouiller@silabs.com>
X-Provags-ID: V03:K1:I9DrfSdUNJGRScgcHvwaaufF7V+Eiq5u6DoNphxqUFulYpeQm9B
 RQvCCSTjHSsc4BtfI6jcq9G400h9dKYYKdnFjL2gEBjgM/L3/QOzuj86OPPt5i2PaqWmgSt
 z9v6zFdJBhAhV0cbLMB6pNoykrDtQm00t6jJiMHAXUyTOAeGQZ5WkbaXnZsvwkSThB5xL0n
 R4jJJZjoNpprWIEdn46oQ==
X-UI-Out-Filterresults: notjunk:1;V03:K0:mmoCnnAqRK8=:iWdkpmi5AxRCWxBo99sgvl
 GrTcbRE1FIlorzmJ7AZOiKpdwNr+KQ56uO9Z5AE+W1w1eW5lFIZTO6NLycE2tcstUr11oGNf7
 n6jdxCvcbGOaVdYLcA+rUqVfKulpH5NspYK5dq91CajM5F8oAjhidYXUAG2FQgG5W2HIDwTWV
 Pd8SiLDhqwaNou5QR1sDN9Fr7UTQNRHqSRjoH7a3vY0ZDvZ89JGdFcKliZtoCktecNSUCbJ5N
 p8C821J65Zd4TGw8XrSth1ajCEGfNjNiuYOp97rwfEAggVOQtFigNE8GrJQThj6P6G4ubff3O
 +JmEwlHqHscALJR4H5acH/X1tqrrytz2McOZE+Los05H93gbwi2In99w1D6a7RAdeBmZr2Pn6
 JS1ASGESbqzdSkKezwSv2h8JbbgZOVv9eEJLm/WIMSPzLC+LQ81Q7kzrWAt25/85fuQzszwsA
 Jvhd7NcWJN9t8vdUlAk5r0cNPR3vTKMX1VvJbbzIhY/xZuoZJo8FJk1HsDQabIRaadUhgjTtF
 4zIb0U2StFFEUFtwCLnTJwsYpEQmN5dam6NQSIxB8fos0odx4tixNdI/pVZs1P34JiXFTZDUM
 qLNZni0CjI/QMlfEcIudp9xb5fHUV+kRinXQ9xc+djCW1bi9oEjE63/UpqgCfIBvmk3AzFfVc
 mgUyWJFQXuSzoU5aZwgPaAKKnfRI7rIyrMkXWfH+S2TzJJxR8QvgjO2cBR7cLanM6UrH3V7al
 KBFI6uYxYVK4kfKJNhWwrzFy4iHjfOw/k2OZNfk/M2OJTnbKf8wuG6cN7crg5hq9c0siGZEqq
 o3pIw5RWFKSTpwJx0NJywRoUORPOhB64ezbFuLY0xFpiAd1gP4=
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
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Jules Irenge <jbi.octave@gmail.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 =?UTF-8?B?TWljaGHFgiBNaXJvc8WCYXc=?= <mirq-linux@rere.qmqm.pl>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Thu, Apr 30, 2020 at 10:42 AM Jerome Pouiller
<Jerome.Pouiller@silabs.com> wrote:
> On Wednesday 29 April 2020 22:34:56 CEST Arnd Bergmann wrote:
> > On Wed, Apr 29, 2020 at 6:04 PM Jerome Pouiller
> > <Jerome.Pouiller@silabs.com> wrote:
> > > On Wednesday 29 April 2020 16:21:09 CEST Arnd Bergmann wrote:
> > > >
> > > > -static const struct of_device_id wfx_sdio_of_match[];
> > > > +static const struct of_device_id wfx_sdio_of_match[] = {
> > > > +       { .compatible = "silabs,wfx-sdio" },
> > > > +       { .compatible = "silabs,wf200" },
> > > > +       { },
> > > > +};
> > > > +MODULE_DEVICE_TABLE(of, wfx_sdio_of_match);
> > >
> > > I suggest to keep the '#ifdef CONFIG_OF' around this definition. If
> > > CONFIG_OF is undefined, of_match_ptr() and of_match_node() will be NULL
> > > and it should compile.
> >
> > I would generally always go for fewer #ifdef instead of more when the result
> > is the same. Are you worried about wasting 600 bytes of object code size for
> > the array on systems that need this driver but not CONFIG_OF, or something
> > else?
>
> I am not very concerned about the size of the object. However, I think
> that all the modules should apply the same policy regarding the device
> tables. With a few greps, I found 3954 struct of_device_id. About 500 are
> inside #ifdef and about 1000 use of_match_ptr().
>
> Should we consider that the structs of_device_id have to be defined even
> if CONFIG_OF is not defined? And In this case, should we drop
> of_match_ptr()?
>
> Or in contrary, when kernel is compiled without CONFIG_OF, no modules
> should contains OF entries in its device table?

I think the drivers that use an #ifdef here just do so for historic reasons.
In the linux-2.6 days, this caused build failures, but just leaving them
defined has worked for a long time.

       Arnd
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
