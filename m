Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 924C417D9EB
	for <lists+driverdev-devel@lfdr.de>; Mon,  9 Mar 2020 08:35:59 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 54B6524C10;
	Mon,  9 Mar 2020 07:35:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id hvCbqr5nMADD; Mon,  9 Mar 2020 07:35:56 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 29B182042A;
	Mon,  9 Mar 2020 07:35:56 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 5F2071BF3D9
 for <devel@linuxdriverproject.org>; Mon,  9 Mar 2020 07:35:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 5C1C620431
 for <devel@linuxdriverproject.org>; Mon,  9 Mar 2020 07:35:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id sTV0d-weQS4a for <devel@linuxdriverproject.org>;
 Mon,  9 Mar 2020 07:35:52 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail2-relais-roc.national.inria.fr
 (mail2-relais-roc.national.inria.fr [192.134.164.83])
 by silver.osuosl.org (Postfix) with ESMTPS id D97F02042A
 for <devel@driverdev.osuosl.org>; Mon,  9 Mar 2020 07:35:51 +0000 (UTC)
X-IronPort-AV: E=Sophos;i="5.70,532,1574118000"; d="scan'208";a="439418215"
Received: from abo-173-121-68.mrs.modulonet.fr (HELO hadrien) ([85.68.121.173])
 by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 09 Mar 2020 08:35:24 +0100
Date: Mon, 9 Mar 2020 08:35:24 +0100 (CET)
From: Julia Lawall <julia.lawall@inria.fr>
X-X-Sender: jll@hadrien
To: Shreeya Patel <shreeya.patel23498@gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] Staging: rtl8188eu: Add space around
 operators
In-Reply-To: <af1a27fb8c5f7efbaf99ce3055cf3801b366d627.camel@gmail.com>
Message-ID: <alpine.DEB.2.21.2003090825280.2676@hadrien>
References: <20200308220004.9960-1-shreeya.patel23498@gmail.com>
 <f1327099b774e141bbeaa8abc47f98b9c6d49264.camel@perches.com>
 <af1a27fb8c5f7efbaf99ce3055cf3801b366d627.camel@gmail.com>
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
Cc: devel@driverdev.osuosl.org, nramas@linux.microsoft.com,
 daniel.baluta@gmail.com, sbrivio@redhat.com, gregkh@linuxfoundation.org,
 linux-kernel@vger.kernel.org, hverkuil@xs4all.nl,
 outreachy-kernel <outreachy-kernel@googlegroups.com>,
 Joe Perches <joe@perches.com>, Larry.Finger@lwfinger.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Mon, 9 Mar 2020, Shreeya Patel wrote:

> On Sun, 2020-03-08 at 16:05 -0700, Joe Perches wrote:
> > On Mon, 2020-03-09 at 03:30 +0530, Shreeya Patel wrote:
> > > Add space around operators for improving the code
> > > readability.
> >
> > Hello again Shreeya.
> >
> I have some questions here...
>
> > The subject isn't really quite appropriate as you
> > are not doing this space around operator addition
> > for the entire subsystem.
> >
> > IMO, the subject should be:
> >
> > [PATCH] staging: rtl8188eu: rtw_mlme: Add spaces around operators
> >
> > because you are only performing this change on this
> > single file.
> >
> > If you were to do this for every single file in the
> > subsystem, you could have many individual patches with
> > the exact same subject line.
> >
> > And it would be good to show in the changelog that you
> > have compiled the file pre and post patch without object
> > code change.
> >
> I'm not sure how to show this. Do you mean to add the output of
> "make drivers/staging/rtl8188eu/core" before and after the changes?

You are working on one specific file, maybe foo.c.  Compile before
making changes, which will give you foo.o.  Rename that file to something
else.  Make your changes and compile again.  Do a diff with the previously
compiled file.  It should produce nothing, indicating no difference.

If this .o file doesn't change and you only changed this .c file, the
whole compiled driver won't change either.

> I also don't understand the meaning of no object code change. If we are
> making the changes to code and then compiling it using the make command
> then a new file with .o extension is created and replaced by the
> previous one isn't it?
>
> > Also, it's good to show that git diff -w shows no source
> > file changes.
> >
>
> And this has to be...
> git diff -w --shortstat drivers/staging/rtl8188eu/core/

--shortstat does not seem useful.  What you hope to see is that it
produces nothing.

julia

> Am I correct?
>
> Thanks
>
> > > Reported by checkpatch.pl
> > >
> > > Signed-off-by: Shreeya Patel <shreeya.patel23498@gmail.com>
> > > ---
> > >  drivers/staging/rtl8188eu/core/rtw_mlme.c | 40 +++++++++++------
> > > ------
> > >  1 file changed, 20 insertions(+), 20 deletions(-)
> >
> > When I try this using checkpatch --fix-inplace, I get
> > 21 changes against the latest -next tree.
> >
> > What tree are you doing this against?
> >
> >
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/af1a27fb8c5f7efbaf99ce3055cf3801b366d627.camel%40gmail.com.
>
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
