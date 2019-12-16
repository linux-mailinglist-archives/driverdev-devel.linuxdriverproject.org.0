Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id B402A1208CF
	for <lists+driverdev-devel@lfdr.de>; Mon, 16 Dec 2019 15:43:17 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id D8483874A7;
	Mon, 16 Dec 2019 14:43:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id yEeVp+bIRldL; Mon, 16 Dec 2019 14:43:15 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 91F6B85DA4;
	Mon, 16 Dec 2019 14:43:14 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id E7A801BF3EA
 for <devel@linuxdriverproject.org>; Mon, 16 Dec 2019 14:43:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id E29F087B8E
 for <devel@linuxdriverproject.org>; Mon, 16 Dec 2019 14:43:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id uLzmUMjq13AI for <devel@linuxdriverproject.org>;
 Mon, 16 Dec 2019 14:43:11 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lf1-f68.google.com (mail-lf1-f68.google.com
 [209.85.167.68])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 6E56987B6A
 for <devel@driverdev.osuosl.org>; Mon, 16 Dec 2019 14:43:11 +0000 (UTC)
Received: by mail-lf1-f68.google.com with SMTP id n25so4445349lfl.0
 for <devel@driverdev.osuosl.org>; Mon, 16 Dec 2019 06:43:11 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=Gv+/8rgLdpJtYfRlGB9W0qpf6rThSdzhIxSFY7hLXJI=;
 b=Zg8YrDB1Gv9x8G/zydLfYGZqkCN+uMC0C+iD0UPpzpgHRfOhIzBJ8eZQmksObcsNxv
 qFrGXitQMdLa9GRHtrK0UbKYbRnH2cXDvph77rRpKp0W8AuUkSEgN/QdbmSf8tkp8vEz
 IrNA6if0GINC1FpP3e4l436EIGcgm30wHcMCCu8DfYBtjmHvTQ5xDKXidbvTf9UW3mPi
 /1Wu0w+8xMFKRoV88k82uD4Ba8bLdrSVoM/pwscpjkDXsx5YuycrzVTNZ/qtNpiZa+hP
 CR52V7nzUMAY+ojKMGoOO82VrjKdIwN35osZn3IlZtE0XWTPMLrs+xwcOsXyC/dHmTXj
 lqhA==
X-Gm-Message-State: APjAAAV8VM/SAp/+e4MrKvOoJEq8JyIouvIxDM2gQGqvpf2JDdgYbro9
 uPRDn6EacJ1vmrY7DrGZBkw=
X-Google-Smtp-Source: APXvYqwHjsIT5o06Aax0VMVQOJutTX2B44vXA66R3ogbOX32pl0Gn46SqQ0yV0Whb8ChK1MM46E+oQ==
X-Received: by 2002:a19:48c5:: with SMTP id
 v188mr17002707lfa.100.1576507389559; 
 Mon, 16 Dec 2019 06:43:09 -0800 (PST)
Received: from xi.terra (c-14b8e655.07-184-6d6c6d4.bbcust.telenor.se.
 [85.230.184.20])
 by smtp.gmail.com with ESMTPSA id w6sm8980135lfq.95.2019.12.16.06.43.08
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 16 Dec 2019 06:43:08 -0800 (PST)
Received: from johan by xi.terra with local (Exim 4.92.3)
 (envelope-from <johan@kernel.org>)
 id 1igraU-0004My-9j; Mon, 16 Dec 2019 15:43:06 +0100
Date: Mon, 16 Dec 2019 15:43:06 +0100
From: Johan Hovold <johan@kernel.org>
To: Navid Emamdoost <navid.emamdoost@gmail.com>
Subject: Re: [PATCH] staging: rtl8192e: rtllib_module: Fix memory leak in
 alloc_rtllib
Message-ID: <20191216144306.GF22665@localhost>
References: <20191214230603.15603-1-navid.emamdoost@gmail.com>
 <20191215132330.GB10631@localhost>
 <CAEkB2ETdiewDBk=2O16LkL73cQ1BtrRJDiUOeTsqH1Sq3Qzi+Q@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAEkB2ETdiewDBk=2O16LkL73cQ1BtrRJDiUOeTsqH1Sq3Qzi+Q@mail.gmail.com>
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
 Johan Hovold <johan@kernel.org>, LKML <linux-kernel@vger.kernel.org>,
 Navid Emamdoost <emamd001@umn.edu>,
 Sandhya Bankar <bankarsandhya512@gmail.com>,
 Hildo Guillardi =?iso-8859-1?Q?J=FAnior?= <hildogjr@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Sun, Dec 15, 2019 at 08:42:47PM -0600, Navid Emamdoost wrote:
> Hi Johan,
> 
> On Sun, Dec 15, 2019 at 7:23 AM Johan Hovold <johan@kernel.org> wrote:
> >
> > On Sat, Dec 14, 2019 at 05:05:58PM -0600, Navid Emamdoost wrote:
> > > In the implementation of alloc_rtllib() the allocated dev is leaked in
> > > case of ieee->pHTInfo allocation failure. Release via free_netdev(dev).
> > >
> > > Fixes: 6869a11bff1d ("Staging: rtl8192e: Use !x instead of x == NULL")
> >
> > This is not the commit that introduced this issue.
> Oops! That should be  94a799425eee8
> 
> >
> > > Signed-off-by: Navid Emamdoost <navid.emamdoost@gmail.com>
> > > ---
> > >  drivers/staging/rtl8192e/rtllib_module.c | 2 +-
> > >  1 file changed, 1 insertion(+), 1 deletion(-)
> > >
> > > diff --git a/drivers/staging/rtl8192e/rtllib_module.c b/drivers/staging/rtl8192e/rtllib_module.c
> > > index 64d9feee1f39..18d898714c5c 100644
> > > --- a/drivers/staging/rtl8192e/rtllib_module.c
> > > +++ b/drivers/staging/rtl8192e/rtllib_module.c
> > > @@ -125,7 +125,7 @@ struct net_device *alloc_rtllib(int sizeof_priv)
> > >
> > >       ieee->pHTInfo = kzalloc(sizeof(struct rt_hi_throughput), GFP_KERNEL);
> > >       if (!ieee->pHTInfo)
> > > -             return NULL;
> > > +             goto failed;
> >
> > And you're still leaking ieee->networks and possibly a bunch of other
> > allocations here. You need to call at least rtllib_networks_free() in
> > the error path.
> I'm not familiar with this code, but based on your hint I believe
> there should be something like free_rtllib() here, right?

Right.

> More specifically, rtllib_softmac_free() and
> lib80211_crypt_info_free() are needed along with
> rtllib_networks_free(). If you confirm that it works I can go ahead to
> prepare patch v2 with these releases.

I can't confirm anything, that's your job. ;)

You need to trace the calls and allocations made in in alloc_rtllib()
and make sure everything is released on errors. For a well-designed
subsystem and driver this should end up looking a lot like the release
function (free_rtllib()), but that's unfortunately not always the case.

Judging from a quick look at least rtllib_softmac_free() is also needed
besides rtllib_networks_free(). And you probably want
lib80211_crypt_info_free() as well for consistency even if the
corresponding init functions doesn't seem to do any allocations
currently.

Johan
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
