Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id F31FF42AA0B
	for <lists+driverdev-devel@lfdr.de>; Tue, 12 Oct 2021 18:52:54 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 04CE940717;
	Tue, 12 Oct 2021 16:52:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id lHGO_3a88_PL; Tue, 12 Oct 2021 16:52:52 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1F76D40712;
	Tue, 12 Oct 2021 16:52:51 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 08F441BF9B6
 for <devel@linuxdriverproject.org>; Tue, 12 Oct 2021 16:52:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 04BA960B95
 for <devel@linuxdriverproject.org>; Tue, 12 Oct 2021 16:52:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=google.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id M97hkINyCtHs for <devel@linuxdriverproject.org>;
 Tue, 12 Oct 2021 16:52:41 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-lf1-x12c.google.com (mail-lf1-x12c.google.com
 [IPv6:2a00:1450:4864:20::12c])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 172ED6059E
 for <devel@driverdev.osuosl.org>; Tue, 12 Oct 2021 16:52:41 +0000 (UTC)
Received: by mail-lf1-x12c.google.com with SMTP id y15so90326233lfk.7
 for <devel@driverdev.osuosl.org>; Tue, 12 Oct 2021 09:52:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=xawnIR012Yk1jlMpJVQsdMc2RuzZeUTjtaZq6SPv/vQ=;
 b=CKhySEFvBmeBz2lcrERZC74hIR/KWwGPXSyIVPq6Td7ba04vZohMLOQL35RLwjANyH
 tfRgYDWy9nS8fywNgnSJSAzXNkbXoJ8qv+rsx9CVsCqcxvQWM6yTOBwjT6GIxGxTJ309
 bdaopyFfF+TiJh1ryg3F2OgcV1MxRjt94pHkqLEqDjFEn71AgZ/T64PwP29o9jxf8FOf
 JQqiSaU7BsB1x3DmlIPL0UmzMPqNnYAeenGf9Xc0aIPeoz1FxZofoYiGi9sCj348z2MM
 I5RdGgQMykcHrAo3w2BRDPeuDZh+Mh1f0p5hwizFdVfDfL5rTmqE5UK7aKtZ8hzLJi02
 vXYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=xawnIR012Yk1jlMpJVQsdMc2RuzZeUTjtaZq6SPv/vQ=;
 b=SW844A/Scl/JQ8QNOSSQicq2hsjvB6PdxUEw4BOsmlB2Uu6bMjRdLNGT8ByezCIjeI
 H8T4Z5167ZlNyBC1hIxU7MVP2+KCtXTsI5Fb+urdOmiKgK9i2q1gDAA2lXdCKBZ2CazS
 l8Vg1Ok78MKI3pccm6AOoSQBQn4KHFyt2grS6Uo03fBKl6Tk/f7urZF7PlGsr970q2CS
 LfUTUJItIsgoQceWHSYDNXpFqU8uSRIHUfbeTnuYvI3kj3JvI4BTI5q9gU2S77RA91SS
 PS09VfJfwUffOM9vsUBlOUai1/ExMtvXw3VaZM/6KEmTz0wA4QcFYBRnFspCgLsFPujw
 31XA==
X-Gm-Message-State: AOAM532+3DcdGwlOwt+ffP5ZWzBSvmVwv5wV5UFt07PvbkYFOyh1oaNr
 zMn4Qa8tKT4b6QqbL6tXqkLgeUZdRXhtnzXUMBgh2A==
X-Google-Smtp-Source: ABdhPJwB9dqUf+AUdpqZ35D03WL9djp77vt7gTwCxcfcHj8MfPK1AU+kSPKFzNG8xdRVQ054ptpUFcbbXHlOvgM1N1Q=
X-Received: by 2002:a05:6512:13a5:: with SMTP id
 p37mr34642679lfa.403.1634057558265; 
 Tue, 12 Oct 2021 09:52:38 -0700 (PDT)
MIME-Version: 1.0
References: <20211007004629.1113572-1-tkjos@google.com>
 <20211007004629.1113572-4-tkjos@google.com>
 <CAHC9VhTRTcZW9eyXXvAN7T=ZCQ_zwH5iBz+d0h2ntf7=XHE-Vw@mail.gmail.com>
 <CAHRSSEy=eC0rbHUzDmCo6Na7Ya=uCq7zJ6_cXysi0oWQB=19YQ@mail.gmail.com>
 <CAHC9VhQVKTxwUUP02U43=zVZrEFWc0hhmpaR1YSxe+KHjhnhbw@mail.gmail.com>
 <CAHRSSEwYrqFum7gS0XOYG0p3F+0Hv8qvaZbWLUyXUm0oCWpX9w@mail.gmail.com>
 <CAEjxPJ5YT36ZvrN6uSDOCNv3pYrWBzcutsnSjSzya-5e0v9Rpw@mail.gmail.com>
