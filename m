Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 85CDD36BF37
	for <lists+driverdev-devel@lfdr.de>; Tue, 27 Apr 2021 08:22:26 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0796E60AFD;
	Tue, 27 Apr 2021 06:22:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id vZs9vfAAtBXs; Tue, 27 Apr 2021 06:22:23 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 3C5D4606E1;
	Tue, 27 Apr 2021 06:22:22 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 8C6971BF31E
 for <devel@linuxdriverproject.org>; Tue, 27 Apr 2021 06:22:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 88D0583C2B
 for <devel@linuxdriverproject.org>; Tue, 27 Apr 2021 06:22:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=linuxfoundation.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id vfg3QsMh-ETs for <devel@linuxdriverproject.org>;
 Tue, 27 Apr 2021 06:22:11 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 112AD83C0D
 for <devel@linuxdriverproject.org>; Tue, 27 Apr 2021 06:22:10 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 0536A610FB;
 Tue, 27 Apr 2021 06:22:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1619504530;
 bh=gyRZOb++YF8JYaY69vWwYHNhGdItpAOrKimCZDl4mes=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=qZdLuYmn9kiKr7NHOGuUopAOCVVH3RCLBD08HrgyPV6fYI2eERpGcheCgXGOnZUJq
 B0iUJDofrajN2dY9TlIfn+BQtd7sNqOaCA5ZB0dyY1hZe/mwdy3zToPnJF6qlUwt0S
 YrFecd+c+P9tf0qvzfawuyyLxAVcUoMNG8obDn+E=
Date: Tue, 27 Apr 2021 08:22:04 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Linus Torvalds <torvalds@linux-foundation.org>
Subject: Re: [GIT PULL] Staging/IIO driver updates for 5.13-rc1
Message-ID: <YIetjCa11gzUPos7@kroah.com>
References: <YIa2ErYuJyCfSkS+@kroah.com>
 <20210427002648.22459fa7@elm.ozlabs.ibm.com>
 <YIbYI2825E4Z2b/3@kroah.com>
 <CAHk-=wgWLrNQeV20DiCnJVQpfKFkbtC+8=rAqt-wyBFMrHToEw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAHk-=wgWLrNQeV20DiCnJVQpfKFkbtC+8=rAqt-wyBFMrHToEw@mail.gmail.com>
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
 Stephen Rothwell <sfr@rothwell.id.au>, Arnd Bergmann <arnd@arndb.de>,
 linux-staging@lists.linux.dev,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Mark Brown <broonie@kernel.org>, Sudeep Holla <sudeep.holla@arm.com>,
 Olof Johansson <olof@lixom.net>, devel@linuxdriverproject.org,
 Andrew Morton <akpm@linux-foundation.org>,
 ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Mon, Apr 26, 2021 at 11:18:49AM -0700, Linus Torvalds wrote:
> On Mon, Apr 26, 2021 at 8:11 AM Greg KH <gregkh@linuxfoundation.org> wrote:
> >
> > Yeah, merge issues with other trees are hard to resolve in the single
> > tree here, not much I can just yet, have to wait for them to hit Linus's
> > tree.
> 
> It's generally a good idea to mention these things if you know about
> them, just in case the other tree had come in in the meantime and I
> had merged it first.
> 
> That didn't happen this time, and I do generally catch these things
> anyway as long as they at least trigger problems for my usual x86-64
> allmodconfig builds (but not everything does trigger that).

Sorry, will mention it next time when I know it's going to happen with
another tree like this.

Thanks for pulling,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
