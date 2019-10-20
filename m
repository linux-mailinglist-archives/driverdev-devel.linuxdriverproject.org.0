Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C133DE067
	for <lists+driverdev-devel@lfdr.de>; Sun, 20 Oct 2019 22:29:44 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id BCADE84A33;
	Sun, 20 Oct 2019 20:29:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 8Bi3aGdYHqHx; Sun, 20 Oct 2019 20:29:42 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id A26DF83507;
	Sun, 20 Oct 2019 20:29:41 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 351DD1BF42E
 for <devel@linuxdriverproject.org>; Sun, 20 Oct 2019 20:29:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 2EFDC86372
 for <devel@linuxdriverproject.org>; Sun, 20 Oct 2019 20:29:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id dpszI-I4d2cD for <devel@linuxdriverproject.org>;
 Sun, 20 Oct 2019 20:29:38 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail2-relais-roc.national.inria.fr
 (mail2-relais-roc.national.inria.fr [192.134.164.83])
 by whitealder.osuosl.org (Postfix) with ESMTPS id E92F48630A
 for <devel@driverdev.osuosl.org>; Sun, 20 Oct 2019 20:29:37 +0000 (UTC)
X-IronPort-AV: E=Sophos;i="5.67,320,1566856800"; d="scan'208";a="407084399"
Received: from ip-121.net-89-2-166.rev.numericable.fr (HELO hadrien)
 ([89.2.166.121])
 by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 20 Oct 2019 22:29:35 +0200
Date: Sun, 20 Oct 2019 22:29:35 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Joe Perches <joe@perches.com>
Subject: Re: [Outreachy kernel] Re: [PATCH v1 1/5] staging: wfx: fix warnings
 of no space is necessary
In-Reply-To: <7ef650e0a6487a3eefc8df9eaf0ab20b5d26bad1.camel@perches.com>
Message-ID: <alpine.DEB.2.21.1910202227480.10441@hadrien>
References: <20191019140719.2542-1-jbi.octave@gmail.com>
 <20191019140719.2542-2-jbi.octave@gmail.com> <20191019142443.GH24678@kadam>
 <alpine.LFD.2.21.1910191603520.6740@ninjahub.org>
 <20191019180514.GI24678@kadam>
 <336960fdf88dbed69dd3ed2689a5fb1d2892ace8.camel@perches.com>
 <20191020191759.GJ24678@kadam>
 <6e6bc92cac0858fe5bd37b28f688d3da043f4bef.camel@perches.com>
 <alpine.DEB.2.21.1910202149140.10441@hadrien>
 <7ef650e0a6487a3eefc8df9eaf0ab20b5d26bad1.camel@perches.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
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
Cc: devel@driverdev.osuosl.org, Jules Irenge <jbi.octave@gmail.com>,
 gregkh@linuxfoundation.org, linux-kernel@vger.kernel.org,
 outreachy-kernel@googlegroups.com, Dan Carpenter <dan.carpenter@oracle.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>



On Sun, 20 Oct 2019, Joe Perches wrote:

> On Sun, 2019-10-20 at 21:52 +0200, Julia Lawall wrote:
> > On Sun, 20 Oct 2019, Joe Perches wrote:
> []
> > > There's probably a generic cocci mechanism to check function
> > > prototypes and then remove uses of unnecessary void pointer casts
> > > in function calls.  I'm not going to try to figure out that syntax.
> >
> > With the --recursive-includes option, perhaps:
> >
> > @r@
> > identifier f;
> > parameter list[n] ps;
> > type T;
> > identifier i;
> > @@
> >
> > T f(ps, void *i, ...);
> >
> > @@
> > expression e;
> > identifier r.f;
> > expression list[r.n] es;
> > @@
> >
> > f(es,
> > - (void *)(e)
> > + e
> >   ,...)
> >
> > This of course only works for functions that have prototypes, and not for
> > macros.  It will also run slowly.
>
> You are not kidding about slow, but it doesn't seem to work
> for mem<foo>, maybe because system includes aren't analyzed.

No they are not.

> Single file processing time on an XPS13 averages more than
> 100 seconds per file.

Not surprising.

Actually, --include-headers-for-types should provide some benefit.  That
discards the header files after the type inference.

> Also:
>
> 	expression e;
>
> could probably be better as:
>
> 	type T;
> 	T *p;

Good point.  expression *e; would be sufficient.

julia

>
> as some of the expressions cast to void are int or size_t
> and it's probably better to restrict the conversions to
> just pointer or array types.
>
>
>
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