In-Reply-To: <CAEjxPJ5YT36ZvrN6uSDOCNv3pYrWBzcutsnSjSzya-5e0v9Rpw@mail.gmail.com>
From: Todd Kjos <tkjos@google.com>
Date: Tue, 12 Oct 2021 09:52:26 -0700
Message-ID: <CAHRSSExyd--=r2g6FaRdhh5YtWBWPDOezyqW+8-HSOJw2bZhUw@mail.gmail.com>
Subject: Re: [PATCH v4 3/3] binder: use euid from cred instead of using task
To: Stephen Smalley <stephen.smalley.work@gmail.com>
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
Cc: devel@driverdev.osuosl.org,
 LSM List <linux-security-module@vger.kernel.org>,
 "Cc: Android Kernel" <kernel-team@android.com>, tkjos@android.com,
 Paul Moore <paul@paul-moore.com>, Kees Cook <keescook@chromium.org>,
 Jann Horn <jannh@google.com>, SElinux list <selinux@vger.kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 James Morris <jmorris@namei.org>, Mimi Zohar <zohar@linux.ibm.com>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 "Joel Fernandes \(Google\)" <joel@joelfernandes.org>, arve@android.com,
 stable@vger.kernel.org, Jeffrey Vander Stoep <jeffv@google.com>,
 Casey Schaufler <casey@schaufler-ca.com>, Eric Paris <eparis@parisplace.org>,
 maco@android.com, christian@brauner.io
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Tue, Oct 12, 2021 at 5:24 AM Stephen Smalley
<stephen.smalley.work@gmail.com> wrote:
>
> On Mon, Oct 11, 2021 at 7:39 PM Todd Kjos <tkjos@google.com> wrote:
> >
> > On Mon, Oct 11, 2021 at 2:39 PM Paul Moore <paul@paul-moore.com> wrote:
> > >
> > > On Fri, Oct 8, 2021 at 5:24 PM Todd Kjos <tkjos@google.com> wrote:
> > > >
> > > > On Fri, Oct 8, 2021 at 2:12 PM Paul Moore <paul@paul-moore.com> wrote:
> > > > >
> > > > > On Wed, Oct 6, 2021 at 8:46 PM Todd Kjos <tkjos@google.com> wrote:
> > > > > >
> > > > > > Set a transaction's sender_euid from the 'struct cred'
> > > > > > saved at binder_open() instead of looking up the euid
> > > > > > from the binder proc's 'struct task'. This ensures
> > > > > > the euid is associated with the security context that
> > > > > > of the task that opened binder.
> > > > > >
> > > > > > Fixes: 457b9a6f09f0 ("Staging: android: add binder driver")
> > > > > > Signed-off-by: Todd Kjos <tkjos@google.com>
> > > > > > Suggested-by: Stephen Smalley <stephen.smalley.work@gmail.com>
> > > > > > Cc: stable@vger.kernel.org # 4.4+
> > > > > > ---
> > > > > > v3: added this patch to series
> > > > > >
> > > > > >  drivers/android/binder.c | 2 +-
> > > > > >  1 file changed, 1 insertion(+), 1 deletion(-)
> > > > >
> > > > > This is an interesting ordering of the patches.  Unless I'm missing
> > > > > something I would have expected patch 3/3 to come first, followed by
> > > > > 2/3, with patch 1/3 at the end; basically the reverse of what was
> > > > > posted here.
> > > >
> > > > 2/3 and 3/3 both depend on 1/3 (add "cred" member of struct
> > > > binder_proc). I kept that in 1/3 to keep that patch the same as what
> > > > had already been reviewed. I didn't think much about the ordering
> > > > between 2/3 and 3/3 -- but I agree that it would have been sensible to
> > > > reverse their order.
> > > >
> > > > >
> > > > > My reading of the previous thread was that Casey has made his peace
> > > > > with these changes so unless anyone has any objections I'll plan on
> > > > > merging 2/3 and 3/3 into selinux/stable-5.15 and merging 1/3 into
> > > > > selinux/next.
> > > >
> > > > Thanks Paul. I'm not familiar with the branch structure, but you need
> > > > 1/3 in selinux/stable-5.15 to resolve the dependency on proc->cred.
> > >
> > > Yep, thanks.  My eyes kinda skipped over that part when looking at the
> > > patchset but that would have fallen out as soon as I merged them.
> > >
> > > Unfortunately that pretty much defeats the purpose of splitting this
> > > into three patches.  While I suppose one could backport patches 2/3
> > > and 3/3 individually, both of them have a very small footprint
> > > especially considering their patch 1/3 dependency.  At the very least
> > > it looks like patch 2/3 needs to be respun to address the
> > > !CONFIG_SECURITY case and seeing the split patches now I think the
> > > smart thing is to just combine them into a single patch.  I apologize
> > > for the bad recommendation earlier, I should have followed that thread
> > > a bit closer after the discussion with Casey and Stephen.
> >
> > I'm happy to submit a single patch for all of this. Another part of
> > the rationale
> > for splitting it into 3 patches was correctly identify the patch that introduced
> > the patch that introduced the issue -- so each of the 3 had a different
> > "Fixes:" tag. Should I cite the oldest (binder introduction) with the "Fixes"
> > tag and perhaps mention the other two in the commit message?
>
> Couldn't you just split patch 1 into the "add cred to binder proc"
> part and "use cred in LSM/SELinux hooks" part, combine patch 3 with
> the "add cred to binder proc" part to create new patch 1, then "use
> cred in LSM/SELinux hooks" part is patch 2, and "switch task_getsecid
> to cred_getsecid" to patch 3? Then patch 1 can be cherry-picked/ported
> all the way back to the introduction of binder, patch 2 all the way
> back to the introduction of binder LSM/SELinux hooks, and patch 3 just
> back to where passing the secctx across binder was introduced.

Sending a v5 with this refactoring and the !CONFIG_SECURITY fix
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
