Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A2924299E8
	for <lists+driverdev-devel@lfdr.de>; Tue, 12 Oct 2021 01:40:14 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id DC1CD608D6;
	Mon, 11 Oct 2021 23:40:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id djkKD88RGMh0; Mon, 11 Oct 2021 23:40:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id D6EDA608B3;
	Mon, 11 Oct 2021 23:40:09 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 68FD61BF841
 for <devel@linuxdriverproject.org>; Mon, 11 Oct 2021 23:40:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 5858C608A8
 for <devel@linuxdriverproject.org>; Mon, 11 Oct 2021 23:40:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id JUnNjmAP1Iiz for <devel@linuxdriverproject.org>;
 Mon, 11 Oct 2021 23:39:59 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-lf1-x12f.google.com (mail-lf1-x12f.google.com
 [IPv6:2a00:1450:4864:20::12f])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 582256088E
 for <devel@driverdev.osuosl.org>; Mon, 11 Oct 2021 23:39:59 +0000 (UTC)
Received: by mail-lf1-x12f.google.com with SMTP id u18so79750950lfd.12
 for <devel@driverdev.osuosl.org>; Mon, 11 Oct 2021 16:39:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=350Zyde5NHUyrWXKjoBMtH0Ka1p1k23ESLRD0Ny2AAk=;
 b=OzYbyPMYnoypTGzHb6++gJhPpX/aMvA8HTl2F/X1uqm83TU6mdlOMtYyLrm+yLnLuu
 1cdGNfZ39RhG9F9acYYLPUDo8JmnDkON0vpK1JGRF+enSzeuZj0Jw7O64QIMXa+H0ysR
 0vu5TZjN5yxhkJ+RSZKGr0qo7GVuyANYSeoum4yaz1LgfHsAmZWqFN2AJw7809ScHXjv
 DCc+KXKcaWFUHKOMH7bSAOve1qpc6GTzZfnIYGSDNp6oUVMJYa4X+BzfKMfKdaUV0EDc
 l85wZP7XwJzndPJzrXSHc/aoT9EGegSsQvoYHWFlbemlfX3+gbEqA/WiXVyHC9a+HLZz
 So5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=350Zyde5NHUyrWXKjoBMtH0Ka1p1k23ESLRD0Ny2AAk=;
 b=ruJ7cr8ApJLEyBR/GDO5jNJJMKrv84e7vzmU1Rd1acConQvE3Tqzi6WyYiMppN6HCW
 9xThwacuEclP/vopA5grWwcr3nSfY+3eFURgT+R0o2Wp/QwrvLvXjvxrwmdaD8rP19hQ
 dNNvr9iZMmljl05NBh+5jCuv3vnnDUem7EAaDs3LeJ5XtzlgybNDBB0mhfr5yOYfccI+
 JsgqOpjkWTH4+4IfFbZn1nmkMBs8NcDBTsF3sPBkFl3jSDGrr07kFnPD4eBv9Lgfh+Wz
 I77Uw4qoTBJofR5uhqIPp9dTAfJGNc7qeT2DMnOJh6Q05wBb7QLoDhHGCsOcSZYWaHod
 vbyQ==
X-Gm-Message-State: AOAM530a7X20/KqtF+3e8VDKDhtJTDjXHQsp/UUcWSJBpN9XzTcDZ4Oh
 AcCDWGCc0XN9oWcbA0nNjdp/+0V7azO2yZ5HtIJE/Q==
X-Google-Smtp-Source: ABdhPJwRxHo++mt2ts2tuHKj97PgUfltXjxEpnNt1psrUBoyI5y1QyTnG4FDY6wOkqBZq8c4R9LztUvqCmZoPJ7PiEE=
X-Received: by 2002:a05:6512:1291:: with SMTP id
 u17mr29841307lfs.226.1633995596978; 
 Mon, 11 Oct 2021 16:39:56 -0700 (PDT)
MIME-Version: 1.0
References: <20211007004629.1113572-1-tkjos@google.com>
 <20211007004629.1113572-4-tkjos@google.com>
 <CAHC9VhTRTcZW9eyXXvAN7T=ZCQ_zwH5iBz+d0h2ntf7=XHE-Vw@mail.gmail.com>
 <CAHRSSEy=eC0rbHUzDmCo6Na7Ya=uCq7zJ6_cXysi0oWQB=19YQ@mail.gmail.com>
 <CAHC9VhQVKTxwUUP02U43=zVZrEFWc0hhmpaR1YSxe+KHjhnhbw@mail.gmail.com>
