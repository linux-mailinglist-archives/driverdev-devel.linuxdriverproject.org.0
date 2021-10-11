Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F8D142990B
	for <lists+driverdev-devel@lfdr.de>; Mon, 11 Oct 2021 23:39:33 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id D31A940433;
	Mon, 11 Oct 2021 21:39:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id TgGdV1oIw1YV; Mon, 11 Oct 2021 21:39:30 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5D6BD40295;
	Mon, 11 Oct 2021 21:39:29 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id B010C1BF865
 for <devel@linuxdriverproject.org>; Mon, 11 Oct 2021 21:39:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 9FD41608F2
 for <devel@linuxdriverproject.org>; Mon, 11 Oct 2021 21:39:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key)
 header.d=paul-moore-com.20210112.gappssmtp.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id NA6CuiHY-_k7 for <devel@linuxdriverproject.org>;
 Mon, 11 Oct 2021 21:39:20 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ed1-x530.google.com (mail-ed1-x530.google.com
 [IPv6:2a00:1450:4864:20::530])
 by smtp3.osuosl.org (Postfix) with ESMTPS id E33F5608EB
 for <devel@driverdev.osuosl.org>; Mon, 11 Oct 2021 21:39:19 +0000 (UTC)
Received: by mail-ed1-x530.google.com with SMTP id i20so56421807edj.10
 for <devel@driverdev.osuosl.org>; Mon, 11 Oct 2021 14:39:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=paul-moore-com.20210112.gappssmtp.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Cy+yFGYhU8Dl+HTiVqKCJfmoCLxBdL9eY1HaZR6ohww=;
 b=E2xOqhCa/G27tgig8lRlceYSN6Q2nsUxzkdjTRgJt43eaZqgeV0AdIuonKVgB5Tb2v
 3QXVNvKVm/onpSZo1QRzmFCvtGOoHMK2ECiN23m57RHQNPN4iVNZ2nPn4V+Q3rYR5R0G
 kKUZv7SAEt+nDSj1W0mkSVV3n2mHcL0ReziP4HLQMQvMNa614h0Ss64SM09OUZuk8VzS
 GbuC3K9l5jucq9fI+uIYMZ1hX/LR6Fh/BF+PbfOsGTqPcpDKDdFRgTVZ2vmXivd0A/RN
 rUE6MkrnB1kx6shi0FtCP5GqNBUgELSncxR8Kqw9EAq37ILmJ0UbxogjWYL7tAxvu58J
 Ee+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Cy+yFGYhU8Dl+HTiVqKCJfmoCLxBdL9eY1HaZR6ohww=;
 b=OlqlAjAZWF8U+DFWq50k3Y1yUNRu/nWEmGuXYNB2J1G8US3zJgJhPbSMYuqycf44qm
 3Nl2RxiuomZUXD4G7yxSwnl8ZuOuEGLexAOcb8QlJDK68/Mn3atUpVVbIs4bKdQ6GGFx
 RvtUSxBBlPaZndTmnX75OhQj8ERa+3BZMpd5Xmh3NQMUtzVGnw8KaA93tRLUwuP4TLby
 1l3sCGw2guJfm2xiWbpNUFp9Ry/d525cUE37BxVSuEZY6CDwDIarn1PNLITgt4HWKjmc
 ZE11lYvBmYs0QRHukXBCbj6UfBrbyCopB5ZQ33PzVJ9cTjRoAfkf4xw1J617BpstDDtk
 cn/Q==
X-Gm-Message-State: AOAM532GatMkJUVGSRz0Gv+h6DLpm/80vzu/0J6Q4j/MAS9ky3tB4zto
 6jos3dVN7Ky3KCy9QsRK4hxRRk7uR2YU6MERyZju
X-Google-Smtp-Source: ABdhPJx7CJ3ZIqyUEEfQoxWarEkX7WOi4Hpj/UN4D+hD99Srmu8DlLrayJ8Ib3dueW7FkqYvWAat963ic1eMGKkhVvE=
X-Received: by 2002:a17:907:784b:: with SMTP id
 lb11mr29054417ejc.307.1633988358027; 
 Mon, 11 Oct 2021 14:39:18 -0700 (PDT)
