Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id BE8F5422A10
	for <lists+driverdev-devel@lfdr.de>; Tue,  5 Oct 2021 16:05:36 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 8757A40359;
	Tue,  5 Oct 2021 14:05:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id VullN8SXWba3; Tue,  5 Oct 2021 14:05:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id A869740179;
	Tue,  5 Oct 2021 14:05:31 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 5FF011BF33C
 for <devel@linuxdriverproject.org>; Tue,  5 Oct 2021 14:05:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 4DAF640179
 for <devel@linuxdriverproject.org>; Tue,  5 Oct 2021 14:05:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id c0nW3KNLe6YD for <devel@linuxdriverproject.org>;
 Tue,  5 Oct 2021 14:05:20 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 30927400EF
 for <devel@driverdev.osuosl.org>; Tue,  5 Oct 2021 14:05:20 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 1273A611C0;
 Tue,  5 Oct 2021 14:05:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1633442719;
 bh=4dCsX/rNf/kYedDGRShwnxsvQ8FZ+zSZBJSVcIJ/3O8=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=F6TnW11mlYLD0BcyGkp1owBjC5xVwmDX30sE4HvZ+c+VgyTgMpuU7PXktN2cx9B0j
 GqdeTc4CKlj+e0A0XGMBs75l+qyO1ybDMK7Tmjf0GS4AIlaoo9DneE7zg6bR1PvyTe
 jXR1A/tPJA8SByxxjPe4MCLq5IL5JtSR11uyilSs=
Date: Tue, 5 Oct 2021 16:05:17 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Paul Moore <paul@paul-moore.com>
Subject: Re: [PATCH v2] binder: use cred instead of task for selinux checks
Message-ID: <YVxbnQsquSrG6sxF@kroah.com>
References: <20211001175521.3853257-1-tkjos@google.com>
 <YVxTlBMSWBkLgSi9@kroah.com>
 <CAHC9VhTdyc6qagfFDLFteqTpayC4G=tNy1T7mueMKeZzU8QmwQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAHC9VhTdyc6qagfFDLFteqTpayC4G=tNy1T7mueMKeZzU8QmwQ@mail.gmail.com>
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
Cc: devel@driverdev.osuosl.org, linux-security-module@vger.kernel.org,
 kernel-team@android.com, tkjos@android.com, keescook@chromium.org,
 jannh@google.com, selinux@vger.kernel.org,
 Jeffrey Vander Stoep <jeffv@google.com>,
 Stephen Smalley <stephen.smalley.work@gmail.com>,
 James Morris <jmorris@namei.org>, zohar@linux.ibm.com,
 linux-kernel@vger.kernel.org, arve@android.com, stable@vger.kernel.org,
 joel@joelfernandes.org, Eric Paris <eparis@parisplace.org>, maco@android.com,
 christian@brauner.io, Todd Kjos <tkjos@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Tue, Oct 05, 2021 at 09:53:31AM -0400, Paul Moore wrote:
> On Tue, Oct 5, 2021 at 9:31 AM Greg KH <gregkh@linuxfoundation.org> wrote:
> > On Fri, Oct 01, 2021 at 10:55:21AM -0700, Todd Kjos wrote:
> > > Save the struct cred associated with a binder process
> > > at initial open to avoid potential race conditions
> > > when converting to a security ID.
> > >
> > > Since binder was integrated with selinux, it has passed
> > > 'struct task_struct' associated with the binder_proc
> > > to represent the source and target of transactions.
> > > The conversion of task to SID was then done in the hook
> > > implementations. It turns out that there are race conditions
> > > which can result in an incorrect security context being used.
> > >
> > > Fix by saving the 'struct cred' during binder_open and pass
> > > it to the selinux subsystem.
> > >
> > > Fixes: 79af73079d75 ("Add security hooks to binder and implement the
> > > hooks for SELinux.")
> > > Signed-off-by: Todd Kjos <tkjos@google.com>
> > > Cc: stable@vger.kernel.org # 5.14+ (need backport for earlier stables)
> > > ---
> > > v2: updated comments as suggested by Paul Moore
> > >
> > >  drivers/android/binder.c          | 14 +++++----
> > >  drivers/android/binder_internal.h |  4 +++
> > >  include/linux/lsm_hook_defs.h     | 14 ++++-----
> > >  include/linux/lsm_hooks.h         | 14 ++++-----
> > >  include/linux/security.h          | 28 +++++++++---------
> > >  security/security.c               | 14 ++++-----
> > >  security/selinux/hooks.c          | 48 +++++++++----------------------
> > >  7 files changed, 60 insertions(+), 76 deletions(-)
> >
> > Ideally I could get an ack from the security developers before taking
> > this in my tree...
> 
> This should probably go in via one of the security trees, e.g. SELinux
> or LSM, rather than the binder/driver tree.

Fine with me, take it away!

Acked-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
