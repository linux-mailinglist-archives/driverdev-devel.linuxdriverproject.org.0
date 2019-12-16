Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 5EF4611FCF2
	for <lists+driverdev-devel@lfdr.de>; Mon, 16 Dec 2019 03:43:06 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 34C5E84C23;
	Mon, 16 Dec 2019 02:43:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id X6gvF6DTD+j2; Mon, 16 Dec 2019 02:43:03 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 435CE84353;
	Mon, 16 Dec 2019 02:43:02 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 991D81BF352
 for <devel@linuxdriverproject.org>; Mon, 16 Dec 2019 02:42:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 92085844AA
 for <devel@linuxdriverproject.org>; Mon, 16 Dec 2019 02:42:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id EnTaZgBj2lkb for <devel@linuxdriverproject.org>;
 Mon, 16 Dec 2019 02:42:59 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-io1-f67.google.com (mail-io1-f67.google.com
 [209.85.166.67])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id E99E9844A0
 for <devel@driverdev.osuosl.org>; Mon, 16 Dec 2019 02:42:58 +0000 (UTC)
Received: by mail-io1-f67.google.com with SMTP id c16so3397740ioh.6
 for <devel@driverdev.osuosl.org>; Sun, 15 Dec 2019 18:42:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=uegttgIeXuKO4mIuh4CL6lp4/ZMs1NOF6eJA2Ni/GmU=;
 b=l0Zgh3J+BLdsgWr3k7vvxBWqLTnOZqbnXDj3c7qoAxofaOVopr+kSJ2hAUlF7YzndT
 tipHaG+LyhAOEoJfCLRqTtJiSK8F0VFM+xAJv9lYL1QrIQsUS2jnSfTrMvEqTRy3HiY9
 GTET9SJUcUMmpoM5Kza0e4Ih9eMQH4Wt744ooVes/Du9MukDghMDETdPQCDZteGraaQ7
 Zmiexh2CQk9fEY7Fk87MyTmXbpYkoAzy7SQZTeUtAWf+7OcRjW6o8dYRKBKNyVCXe2B+
 0LMHVMK/BRPQTY6j6ZGq+Ecq+vhTSnYfWM9C8nmEWZ64bv9UCHlXkRk5Sdo22b/b1pmX
 H3cA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=uegttgIeXuKO4mIuh4CL6lp4/ZMs1NOF6eJA2Ni/GmU=;
 b=c0MI/WR0n3+82HH3tBpAvOUEBse7aBa+JcYPyRvIwNYMFQxCW8wxK6H2bd0PdGmDj4
 wR3a6/1xvqhjfFp9ndeEnFwz08NMibOZDvPIPUeojHNzFIc6VRzxeFTga1ylD4Fp3zHW
 Znlk7U7NBbaE0pqilFuU8hrLSCi9QBZopQHmrJgtgIIt+FrkFee7xaHgmK+SGrSohVqJ
 lFtkR0Om/AP3d+aB0UHb69S+Vko7o9zeMKb7AVSEdnurVb4qaTV0KJOKfmPTDNH9txSO
 TNQGE0aWnO9tN0iL0Gx8hirZyLLwthr2LVCwkncuu8nmtN2KQO0/bDFXwAdB6D0hDiUt
 y0qw==
X-Gm-Message-State: APjAAAU5i0bDUzmocUqqXDXAZVqAFCp7g5v4cF1Z5R7PXrbOiG1H4SJW
 0wUEVvKsQcg8K3rWJ/q91Ya7Wd3dmbfFoPYwlo0=
X-Google-Smtp-Source: APXvYqxhFN09rDkOVdPI2UiXVg9OUT+I5mmNxjcYBbHHxRRO7/YNOz1llgDOjQBNwtfCvZG8suStd4FoqLJaKzOfu0M=
X-Received: by 2002:a02:9a08:: with SMTP id b8mr3135752jal.1.1576464178055;
 Sun, 15 Dec 2019 18:42:58 -0800 (PST)
MIME-Version: 1.0
References: <20191214230603.15603-1-navid.emamdoost@gmail.com>
 <20191215132330.GB10631@localhost>
In-Reply-To: <20191215132330.GB10631@localhost>
From: Navid Emamdoost <navid.emamdoost@gmail.com>
Date: Sun, 15 Dec 2019 20:42:47 -0600
Message-ID: <CAEkB2ETdiewDBk=2O16LkL73cQ1BtrRJDiUOeTsqH1Sq3Qzi+Q@mail.gmail.com>
Subject: Re: [PATCH] staging: rtl8192e: rtllib_module: Fix memory leak in
 alloc_rtllib
To: Johan Hovold <johan@kernel.org>
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
Cc: devel@driverdev.osuosl.org, Hariprasad Kelam <hariprasad.kelam@gmail.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 LKML <linux-kernel@vger.kernel.org>, Navid Emamdoost <emamd001@umn.edu>,
 Sandhya Bankar <bankarsandhya512@gmail.com>,
 =?UTF-8?Q?Hildo_Guillardi_J=C3=BAnior?= <hildogjr@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi Johan,

On Sun, Dec 15, 2019 at 7:23 AM Johan Hovold <johan@kernel.org> wrote:
>
> On Sat, Dec 14, 2019 at 05:05:58PM -0600, Navid Emamdoost wrote:
> > In the implementation of alloc_rtllib() the allocated dev is leaked in
> > case of ieee->pHTInfo allocation failure. Release via free_netdev(dev).
> >
> > Fixes: 6869a11bff1d ("Staging: rtl8192e: Use !x instead of x == NULL")
>
> This is not the commit that introduced this issue.
Oops! That should be  94a799425eee8

>
> > Signed-off-by: Navid Emamdoost <navid.emamdoost@gmail.com>
> > ---
> >  drivers/staging/rtl8192e/rtllib_module.c | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> >
> > diff --git a/drivers/staging/rtl8192e/rtllib_module.c b/drivers/staging/rtl8192e/rtllib_module.c
> > index 64d9feee1f39..18d898714c5c 100644
> > --- a/drivers/staging/rtl8192e/rtllib_module.c
> > +++ b/drivers/staging/rtl8192e/rtllib_module.c
> > @@ -125,7 +125,7 @@ struct net_device *alloc_rtllib(int sizeof_priv)
> >
> >       ieee->pHTInfo = kzalloc(sizeof(struct rt_hi_throughput), GFP_KERNEL);
> >       if (!ieee->pHTInfo)
> > -             return NULL;
> > +             goto failed;
>
> And you're still leaking ieee->networks and possibly a bunch of other
> allocations here. You need to call at least rtllib_networks_free() in
> the error path.
I'm not familiar with this code, but based on your hint I believe
there should be something like free_rtllib() here, right?
More specifically, rtllib_softmac_free() and
lib80211_crypt_info_free() are needed along with
rtllib_networks_free(). If you confirm that it works I can go ahead to
prepare patch v2 with these releases.

>
> >
> >       HTUpdateDefaultSetting(ieee);
> >       HTInitializeHTInfo(ieee);
>
> Johan



-- 
Navid.
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
