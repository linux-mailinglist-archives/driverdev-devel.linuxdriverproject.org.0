Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id CAB53427300
	for <lists+driverdev-devel@lfdr.de>; Fri,  8 Oct 2021 23:24:47 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id D5E2A4029F;
	Fri,  8 Oct 2021 21:24:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id OOt_Sc40D0Fy; Fri,  8 Oct 2021 21:24:44 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id AF1724039D;
	Fri,  8 Oct 2021 21:24:43 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 6DA081BF2F6
 for <devel@linuxdriverproject.org>; Fri,  8 Oct 2021 21:24:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 68897401BC
 for <devel@linuxdriverproject.org>; Fri,  8 Oct 2021 21:24:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id E3_Xh7ir2zhJ for <devel@linuxdriverproject.org>;
 Fri,  8 Oct 2021 21:24:30 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-lf1-x134.google.com (mail-lf1-x134.google.com
 [IPv6:2a00:1450:4864:20::134])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 4FCCC4000B
 for <devel@driverdev.osuosl.org>; Fri,  8 Oct 2021 21:24:30 +0000 (UTC)
Received: by mail-lf1-x134.google.com with SMTP id m3so44584297lfu.2
 for <devel@driverdev.osuosl.org>; Fri, 08 Oct 2021 14:24:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=k0EYZkuPR71XsiCTlWd0a9Iaorj/CJH5/iJemSUM6lY=;
 b=CB+zFtRT+SWYOCVXvnjab2ZxnSTYp48pax/Ux3XcXjnV8nn/eX8c47eCIBGFvOo7YJ
 LxYiLLqLvIk7YyvRCXudrtjCydUsaZBwoXMZUqvyCi3SjvyRroDokpfsZYmE406ekFGk
 oPZGl9Ms5HlaeReDXl2OAUeYqbl+WJzHFUCtkbc/2HO1H5gqFmoH25Se8leqv8dIqNry
 pP8rTyAHu8uL/ost4LkK9NY+iYjvaGMwoJptXdot/l8hD+EXybgSfdiHYplZ9XsL2lEs
 B5oDl1xi6wDx4Pnpb0EKpXK8N/IbbbaJo8+VCTcktB1qiyZRDRZAD933g5cpGdZcx5pv
 gsbQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=k0EYZkuPR71XsiCTlWd0a9Iaorj/CJH5/iJemSUM6lY=;
 b=LJCSn4+te0+O0Klcp872kHgEzDH7ooP/PIIv1G6Dy7tszh5oHP2nMU3+W1VKiA3uoX
 n0Zmq4DKDI6R85LFmigsl3u+gcnyAhIRenwXPo+zAUGB6QxamnmIezN7XgqgBa1rnN0D
 lTQvRHSWl3EUxDHlBGmWpo7UmmA16+k2u/OLgzozoKE5zHV3rIH5LfaZoWS/T2IcKA+H
 HpUmZKf6ij4JvGEjxNJUjj4FduugAvclsVmv7nHTCXKdUbPTqfeWyRZuFtjg/Hbulm27
 uZvEXnmLNwlG1+wGs0JnEek6yYPiqlv0HSeWZoTo5LkqBInGrF05V2BVMQyIIjRcXGfV
 wtGQ==
X-Gm-Message-State: AOAM531VyxeEsMj4x0eyrpscWEvZvl9mc3XzqkPK7BM+XueUYek6nI+Q
 8Pldz7ExhZeXBkBpzI/NvvfJwAXDnK4qhTetBkfouw==
X-Google-Smtp-Source: ABdhPJw7QAvfd/PMBjVjoa/pBLk9iJwNrx/edGEOwARQnSyd73LqRwyNZlxISZX3d+E+YbInh0NqAq1innFWJxtJ4Cc=
X-Received: by 2002:a2e:b6c8:: with SMTP id m8mr6256568ljo.238.1633728267669; 
 Fri, 08 Oct 2021 14:24:27 -0700 (PDT)
MIME-Version: 1.0
References: <20211007004629.1113572-1-tkjos@google.com>
 <20211007004629.1113572-4-tkjos@google.com>
 <CAHC9VhTRTcZW9eyXXvAN7T=ZCQ_zwH5iBz+d0h2ntf7=XHE-Vw@mail.gmail.com>
In-Reply-To: <CAHC9VhTRTcZW9eyXXvAN7T=ZCQ_zwH5iBz+d0h2ntf7=XHE-Vw@mail.gmail.com>
From: Todd Kjos <tkjos@google.com>
Date: Fri, 8 Oct 2021 14:24:15 -0700
Message-ID: <CAHRSSEy=eC0rbHUzDmCo6Na7Ya=uCq7zJ6_cXysi0oWQB=19YQ@mail.gmail.com>
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

On Fri, Oct 8, 2021 at 2:12 PM Paul Moore <paul@paul-moore.com> wrote:
>
> On Wed, Oct 6, 2021 at 8:46 PM Todd Kjos <tkjos@google.com> wrote:
> >
> > Set a transaction's sender_euid from the 'struct cred'
> > saved at binder_open() instead of looking up the euid
> > from the binder proc's 'struct task'. This ensures
> > the euid is associated with the security context that
> > of the task that opened binder.
> >
> > Fixes: 457b9a6f09f0 ("Staging: android: add binder driver")
> > Signed-off-by: Todd Kjos <tkjos@google.com>
> > Suggested-by: Stephen Smalley <stephen.smalley.work@gmail.com>
> > Cc: stable@vger.kernel.org # 4.4+
> > ---
> > v3: added this patch to series
> >
> >  drivers/android/binder.c | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
>
> This is an interesting ordering of the patches.  Unless I'm missing
> something I would have expected patch 3/3 to come first, followed by
> 2/3, with patch 1/3 at the end; basically the reverse of what was
> posted here.

2/3 and 3/3 both depend on 1/3 (add "cred" member of struct
binder_proc). I kept that in 1/3 to keep that patch the same as what
had already been reviewed. I didn't think much about the ordering
between 2/3 and 3/3 -- but I agree that it would have been sensible to
reverse their order.

>
> My reading of the previous thread was that Casey has made his peace
> with these changes so unless anyone has any objections I'll plan on
> merging 2/3 and 3/3 into selinux/stable-5.15 and merging 1/3 into
> selinux/next.

Thanks Paul. I'm not familiar with the branch structure, but you need
1/3 in selinux/stable-5.15 to resolve the dependency on proc->cred.

>
> > diff --git a/drivers/android/binder.c b/drivers/android/binder.c
> > index 989afd0804ca..26382e982c5e 100644
> > --- a/drivers/android/binder.c
> > +++ b/drivers/android/binder.c
> > @@ -2711,7 +2711,7 @@ static void binder_transaction(struct binder_proc *proc,
> >                 t->from = thread;
> >         else
> >                 t->from = NULL;
> > -       t->sender_euid = task_euid(proc->tsk);
> > +       t->sender_euid = proc->cred->euid;
> >         t->to_proc = target_proc;
> >         t->to_thread = target_thread;
> >         t->code = tr->code;
> > --
> > 2.33.0.800.g4c38ced690-goog
>
> --
> paul moore
> www.paul-moore.com
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
