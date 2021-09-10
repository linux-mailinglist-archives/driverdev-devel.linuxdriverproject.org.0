Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 83AE040678D
	for <lists+driverdev-devel@lfdr.de>; Fri, 10 Sep 2021 09:15:41 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 8EB66401D4;
	Fri, 10 Sep 2021 07:15:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id cLNr9JxoMjt3; Fri, 10 Sep 2021 07:15:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 4A82B40179;
	Fri, 10 Sep 2021 07:15:37 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id A72851BF2F5
 for <devel@linuxdriverproject.org>; Fri, 10 Sep 2021 07:15:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id A297640179
 for <devel@linuxdriverproject.org>; Fri, 10 Sep 2021 07:15:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id aqe1KDnCJuk8 for <devel@linuxdriverproject.org>;
 Fri, 10 Sep 2021 07:15:25 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 86DC24011C
 for <devel@driverdev.osuosl.org>; Fri, 10 Sep 2021 07:15:25 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 91624611BD;
 Fri, 10 Sep 2021 07:15:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1631258125;
 bh=4L0BAh+DvGxazIMEC9AKtHADz64tMS4ZKALwhM1qvwE=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=q4h89+wzGw1TquKhEONUO+vjD9M/ubpOmYuU6807islJsX/RVc/TtaDrcxaFQP4le
 2GjeGCwb7uHbX1+33HEk3f9V4vfEcgB3qugUdTY92Fo75ou1NObbV+aLYzxDrMPVX7
 /WRI4NRo9tyESIgYOACbzJSmeZXYriK8jx0NpGKA=
Date: Fri, 10 Sep 2021 09:15:00 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Li Li <dualli@chromium.org>
Subject: Re: [PATCH v2 1/1] binder: fix freeze race
Message-ID: <YTsF9OC4QEMl2wp7@kroah.com>
References: <20210910035316.2873554-1-dualli@chromium.org>
 <20210910035316.2873554-2-dualli@chromium.org>
 <YTrvMSm2oB91IhuK@kroah.com>
 <CANBPYPgEbFusdyrcV1EqridahQGTH7X=s8ufUA9SMR8SefAO2g@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CANBPYPgEbFusdyrcV1EqridahQGTH7X=s8ufUA9SMR8SefAO2g@mail.gmail.com>
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
 Suren Baghdasaryan <surenb@google.com>, LKML <linux-kernel@vger.kernel.org>,
 Hridya Valsaraju <hridya@google.com>,
 Arve =?iso-8859-1?B?SGr4bm5lduVn?= <arve@android.com>,
 Martijn Coenen <maco@google.com>,
 "Joel Fernandes \(Google\)" <joel@joelfernandes.org>,
 Android Kernel Team <kernel-team@android.com>,
 Christian Brauner <christian@brauner.io>, Todd Kjos <tkjos@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Thu, Sep 09, 2021 at 11:17:42PM -0700, Li Li wrote:
> On Thu, Sep 9, 2021 at 10:38 PM Greg KH <gregkh@linuxfoundation.org> wrote:
> >
> > On Thu, Sep 09, 2021 at 08:53:16PM -0700, Li Li wrote:
> > >  struct binder_frozen_status_info {
> > >       __u32            pid;
> > > +
> > > +     /* process received sync transactions since last frozen
> > > +      * bit 0: received sync transaction after being frozen
> > > +      * bit 1: new pending sync transaction during freezing
> > > +      */
> > >       __u32            sync_recv;
> >
> > You just changed a user/kernel api here, did you just break existing
> > userspace applications?  If not, how did that not happen?
> >
> 
> That's a good question. This design does keep backward compatibility.
> 
> The existing userspace applications call ioctl(BINDER_GET_FROZEN_INFO)
> to check if there's sync or async binder transactions sent to a frozen
> process.
> 
> If the existing userspace app runs on a new kernel, a sync binder call
> still sets bit 1 of sync_recv (as it's a bool variable) so the ioctl
> will return the expected value (TRUE). The app just doesn't check bit
> 1 intentionally so it doesn't have the ability to tell if there's a
> race - this behavior is aligned with what happens on an old kernel as
> the old kernel doesn't have bit 1 set at all.
> 
> The bit 1 of sync_recv enables new userspace app the ability to tell
> 1) there's a sync binder transaction happened when being frozen - same
> as before; and 2) if that sync binder transaction happens exactly when
> there's a race - a new information for rollback decision.

Ah, can you add that to the changelog text to make it more obvious?

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
