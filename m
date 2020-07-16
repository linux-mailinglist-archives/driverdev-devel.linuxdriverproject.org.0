Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 42537222578
	for <lists+driverdev-devel@lfdr.de>; Thu, 16 Jul 2020 16:28:26 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 6E90A89869;
	Thu, 16 Jul 2020 14:28:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id l6D-KhK+A36g; Thu, 16 Jul 2020 14:28:24 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id AB7ED89868;
	Thu, 16 Jul 2020 14:28:23 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id A0C7E1BF2F6
 for <devel@linuxdriverproject.org>; Thu, 16 Jul 2020 14:28:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 947A5203E7
 for <devel@linuxdriverproject.org>; Thu, 16 Jul 2020 14:28:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id rNrmBp9XtAiT for <devel@linuxdriverproject.org>;
 Thu, 16 Jul 2020 14:28:20 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lf1-f66.google.com (mail-lf1-f66.google.com
 [209.85.167.66])
 by silver.osuosl.org (Postfix) with ESMTPS id 7A086203D4
 for <devel@driverdev.osuosl.org>; Thu, 16 Jul 2020 14:28:20 +0000 (UTC)
Received: by mail-lf1-f66.google.com with SMTP id u12so3382129lff.2
 for <devel@driverdev.osuosl.org>; Thu, 16 Jul 2020 07:28:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=pesu-pes-edu.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=8z5jVj0dStGocFUNAEWnetN1Y7eNdK3d0AYJ2HaWYpg=;
 b=obEan/jtTHl0udOXHPR3KmPT44fbc0xUj31hTcpD//hyUGJUo81vOrGp3s283u40T1
 +qx/p4WjECHNx0owRE2krlth8/ZwxMnWsqxm3kOLnSPpUXtrxBGdDPOb85rjIShvDPTY
 y1Kkvd6voK4s7xyTce53xenzUbxCnYvr5MnUF3r/QUX9tqP6CRCIK1WZvGZKnjURvtkD
 lBkPWQnsLJpo4BwQYoKapbk8y06OaXZGnBv79TP8RJuOOXmcgkWMZEHn8lfN9UGcu38a
 r20Hp3VmyT0dPMPN9GUdee/eU0E0Nu+BqwP2vGnJ0SXrosdffcUs8QdJhwJodn7wIEZ3
 Qhug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=8z5jVj0dStGocFUNAEWnetN1Y7eNdK3d0AYJ2HaWYpg=;
 b=rr82M9MdtJlrC1vF+aIoewAtyS3J930pz2c23Eo3h5c9M0HlKoKSTHYm+rkYpqITr6
 jVnXUv36tOHNMnExO5zF16+wROo8CjCRACxfT5brmhKXinrlQfcCZOoaK8sM1C6wVMl8
 txNnERC0BP9gPJRlcuGuS0RG4QpfVXmmM089ymaMZa8jqGH0MODp8iaTXhXHogHtjnfu
 JoYypSAK/jIgk245gIaEqXrZPjCxBI9OMfkjhbnK2Co2ZIvulu+Tqj1yBY2d+RpHwLnd
 O4rpV6wFb23usBBegfGa8xGvhLvTVxQ9WBIN1mksohWwvm65ynV0bmAWW5ODQ9PL7BeR
 drQw==
X-Gm-Message-State: AOAM530E/8aD+GwdlgElHcOjoOhIunETeJmbXYn6DlNWOlh1rJas2WmW
 pcyCgcnuYTlOXEWcUk2oApSONV1G7jplpmy/Uy79XA==
X-Google-Smtp-Source: ABdhPJzJFvr5vBcuV9MJ+9cegE1/UH2yId/s/8BzF3bEwGOIeUu86iS1G6nyjne+JIuplPRlLlDEGTnH0/RZ7D4ZA8M=
X-Received: by 2002:a19:c797:: with SMTP id x145mr2250613lff.143.1594909698207; 
 Thu, 16 Jul 2020 07:28:18 -0700 (PDT)
MIME-Version: 1.0
References: <20200716141747.wewrnejrygosqhd5@pesu-pes-edu>
 <20200716142537.GA2176745@kroah.com>
In-Reply-To: <20200716142537.GA2176745@kroah.com>
From: B K Karthik <bkkarthik@pesu.pes.edu>
Date: Thu, 16 Jul 2020 10:28:06 -0400
Message-ID: <CAAhDqq3EeWGOJHaW37iQN5UgmvTf3AP10fhrVdJ5GuYjBt8f3w@mail.gmail.com>
Subject: Re: [PATCH v3] staging: comedi: comedi_fops.c: added casts to get rid
 of sparse warnings
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
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

On Thu, Jul 16, 2020 at 10:25 AM Greg Kroah-Hartman
<gregkh@linuxfoundation.org> wrote:
>
> On Thu, Jul 16, 2020 at 10:17:47AM -0400, B K Karthik wrote:
> > fixed sparse warnings by adding a cast in assignment from
> > void [noderef] __user * to unsigned int __force *
> > and a reverse cast in argument from
> > unsigned int * to  unsigned int __user * .
> >
> > Signed-off-by: B K Karthik <karthik.bk2000@live.com>
> > ---
> >  drivers/staging/comedi/comedi_fops.c | 4 ++--
> >  1 file changed, 2 insertions(+), 2 deletions(-)
>
> What changed from previous versions?

As Ian Abbott said "Minor quibble: the reverse cast is actually from
unsigned int * to"

Hence this is a change in the commit description.

>
> That always goes below the --- line.

I did not understand this sir, can you please clarify?

thanks,

karthik
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
