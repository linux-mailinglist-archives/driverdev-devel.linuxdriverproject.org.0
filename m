Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id CCCAD28F760
	for <lists+driverdev-devel@lfdr.de>; Thu, 15 Oct 2020 19:00:56 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 1F4AB8880D;
	Thu, 15 Oct 2020 17:00:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 1kv9NY80g-tj; Thu, 15 Oct 2020 17:00:54 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 37BF9887EC;
	Thu, 15 Oct 2020 17:00:54 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id A7EE21BF405
 for <devel@linuxdriverproject.org>; Thu, 15 Oct 2020 17:00:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id A4AD5887F4
 for <devel@linuxdriverproject.org>; Thu, 15 Oct 2020 17:00:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id fFX-J8i-SOYE for <devel@linuxdriverproject.org>;
 Thu, 15 Oct 2020 17:00:52 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 068DD887EC
 for <devel@linuxdriverproject.org>; Thu, 15 Oct 2020 17:00:51 +0000 (UTC)
Received: from localhost (83-86-74-64.cable.dynamic.v4.ziggo.nl [83.86.74.64])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id F4047206CA;
 Thu, 15 Oct 2020 17:00:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1602781251;
 bh=DM6q/p4qmHRCt+hKln8abCi1RFmqHpOO4oDZOapg6+Q=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=x+pWe4gfphCS1xKW8ELKqn83lTh5ZcRI+8Y+vhuODH2LP7BFIpAP6hx84DX8M2RMd
 C7JykakjiwC/1DUZzBVmz/3V1p1RF4a88W14DsN6Oy+Xp2Vhai/HBLKW/XdHxQH7jq
 z4PwV9/k06L04stmXifYakkfIyWFVWz0zKtfljLg=
Date: Thu, 15 Oct 2020 19:01:23 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Linus Torvalds <torvalds@linux-foundation.org>
Subject: Re: [GIT PULL] Staging/IIO driver update for 5.10-rc1
Message-ID: <20201015170123.GA81179@kroah.com>
References: <20201015122713.GA4021230@kroah.com>
 <CAHk-=wiwi70PmzxNeNUBiGTgQMDnRhHToTkQrhL7GQKdJyUQAw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAHk-=wiwi70PmzxNeNUBiGTgQMDnRhHToTkQrhL7GQKdJyUQAw@mail.gmail.com>
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
Cc: Stephen Rothwell <sfr@canb.auug.org.au>,
 Andrew Morton <akpm@linux-foundation.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 devel@linuxdriverproject.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Thu, Oct 15, 2020 at 09:49:56AM -0700, Linus Torvalds wrote:
> On Thu, Oct 15, 2020 at 5:26 AM Greg KH <gregkh@linuxfoundation.org> wrote:
> >
> > Included in here are:
> >         - new IIO drivers
> [...]
> >         - no new drivers added or removed
> 
> So which one is it?
> 
> New drivers, or no new drivers, that is the question: Whether 'tis
> nobler in the mind to suffer..
> 
> I do understand what I think you meant (no _staging_ drivers added or
> removed), but it really reads very oddly.

Yes, you are right, I meant "no new staging drivers" were added or
removed.  I forgot what I wrote above by the time I got to the bottom :)

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
