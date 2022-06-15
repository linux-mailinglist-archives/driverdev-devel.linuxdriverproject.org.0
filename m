Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id ED0BA54D09E
	for <lists+driverdev-devel@lfdr.de>; Wed, 15 Jun 2022 20:05:45 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 86D1C4086A;
	Wed, 15 Jun 2022 18:05:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Ac8r1TFpKpXf; Wed, 15 Jun 2022 18:05:39 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id BBD0840891;
	Wed, 15 Jun 2022 18:05:38 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id D136A1BF4D8
 for <devel@linuxdriverproject.org>; Wed, 15 Jun 2022 18:05:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id BFFA781947
 for <devel@linuxdriverproject.org>; Wed, 15 Jun 2022 18:05:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=chromium.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id BD56nwpmCKsd for <devel@linuxdriverproject.org>;
 Wed, 15 Jun 2022 18:05:35 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-yb1-xb2f.google.com (mail-yb1-xb2f.google.com
 [IPv6:2607:f8b0:4864:20::b2f])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 722128149D
 for <devel@driverdev.osuosl.org>; Wed, 15 Jun 2022 18:05:35 +0000 (UTC)
Received: by mail-yb1-xb2f.google.com with SMTP id k2so21890039ybj.3
 for <devel@driverdev.osuosl.org>; Wed, 15 Jun 2022 11:05:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
 bh=wCIq2pEscSFloWLAAVKf+NRJrk/xfcyCBv54BmH8NfA=;
 b=Wz2Kt29jm2EOKKJp4dD6OTULRmnhk2QqQQs7YauX7UC/YXFBpYNyYtxMFyz7YUk/hi
 FwIJHabc3XXyJJdaxlc2z8iTsrHVfbrmx5Zao/gl3TghFf7XWmWo9ggUXpLtdxW95DyF
 4L5XU+9zUFLmw6VZajzaOJCIRyfnTpf4Huny0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to;
 bh=wCIq2pEscSFloWLAAVKf+NRJrk/xfcyCBv54BmH8NfA=;
 b=NZs59OokxOaIKA1w7t1g0VHUDP9vnsTAqQQolO7sYRrMQQKqtm4cUJcHvbPdBQMoHq
 IqDsLedIIgHlSUSCzlG3YMlvJFYQz6SaeNRQrPPOdzqa4u+JFvkaXRxhm42aOcUz40bM
 wtPOInDH3JoeDTeR/VncNxKB6TBTKatIxb4YFYFSjSq0IhNBiOFteaqENhUyaU+4fVqW
 PjK/8p9BDp8REdKIyslnondA9ApgmGV37UnnDlwczoEn0RkqtAtCaELhBCO52dklMbx7
 tKOha/TWA1xHq9OziWFEVxoCrcnj4p5LEqVEdc9zN8GZRD95Mdt5RdLw6PzfBkdTwPSX
 LRUQ==
X-Gm-Message-State: AJIora+40upjaH2EUSv5usVThrCOg3xw0GBRJ4q70NoeMOh0Gl5m8R3G
 9ODJO1xTccR2ObqKYsvQikF1nu86XNz/wYA0nIzHMQ==
X-Google-Smtp-Source: AGRyM1saVtovw0G7v6o+EaC89C36m3EEfWY4LF5dLaYUH6oWqmG5EBMjeM2Y2lf1+zFMHrmCzc2gi1APoEqil9rfOlo=
X-Received: by 2002:a25:906:0:b0:65c:b361:80fd with SMTP id
 6-20020a250906000000b0065cb36180fdmr1117997ybj.197.1655316334384; Wed, 15 Jun
 2022 11:05:34 -0700 (PDT)
MIME-Version: 1.0
References: <20220526220018.3334775-1-dualli@chromium.org>
 <YpBmmVa+09ZhP9LH@kroah.com>
In-Reply-To: <YpBmmVa+09ZhP9LH@kroah.com>
From: Li Li <dualli@chromium.org>
Date: Wed, 15 Jun 2022 11:05:23 -0700
Message-ID: <CANBPYPg_cpaTCcJ=5b3j3L3KHg=D7Xnj14wkHq5YMznu=3en8g@mail.gmail.com>
Subject: Re: [RESEND PATCH v3 0/1] Binder: add TF_UPDATE_TXN to replace
 outdated txn
