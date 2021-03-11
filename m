Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 138CD336F15
	for <lists+driverdev-devel@lfdr.de>; Thu, 11 Mar 2021 10:44:46 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0B2CA83EEF;
	Thu, 11 Mar 2021 09:44:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 6XR7vY7O3Ubn; Thu, 11 Mar 2021 09:44:43 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 4E44F83A50;
	Thu, 11 Mar 2021 09:44:42 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id D83761BF395
 for <devel@linuxdriverproject.org>; Thu, 11 Mar 2021 09:44:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id C73F083A50
 for <devel@linuxdriverproject.org>; Thu, 11 Mar 2021 09:44:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id JFktprq_wUM1 for <devel@linuxdriverproject.org>;
 Thu, 11 Mar 2021 09:44:32 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 43E498341E
 for <devel@driverdev.osuosl.org>; Thu, 11 Mar 2021 09:44:31 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id DDE4164F4D;
 Thu, 11 Mar 2021 09:44:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1615455871;
 bh=SaEIjM8sp4BLwWqGdZsQ+udzNVG7cu3QRpUq15na99g=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=WkmM9L6l20aZWALR1j9F37d1oS1MH2iZnRT5Uufp9E4ugDu2LFp/7lOmJv0XlFuDO
 naPtrvYUoj4H3Rj5Y65s5Y6En5e+P+KnkKUVqiwNDkz23h5qpYs/n0Him0ZmWQonjE
 JZPDRq34COMnNuM+Od7+Ss9+1XcTm4FebnBcq35E=
Date: Thu, 11 Mar 2021 10:44:28 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Li Li <dualli@chromium.org>
Subject: Re: [PATCH v1 1/3] binder: BINDER_FREEZE ioctl
Message-ID: <YEnmfM+VmVPUIZ4W@kroah.com>
References: <20210310225251.2577580-1-dualli@chromium.org>
 <20210310225251.2577580-2-dualli@chromium.org>
 <YEnH1qd527g/neY4@kroah.com>
 <CA+xfxX4tD30BJLgwLAoiMzF7xTC-4q1i0A5Znp3tJzyi3ATLzQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CA+xfxX4tD30BJLgwLAoiMzF7xTC-4q1i0A5Znp3tJzyi3ATLzQ@mail.gmail.com>
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
Cc: devel@driverdev.osuosl.org, surenb@google.com, linux-kernel@vger.kernel.org,
 hridya@google.com, arve@android.com, Martijn Coenen <maco@google.com>,
 joel@joelfernandes.org, kernel-team@android.com, christian@brauner.io,
 Todd Kjos <tkjos@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Thu, Mar 11, 2021 at 01:36:26AM -0800, Li Li wrote:
> On Wed, Mar 10, 2021 at 11:33 PM Greg KH <gregkh@linuxfoundation.org> wrote:
> >
> > On Wed, Mar 10, 2021 at 02:52:49PM -0800, Li Li wrote:
> > >       if (target_proc) {
> > >               binder_inner_proc_lock(target_proc);
> > > +             target_proc->outstanding_txns--;
> > > +             WARN_ON(target_proc->outstanding_txns < 0);
> >
> > WARN_* is a huge crutch, please just handle stuff like this properly and
> > if you really need to, warn userspace (but what can they do about it?)
> >
> > You also just rebooted all systems that have panic-on-warn set, so if
> > this can be triggered by userspace, you caused a DoS of things :(
> >
> > So please remove all of the WARN_ON() you add in this patch series to
> > properly handle the error conditions and deal with them correctly.
> >
> > And if these were here just for debugging, hopefully the code works
> > properly now and you do not need debugging anymore so they can all just
> > be dropped.
> 
> When the target_proc is freed, there's no outstanding transactions already.
> The FREEZE ioctl from userspace won't trigger this. It's for debugging.

It's ok to test for this, to verify all is good, just do not reboot
people's machines if the test fails :)

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
