Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 21F0754DA12
	for <lists+driverdev-devel@lfdr.de>; Thu, 16 Jun 2022 07:59:14 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 51B8440C86;
	Thu, 16 Jun 2022 05:59:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id IdJYfzrpkqvH; Thu, 16 Jun 2022 05:59:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id F0D7E40BD9;
	Thu, 16 Jun 2022 05:59:10 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 770561BF215
 for <devel@linuxdriverproject.org>; Thu, 16 Jun 2022 05:59:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 5F7226110B
 for <devel@linuxdriverproject.org>; Thu, 16 Jun 2022 05:59:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=linuxfoundation.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id XEAoWxIj4pun for <devel@linuxdriverproject.org>;
 Thu, 16 Jun 2022 05:59:06 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 2465060B89
 for <devel@driverdev.osuosl.org>; Thu, 16 Jun 2022 05:59:05 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 9880E6167F;
 Thu, 16 Jun 2022 05:59:04 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 94654C34114;
 Thu, 16 Jun 2022 05:59:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1655359144;
 bh=b4A4VNl/LgWLcUdooFZJNKQj5iG2ufoQCYarK6CXRxw=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=OSYb4mpA3ySlb9kAHuiJveswpF1U4e2Cp0NN/B0HqDN/COwm7gz/Yw2n+79mFpek1
 fqkR6Mi++WnL2+lurNAljNz+xB+YVDrTAucvxDaVXcqi3Eqy92+7TkR4Fq5+yzFh68
 uH2dIFEnsuwG1ue9LyJA8KavhsJ9KkQTimcCGl+A=
Date: Thu, 16 Jun 2022 07:58:58 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Li Li <dualli@chromium.org>
Subject: Re: [RESEND PATCH v3 0/1] Binder: add TF_UPDATE_TXN to replace
 outdated txn
Message-ID: <YqrGopRiQOsezMPY@kroah.com>
References: <20220526220018.3334775-1-dualli@chromium.org>
 <YpBmmVa+09ZhP9LH@kroah.com>
 <CANBPYPg_cpaTCcJ=5b3j3L3KHg=D7Xnj14wkHq5YMznu=3en8g@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CANBPYPg_cpaTCcJ=5b3j3L3KHg=D7Xnj14wkHq5YMznu=3en8g@mail.gmail.com>
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
Cc: Li Li <dualli@google.com>,
 "open list:ANDROID DRIVERS" <devel@driverdev.osuosl.org>,
 Android Kernel Team <kernel-team@android.com>,
 LKML <linux-kernel@vger.kernel.org>,
 "Joel Fernandes \(Google\)" <joel@joelfernandes.org>,
 Arve =?iso-8859-1?B?SGr4bm5lduVn?= <arve@android.com>,
 Martijn Coenen <maco@google.com>, Hridya Valsaraju <hridya@google.com>,
 Suren Baghdasaryan <surenb@google.com>,
 Christian Brauner <christian@brauner.io>, Todd Kjos <tkjos@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Wed, Jun 15, 2022 at 11:05:23AM -0700, Li Li wrote:
> On Thu, May 26, 2022 at 10:50 PM Greg KH <gregkh@linuxfoundation.org> wrote:
> >
> > On Thu, May 26, 2022 at 03:00:17PM -0700, Li Li wrote:
> > > From: Li Li <dualli@google.com>
> > >
> > > Resend [Patch v3] with cover letter in case my previous email failed
> > > to reach the maillist (no comments for 2 weeks).
> > >
> > > The previous comments of the old patch can be found at the following link:
> > > https://lore.kernel.org/lkml/CANBPYPjkNWsO94nuG1TkR1DgK2W2kBxiJTriyVB7S3czHTZ1Yg@mail.gmail.com/
> > >
> > > I copy and paste the key information here for your convenience.
> > >
> > > * Question #1
> > >
> > > Note, your subject does not say what TF_UPDATE_TXN is, so it's a bit
> > > hard to determine what is happening here.  Can you clean that up a bit
> > > and sumarize what this new addition does?
> > > How was this tested?
> > >
> > > * Answer #1 ===
> > >
> > > A more descriptive summary has been added to the new version of patch.
> > >
> > > *  Question #2
> > >
> > > How was this tested?
> > >
> > > * Answer #2
> > >
> > > Old kernel: without this TF_UPDATE_TXN patch
> > > New kernel: with this TF_UPDATE_TXN patch
> > > Old apps: without setting TF_UPDATE_TXN
> > > New apps: if (flags & TF_ONE_WAY) flags |= TF_UPDATE_TXN;
> > >
> > > 1. Compatibility: New kernel + Old apps, to verify the original
> > > behavior doesn't change;
> > >
> > > 2. Compatibility: Old kernel + New apps, to verify the original
> > > behavior doesn't change;
> > >
> > > 3. Unit test: New kernel + New apps, to verify the outdated oneway
> > > binder transaction is actually superseded by the latest one (by
> > > enabling BINDER_DEBUG logs);
> > >
> > > 4. Stress test: New kernel + New apps sending oneway binder
> > > transactions repeatedly, to verify the size of the available async
> > > binder buffer over time, and if the transactions fail as before
> > > (due to async buffer running out).
> > >
> > > * Question #3
> > >
> > > Did checkpatch pass this?  Please always use --strict and fix up all the
> > > issues that it reports as this is not a normal kernel coding style.
> > >
> > > * Answer #3
> > >
> > > Yes, the latest version has passed "./scripts/checkpatch.pl --strict"
> > >
> > > * Changelog
> > >
> > > v3:
> > >   - Add this changelog required by "The canonical patch format"
> > > v2:
> > >   - Fix alignment warnings reported by checkpatch --strict
> > >   - Add descriptive summary in patch subject
> > >
> > > Li Li (1):
> > >   Binder: add TF_UPDATE_TXN to replace outdated txn
> > >
> > >  drivers/android/binder.c            | 85 ++++++++++++++++++++++++++++-
> > >  drivers/android/binder_trace.h      |  4 ++
> > >  include/uapi/linux/android/binder.h |  1 +
> > >  3 files changed, 87 insertions(+), 3 deletions(-)
> > >
> > > --
> > > 2.36.1.124.g0e6072fb45-goog
> > >
> > > _______________________________________________
> > > devel mailing list
> > > devel@linuxdriverproject.org
> > > http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
> >
> >
> > Hi,
> >
> > This is the friendly semi-automated patch-bot of Greg Kroah-Hartman.
> > You have sent him a patch that has triggered this response.
> >
> > Right now, the development tree you have sent a patch for is "closed"
> > due to the timing of the merge window.  Don't worry, the patch(es) you
> > have sent are not lost, and will be looked at after the merge window is
> > over (after the -rc1 kernel is released by Linus).
> >
> > So thank you for your patience and your patches will be reviewed at this
> > later time, you do not have to do anything further, this is just a short
> > note to let you know the patch status and so you don't worry they didn't
> > make it through.
> 
> Hi Greg and all reviewers,
> 
> The rc-1 has been released for some days. Do I need to resend the patch
> v3 [1] again to the maillist? Please let me know what I should do next to
> have it reviewed. Thanks!

If it still applies, no need to resend.

I'm waiting for the other binder maintainers to review it before doing
anything with it.

thanks

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