In-Reply-To: <CAHC9VhQVKTxwUUP02U43=zVZrEFWc0hhmpaR1YSxe+KHjhnhbw@mail.gmail.com>
From: Todd Kjos <tkjos@google.com>
Date: Mon, 11 Oct 2021 16:39:45 -0700
Message-ID: <CAHRSSEwYrqFum7gS0XOYG0p3F+0Hv8qvaZbWLUyXUm0oCWpX9w@mail.gmail.com>
Subject: Re: [PATCH v4 3/3] binder: use euid from cred instead of using task
To: Paul Moore <paul@paul-moore.com>
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
 jannh@google.com, selinux@vger.kernel.org, gregkh@linuxfoundation.org,
 Stephen Smalley <stephen.smalley.work@gmail.com>,
 James Morris <jmorris@namei.org>, zohar@linux.ibm.com,
 linux-kernel@vger.kernel.org, joel@joelfernandes.org, arve@android.com,
 stable@vger.kernel.org, Jeffrey Vander Stoep <jeffv@google.com>,
 casey@schaufler-ca.com, Eric Paris <eparis@parisplace.org>, maco@android.com,
 christian@brauner.io
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Mon, Oct 11, 2021 at 2:39 PM Paul Moore <paul@paul-moore.com> wrote:
>
> On Fri, Oct 8, 2021 at 5:24 PM Todd Kjos <tkjos@google.com> wrote:
> >
> > On Fri, Oct 8, 2021 at 2:12 PM Paul Moore <paul@paul-moore.com> wrote:
> > >
> > > On Wed, Oct 6, 2021 at 8:46 PM Todd Kjos <tkjos@google.com> wrote:
> > > >
> > > > Set a transaction's sender_euid from the 'struct cred'
> > > > saved at binder_open() instead of looking up the euid
> > > > from the binder proc's 'struct task'. This ensures
> > > > the euid is associated with the security context that
> > > > of the task that opened binder.
> > > >
> > > > Fixes: 457b9a6f09f0 ("Staging: android: add binder driver")
> > > > Signed-off-by: Todd Kjos <tkjos@google.com>
> > > > Suggested-by: Stephen Smalley <stephen.smalley.work@gmail.com>
> > > > Cc: stable@vger.kernel.org # 4.4+
> > > > ---
> > > > v3: added this patch to series
> > > >
> > > >  drivers/android/binder.c | 2 +-
> > > >  1 file changed, 1 insertion(+), 1 deletion(-)
> > >
> > > This is an interesting ordering of the patches.  Unless I'm missing
> > > something I would have expected patch 3/3 to come first, followed by
> > > 2/3, with patch 1/3 at the end; basically the reverse of what was
> > > posted here.
> >
> > 2/3 and 3/3 both depend on 1/3 (add "cred" member of struct
> > binder_proc). I kept that in 1/3 to keep that patch the same as what
> > had already been reviewed. I didn't think much about the ordering
> > between 2/3 and 3/3 -- but I agree that it would have been sensible to
> > reverse their order.
> >
> > >
> > > My reading of the previous thread was that Casey has made his peace
> > > with these changes so unless anyone has any objections I'll plan on
> > > merging 2/3 and 3/3 into selinux/stable-5.15 and merging 1/3 into
> > > selinux/next.
> >
> > Thanks Paul. I'm not familiar with the branch structure, but you need
> > 1/3 in selinux/stable-5.15 to resolve the dependency on proc->cred.
>
> Yep, thanks.  My eyes kinda skipped over that part when looking at the
> patchset but that would have fallen out as soon as I merged them.
>
> Unfortunately that pretty much defeats the purpose of splitting this
> into three patches.  While I suppose one could backport patches 2/3
> and 3/3 individually, both of them have a very small footprint
> especially considering their patch 1/3 dependency.  At the very least
> it looks like patch 2/3 needs to be respun to address the
> !CONFIG_SECURITY case and seeing the split patches now I think the
> smart thing is to just combine them into a single patch.  I apologize
> for the bad recommendation earlier, I should have followed that thread
> a bit closer after the discussion with Casey and Stephen.

I'm happy to submit a single patch for all of this. Another part of
the rationale
for splitting it into 3 patches was correctly identify the patch that introduced
the patch that introduced the issue -- so each of the 3 had a different
"Fixes:" tag. Should I cite the oldest (binder introduction) with the "Fixes"
tag and perhaps mention the other two in the commit message?

-Todd

>
> --
> paul moore
> www.paul-moore.com
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