MIME-Version: 1.0
References: <20211007004629.1113572-1-tkjos@google.com>
 <20211007004629.1113572-4-tkjos@google.com>
 <CAHC9VhTRTcZW9eyXXvAN7T=ZCQ_zwH5iBz+d0h2ntf7=XHE-Vw@mail.gmail.com>
 <CAHRSSEy=eC0rbHUzDmCo6Na7Ya=uCq7zJ6_cXysi0oWQB=19YQ@mail.gmail.com>
In-Reply-To: <CAHRSSEy=eC0rbHUzDmCo6Na7Ya=uCq7zJ6_cXysi0oWQB=19YQ@mail.gmail.com>
From: Paul Moore <paul@paul-moore.com>
Date: Mon, 11 Oct 2021 17:39:07 -0400
Message-ID: <CAHC9VhQVKTxwUUP02U43=zVZrEFWc0hhmpaR1YSxe+KHjhnhbw@mail.gmail.com>
Subject: Re: [PATCH v4 3/3] binder: use euid from cred instead of using task
To: Todd Kjos <tkjos@google.com>
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

On Fri, Oct 8, 2021 at 5:24 PM Todd Kjos <tkjos@google.com> wrote:
>
> On Fri, Oct 8, 2021 at 2:12 PM Paul Moore <paul@paul-moore.com> wrote:
> >
> > On Wed, Oct 6, 2021 at 8:46 PM Todd Kjos <tkjos@google.com> wrote:
> > >
> > > Set a transaction's sender_euid from the 'struct cred'
> > > saved at binder_open() instead of looking up the euid
> > > from the binder proc's 'struct task'. This ensures
> > > the euid is associated with the security context that
> > > of the task that opened binder.
> > >
> > > Fixes: 457b9a6f09f0 ("Staging: android: add binder driver")
> > > Signed-off-by: Todd Kjos <tkjos@google.com>
> > > Suggested-by: Stephen Smalley <stephen.smalley.work@gmail.com>
> > > Cc: stable@vger.kernel.org # 4.4+
> > > ---
> > > v3: added this patch to series
> > >
> > >  drivers/android/binder.c | 2 +-
> > >  1 file changed, 1 insertion(+), 1 deletion(-)
> >
> > This is an interesting ordering of the patches.  Unless I'm missing
> > something I would have expected patch 3/3 to come first, followed by
> > 2/3, with patch 1/3 at the end; basically the reverse of what was
> > posted here.
>
> 2/3 and 3/3 both depend on 1/3 (add "cred" member of struct
> binder_proc). I kept that in 1/3 to keep that patch the same as what
> had already been reviewed. I didn't think much about the ordering
> between 2/3 and 3/3 -- but I agree that it would have been sensible to
> reverse their order.
>
> >
> > My reading of the previous thread was that Casey has made his peace
> > with these changes so unless anyone has any objections I'll plan on
> > merging 2/3 and 3/3 into selinux/stable-5.15 and merging 1/3 into
> > selinux/next.
>
> Thanks Paul. I'm not familiar with the branch structure, but you need
> 1/3 in selinux/stable-5.15 to resolve the dependency on proc->cred.

Yep, thanks.  My eyes kinda skipped over that part when looking at the
patchset but that would have fallen out as soon as I merged them.

Unfortunately that pretty much defeats the purpose of splitting this
into three patches.  While I suppose one could backport patches 2/3
and 3/3 individually, both of them have a very small footprint
especially considering their patch 1/3 dependency.  At the very least
it looks like patch 2/3 needs to be respun to address the
!CONFIG_SECURITY case and seeing the split patches now I think the
smart thing is to just combine them into a single patch.  I apologize
for the bad recommendation earlier, I should have followed that thread
a bit closer after the discussion with Casey and Stephen.

-- 
paul moore
www.paul-moore.com
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