To: Greg KH <gregkh@linuxfoundation.org>, Li Li <dualli@google.com>, 
 Todd Kjos <tkjos@google.com>, Christian Brauner <christian@brauner.io>, 
 =?UTF-8?B?QXJ2ZSBIasO4bm5ldsOlZw==?= <arve@android.com>, 
 "open list:ANDROID DRIVERS" <devel@driverdev.osuosl.org>,
 LKML <linux-kernel@vger.kernel.org>, 
 Martijn Coenen <maco@google.com>, Hridya Valsaraju <hridya@google.com>, 
 Suren Baghdasaryan <surenb@google.com>,
 "Joel Fernandes (Google)" <joel@joelfernandes.org>, 
 Android Kernel Team <kernel-team@android.com>
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Thu, May 26, 2022 at 10:50 PM Greg KH <gregkh@linuxfoundation.org> wrote:
>
> On Thu, May 26, 2022 at 03:00:17PM -0700, Li Li wrote:
> > From: Li Li <dualli@google.com>
> >
> > Resend [Patch v3] with cover letter in case my previous email failed
> > to reach the maillist (no comments for 2 weeks).
> >
> > The previous comments of the old patch can be found at the following link:
> > https://lore.kernel.org/lkml/CANBPYPjkNWsO94nuG1TkR1DgK2W2kBxiJTriyVB7S3czHTZ1Yg@mail.gmail.com/
> >
> > I copy and paste the key information here for your convenience.
> >
> > * Question #1
> >
> > Note, your subject does not say what TF_UPDATE_TXN is, so it's a bit
> > hard to determine what is happening here.  Can you clean that up a bit
> > and sumarize what this new addition does?
> > How was this tested?
> >
> > * Answer #1 ===
> >
> > A more descriptive summary has been added to the new version of patch.
> >
> > *  Question #2
> >
> > How was this tested?
> >
> > * Answer #2
> >
> > Old kernel: without this TF_UPDATE_TXN patch
> > New kernel: with this TF_UPDATE_TXN patch
> > Old apps: without setting TF_UPDATE_TXN
> > New apps: if (flags & TF_ONE_WAY) flags |= TF_UPDATE_TXN;
> >
> > 1. Compatibility: New kernel + Old apps, to verify the original
> > behavior doesn't change;
> >
> > 2. Compatibility: Old kernel + New apps, to verify the original
> > behavior doesn't change;
> >
> > 3. Unit test: New kernel + New apps, to verify the outdated oneway
> > binder transaction is actually superseded by the latest one (by
> > enabling BINDER_DEBUG logs);
> >
> > 4. Stress test: New kernel + New apps sending oneway binder
> > transactions repeatedly, to verify the size of the available async
> > binder buffer over time, and if the transactions fail as before
> > (due to async buffer running out).
> >
> > * Question #3
> >
> > Did checkpatch pass this?  Please always use --strict and fix up all the
> > issues that it reports as this is not a normal kernel coding style.
> >
> > * Answer #3
> >
> > Yes, the latest version has passed "./scripts/checkpatch.pl --strict"
> >
> > * Changelog
> >
> > v3:
> >   - Add this changelog required by "The canonical patch format"
> > v2:
> >   - Fix alignment warnings reported by checkpatch --strict
> >   - Add descriptive summary in patch subject
> >
> > Li Li (1):
> >   Binder: add TF_UPDATE_TXN to replace outdated txn
> >
> >  drivers/android/binder.c            | 85 ++++++++++++++++++++++++++++-
> >  drivers/android/binder_trace.h      |  4 ++
> >  include/uapi/linux/android/binder.h |  1 +
> >  3 files changed, 87 insertions(+), 3 deletions(-)
> >
> > --
> > 2.36.1.124.g0e6072fb45-goog
> >
> > _______________________________________________
> > devel mailing list
> > devel@linuxdriverproject.org
> > http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
>
>
> Hi,
>
> This is the friendly semi-automated patch-bot of Greg Kroah-Hartman.
> You have sent him a patch that has triggered this response.
>
> Right now, the development tree you have sent a patch for is "closed"
> due to the timing of the merge window.  Don't worry, the patch(es) you
> have sent are not lost, and will be looked at after the merge window is
> over (after the -rc1 kernel is released by Linus).
>
> So thank you for your patience and your patches will be reviewed at this
> later time, you do not have to do anything further, this is just a short
> note to let you know the patch status and so you don't worry they didn't
> make it through.

Hi Greg and all reviewers,

The rc-1 has been released for some days. Do I need to resend the patch
v3 [1] again to the maillist? Please let me know what I should do next to
have it reviewed. Thanks!

[1]:
[RESEND PATCH v3 0/1] Binder: add TF_UPDATE_TXN to replace outdated txn
https://lore.kernel.org/lkml/20220526220018.3334775-1-dualli@chromium.org/

>
> thanks,
>
> greg k-h's patch email bot
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
