Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 556A343DA8
	for <lists+driverdev-devel@lfdr.de>; Thu, 13 Jun 2019 17:44:19 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 612D884F12;
	Thu, 13 Jun 2019 15:44:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id dMstboUxOiV0; Thu, 13 Jun 2019 15:44:16 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id DA671860BF;
	Thu, 13 Jun 2019 15:44:15 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id BEECC1BF28E
 for <devel@linuxdriverproject.org>; Thu, 13 Jun 2019 15:44:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id BC007865DB
 for <devel@linuxdriverproject.org>; Thu, 13 Jun 2019 15:44:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id t1MXZ_SWWS6Q for <devel@linuxdriverproject.org>;
 Thu, 13 Jun 2019 15:44:13 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lj1-f195.google.com (mail-lj1-f195.google.com
 [209.85.208.195])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 02CD586594
 for <devel@driverdev.osuosl.org>; Thu, 13 Jun 2019 15:44:12 +0000 (UTC)
Received: by mail-lj1-f195.google.com with SMTP id p17so11740780ljg.1
 for <devel@driverdev.osuosl.org>; Thu, 13 Jun 2019 08:44:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=aeSaLtysUhVZqqrP3nPvYNbe4HwweI7WGntZ/Db3p8E=;
 b=o8TYwCph8F6Zw0zSI173WRNNuJ9VYvLFHvYJ3//mpo0H++iwmfY4O2LBH2lWsQN179
 Os7vZTzzwNQvWBBc27KDaZAohaC3tJm38YSYu0Z8Y8u6gLMCX9K2bfyn6R1RligqF4JX
 HPZiWRLhTp6QmcPzvCzwqSezVsCqgzcz263KaaONbboEHDO3gxiBRLTGHvpmMVccYOkt
 Bq9CWik3l9wbWWA+sRCC2Z38pCDN9xVh5iph80M/GqYS2G2b74rGK0Ap+4Kd9yerMe/E
 y64uDJsHxCooI7j3kbYE/YFTxHA4wu/5vtRQmQhlhicwNk1ZE27eaJPzfZCTDnloN3wY
 p4zg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=aeSaLtysUhVZqqrP3nPvYNbe4HwweI7WGntZ/Db3p8E=;
 b=Q1Qf6LWPV4NkCdAfJteHa85pwiMcz8USa/P8RGtn0u5HNN2M+eH2V52PsljIc7DCHu
 pYCJgGq+AfYhb5TQxxvhwj1fcFJe4+/nH76jNCQCnCAyqcCLJVJP5bHwdsFdblbY5OXK
 cpMKiVhpkdC42S5/YKti7vUBMJA+Z/T7ColXqH+wDCBU0op20w7+QsNbOTFQKECtG/V2
 k7JzGvXclNibxUekq9VVpdkuVfzroMEYuGi0VcsDFnbXtcbMgWj/UYRemb4RNBiwGRzN
 S+0Hl7bYFj17sbES4FPVS80HMTC3VquCRi1N8tlbFPwJjN7VyaOkyfHoNsTNsYrZAWg4
 m4Aw==
X-Gm-Message-State: APjAAAWdZK8TJ4EA8H3ZZYA4WValhOR7pBBIhN1irNEGjYiWpgHL5tso
 R8194EuswCjKLiRLXJX2nfBMPNeJdo/JEa1myGsshQ==
X-Google-Smtp-Source: APXvYqzDl8aZ71rEDJAzz+at+3iJ0jmbSQCM57+PHRZzFNYODa5kE1RGaoSGllClbnSt3dnYLQWCwnvx3i9/f9IgeEk=
X-Received: by 2002:a2e:9e4c:: with SMTP id g12mr22711728ljk.3.1560440650723; 
 Thu, 13 Jun 2019 08:44:10 -0700 (PDT)
MIME-Version: 1.0
References: <20190612202927.54518-1-tkjos@google.com>
 <20190613054136.GA19717@kroah.com>
In-Reply-To: <20190613054136.GA19717@kroah.com>
From: Todd Kjos <tkjos@google.com>
Date: Thu, 13 Jun 2019 08:43:59 -0700
Message-ID: <CAHRSSEwqg9dOddrPE1dUBwOqTbkR+tvzS41hQSpJD4o-f9YX4w@mail.gmail.com>
Subject: Re: [PATCH] binder: fix possible UAF when freeing buffer
To: Greg KH <gregkh@linuxfoundation.org>
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
Cc: "open list:ANDROID DRIVERS" <devel@driverdev.osuosl.org>,
 Todd Kjos <tkjos@android.com>, LKML <linux-kernel@vger.kernel.org>,
 =?UTF-8?B?QXJ2ZSBIasO4bm5ldsOlZw==?= <arve@android.com>,
 Martijn Coenen <maco@google.com>,
 "Joel Fernandes \(Google\)" <joel@joelfernandes.org>,
 Android Kernel Team <kernel-team@android.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Wed, Jun 12, 2019 at 10:41 PM Greg KH <gregkh@linuxfoundation.org> wrote:
>
> On Wed, Jun 12, 2019 at 01:29:27PM -0700, Todd Kjos wrote:
> > There is a race between the binder driver cleaning
> > up a completed transaction via binder_free_transaction()
> > and a user calling binder_ioctl(BC_FREE_BUFFER) to
> > release a buffer. It doesn't matter which is first but
> > they need to be protected against running concurrently
> > which can result in a UAF.
> >
> > Signed-off-by: Todd Kjos <tkjos@google.com>
> > ---
> >  drivers/android/binder.c | 16 ++++++++++++++--
> >  1 file changed, 14 insertions(+), 2 deletions(-)
>
> Does this also need to go to the stable kernels?

This patch won't apply cleanly to stable kernels so I'll submit a new
patch directly to stable@ (4.14, 4.19) once this one lands.

>
> thanks,
>
> greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
