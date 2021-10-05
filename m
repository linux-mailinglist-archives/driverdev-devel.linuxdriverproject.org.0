Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 48E2C4229C5
	for <lists+driverdev-devel@lfdr.de>; Tue,  5 Oct 2021 15:59:56 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id AFACE83896;
	Tue,  5 Oct 2021 13:59:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id RcspwVYL6J0b; Tue,  5 Oct 2021 13:59:54 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 25DD2838C9;
	Tue,  5 Oct 2021 13:59:53 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 06B5A1BF2A5
 for <devel@linuxdriverproject.org>; Tue,  5 Oct 2021 13:55:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id EA3A540652
 for <devel@linuxdriverproject.org>; Tue,  5 Oct 2021 13:55:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key)
 header.d=paul-moore-com.20210112.gappssmtp.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 3NeC1re7D11b for <devel@linuxdriverproject.org>;
 Tue,  5 Oct 2021 13:55:44 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ed1-x533.google.com (mail-ed1-x533.google.com
 [IPv6:2a00:1450:4864:20::533])
 by smtp4.osuosl.org (Postfix) with ESMTPS id B1DB5406D0
 for <devel@driverdev.osuosl.org>; Tue,  5 Oct 2021 13:55:43 +0000 (UTC)
Received: by mail-ed1-x533.google.com with SMTP id b8so44363797edk.2
 for <devel@driverdev.osuosl.org>; Tue, 05 Oct 2021 06:55:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=paul-moore-com.20210112.gappssmtp.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=4nQrZDe3L3lnevNgwmmPUj83yrkESGDrc+fmpfAhQFg=;
 b=5Z80PapGlg+CLKzYJ7C4/tcqEsBWzVrpWomx8ZPjQx33tVA89XTnNsMfMpNoGlEPFc
 Tv1ftiRthctlN0/AZ82d5WxOFvBqrAY1aPi2cvDs3OkwqfExUj04CDMxdO3i2i0tTXMg
 i/5P1V6lcfEq1kvXAW819vWS8f7ST75/6BhpJPvGexNA7o9J7+fmvAJr/fJqOTc962jV
 8FwKZTL5ttRXRnxqo4NBUjDHvTzE0QCoWcW1JgcBfKQ3xXwn/YNE7SulwFuZI7m5Q7FW
 La6Vqpkut1o7RbUic5xqYwBizsyJLbJvOV/nzyfmDVhGK3od5SwWE6OM045ZsIVosw8y
 yy7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=4nQrZDe3L3lnevNgwmmPUj83yrkESGDrc+fmpfAhQFg=;
 b=rTvCb++9GdxjnkntpF8P68HgEC2E1XLIuQYxp5ppx5z8LlmTVz5TYLM6VfiOnBm/Ya
 XGDuqht6uswx1rgDznp+66i7siR3HgqCScP+T18lpLZF1tQVuDzfwMtNTeRKZmcxMqn7
 8QCvArTaB1xcUwXvIOdR2KxAdWmUer4ocr5tyAlX5tUCk6YaSVxIIRyM7x+77snG0mva
 QJpNytV3yzfSPM+VvX9QE8Bv5rLEeOlO+igFPQsYJ7HVHnxtEmGHbCNmf+AP0bo9V8mZ
 2M2nDuVQDlRdM8sODqSpvRloDX/h5lr4Rk/C+lQmom+WCpSoleKcW2LyZYKd4HWGondV
 SlOQ==
X-Gm-Message-State: AOAM530jPvec+RhXQovsmZEN3Sd4sl4Aa8yfA/KQKHFO17rknib9to61
 69ikw0rEV4DJQ91iWXw+pYN3RhGaRZz9e7p3TL/5
X-Google-Smtp-Source: ABdhPJxXFaPdoVeXTHWJ4N9Z9y35WGVg9/WQkoOpNDkwryi/oobLzFCbBmPQZs0ePNLDIgCowz+yAsCdg+1+ItUorQQ=
X-Received: by 2002:a17:907:629b:: with SMTP id
 nd27mr25354271ejc.24.1633442022740; 
 Tue, 05 Oct 2021 06:53:42 -0700 (PDT)
MIME-Version: 1.0
References: <20211001175521.3853257-1-tkjos@google.com>
 <YVxTlBMSWBkLgSi9@kroah.com>
In-Reply-To: <YVxTlBMSWBkLgSi9@kroah.com>
From: Paul Moore <paul@paul-moore.com>
Date: Tue, 5 Oct 2021 09:53:31 -0400
Message-ID: <CAHC9VhTdyc6qagfFDLFteqTpayC4G=tNy1T7mueMKeZzU8QmwQ@mail.gmail.com>
Subject: Re: [PATCH v2] binder: use cred instead of task for selinux checks
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

On Tue, Oct 5, 2021 at 9:31 AM Greg KH <gregkh@linuxfoundation.org> wrote:
> On Fri, Oct 01, 2021 at 10:55:21AM -0700, Todd Kjos wrote:
> > Save the struct cred associated with a binder process
> > at initial open to avoid potential race conditions
> > when converting to a security ID.
> >
> > Since binder was integrated with selinux, it has passed
> > 'struct task_struct' associated with the binder_proc
> > to represent the source and target of transactions.
> > The conversion of task to SID was then done in the hook
> > implementations. It turns out that there are race conditions
> > which can result in an incorrect security context being used.
> >
> > Fix by saving the 'struct cred' during binder_open and pass
> > it to the selinux subsystem.
> >
> > Fixes: 79af73079d75 ("Add security hooks to binder and implement the
> > hooks for SELinux.")
> > Signed-off-by: Todd Kjos <tkjos@google.com>
> > Cc: stable@vger.kernel.org # 5.14+ (need backport for earlier stables)
> > ---
> > v2: updated comments as suggested by Paul Moore
> >
> >  drivers/android/binder.c          | 14 +++++----
> >  drivers/android/binder_internal.h |  4 +++
> >  include/linux/lsm_hook_defs.h     | 14 ++++-----
> >  include/linux/lsm_hooks.h         | 14 ++++-----
> >  include/linux/security.h          | 28 +++++++++---------
> >  security/security.c               | 14 ++++-----
> >  security/selinux/hooks.c          | 48 +++++++++----------------------
> >  7 files changed, 60 insertions(+), 76 deletions(-)
>
> Ideally I could get an ack from the security developers before taking
> this in my tree...

This should probably go in via one of the security trees, e.g. SELinux
or LSM, rather than the binder/driver tree.

-- 
paul moore
www.paul-moore.com
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
