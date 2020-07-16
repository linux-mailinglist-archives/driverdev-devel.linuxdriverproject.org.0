Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id BC6CF2225EE
	for <lists+driverdev-devel@lfdr.de>; Thu, 16 Jul 2020 16:40:01 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 3031F89113;
	Thu, 16 Jul 2020 14:40:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id qp7LR73JcTYa; Thu, 16 Jul 2020 14:39:59 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 12A6A890CA;
	Thu, 16 Jul 2020 14:39:59 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id C4CDC1BF2F6
 for <devel@linuxdriverproject.org>; Thu, 16 Jul 2020 14:39:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id C1172890CA
 for <devel@linuxdriverproject.org>; Thu, 16 Jul 2020 14:39:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 70u_9KWSOkDQ for <devel@linuxdriverproject.org>;
 Thu, 16 Jul 2020 14:39:56 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 523E589090
 for <devel@driverdev.osuosl.org>; Thu, 16 Jul 2020 14:39:56 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 921A5206F4;
 Thu, 16 Jul 2020 14:39:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1594910396;
 bh=8iw2omV+8rcbIE2y5sg+rVi5KY6cy+c5PEsFn625WuY=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=wTqQV6KUMnjpRsu1sz4//WWIEsxgic8HNIIfQe05WfEVGsAvcynFS7DsrPSkizuIB
 MzjhcxIOYPk1cDld8mdlE/11Pi2/xcEneZ9IDPOckuftgUI2K2hKFrWyHzAR8Yim71
 nPKtVOpo6CY6nidbg3xc87XIG6JxJWCx55F8urts=
Date: Thu, 16 Jul 2020 16:39:49 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: B K Karthik <bkkarthik@pesu.pes.edu>
Subject: Re: [PATCH v3] staging: comedi: comedi_fops.c: added casts to get
 rid of sparse warnings
Message-ID: <20200716143949.GA2230084@kroah.com>
References: <20200716141747.wewrnejrygosqhd5@pesu-pes-edu>
 <20200716142537.GA2176745@kroah.com>
 <CAAhDqq3EeWGOJHaW37iQN5UgmvTf3AP10fhrVdJ5GuYjBt8f3w@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAAhDqq3EeWGOJHaW37iQN5UgmvTf3AP10fhrVdJ5GuYjBt8f3w@mail.gmail.com>
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
Cc: devel@driverdev.osuosl.org, Xiyu Yang <xiyuyang19@fudan.edu.cn>,
 linux-kernel@vger.kernel.org, Ian Abbott <abbotti@mev.co.uk>,
 Al Viro <viro@zeniv.linux.org.uk>, Michel Lespinasse <walken@google.com>,
 Divyansh Kamboj <kambojdivyansh2000@gmail.com>,
 Vlastimil Babka <vbabka@suse.cz>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Thu, Jul 16, 2020 at 10:28:06AM -0400, B K Karthik wrote:
> On Thu, Jul 16, 2020 at 10:25 AM Greg Kroah-Hartman
> <gregkh@linuxfoundation.org> wrote:
> >
> > On Thu, Jul 16, 2020 at 10:17:47AM -0400, B K Karthik wrote:
> > > fixed sparse warnings by adding a cast in assignment from
> > > void [noderef] __user * to unsigned int __force *
> > > and a reverse cast in argument from
> > > unsigned int * to  unsigned int __user * .
> > >
> > > Signed-off-by: B K Karthik <karthik.bk2000@live.com>
> > > ---
> > >  drivers/staging/comedi/comedi_fops.c | 4 ++--
> > >  1 file changed, 2 insertions(+), 2 deletions(-)
> >
> > What changed from previous versions?
> 
> As Ian Abbott said "Minor quibble: the reverse cast is actually from
> unsigned int * to"
> 
> Hence this is a change in the commit description.

How was anyone supposed to know this?  :)

> > That always goes below the --- line.
> 
> I did not understand this sir, can you please clarify?

Please read the documentation for how to properly version patches, it's
in the submitting patches document.  Do that and send a v4 for this.

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
