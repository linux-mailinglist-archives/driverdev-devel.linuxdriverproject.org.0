Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A6504299A6
	for <lists+driverdev-devel@lfdr.de>; Tue, 12 Oct 2021 01:11:24 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id AC99240389;
	Mon, 11 Oct 2021 23:11:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id kLigoGEw2b9Y; Mon, 11 Oct 2021 23:11:20 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 6F4F9402DF;
	Mon, 11 Oct 2021 23:11:19 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id E510D1BF841
 for <devel@linuxdriverproject.org>; Mon, 11 Oct 2021 23:11:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id D374E403C1
 for <devel@linuxdriverproject.org>; Mon, 11 Oct 2021 23:11:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key)
 header.d=paul-moore-com.20210112.gappssmtp.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 3lwdOrlJJeTp for <devel@linuxdriverproject.org>;
 Mon, 11 Oct 2021 23:11:05 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ed1-x534.google.com (mail-ed1-x534.google.com
 [IPv6:2a00:1450:4864:20::534])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 9A90D403BB
 for <devel@driverdev.osuosl.org>; Mon, 11 Oct 2021 23:11:05 +0000 (UTC)
Received: by mail-ed1-x534.google.com with SMTP id y12so60704934eda.4
 for <devel@driverdev.osuosl.org>; Mon, 11 Oct 2021 16:11:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=paul-moore-com.20210112.gappssmtp.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=h1aojVMiAC+dTJJ9CxG9nUezJ612JW4LOoadws/Wdgg=;
 b=ibryuqSlxRvY3tcfhcqgvog5M3wbrRAapyw8XCWWSuXm8vG56eJfeVmy2Xbv4z/zZF
 8pwYzCKKrrdVgveJzQeaCsghTrjV9hu5ZmSJw/V1tjPokRHPYnJWZtsathabPyNqFzvp
 ESHhUWgDfmPsALNVSkGr/+18KBjVZbyQUSHD3IFzJccyCVaLrt+lPkvNk0F3vbRguonh
 HGJpf5sRFAFTZjGWFFNnp3x/BmvQka0TlBfhM6FBuSZ3aCZmx4LDDx+WUPQ5mU42hbKq
 G67TAms50uVImTBEpvs00E7JyuGMsYa7gPtrZ5+ethDTWjDBKPQamhJw707s8Sm1/1vk
 +yQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=h1aojVMiAC+dTJJ9CxG9nUezJ612JW4LOoadws/Wdgg=;
 b=TG8rucnxrINSU5Y9WOe5DipNwgHWLXfdybfowiRg7Pg/8/fN9AQ/esn99hNir5xHIA
 r+VHXMnFChvXzbotGuGHMkdnMMVdSKoV+05cD5M5Lh6I3gCsyts9cuzgn4qaHqPWD6V1
 z4wYr0wHY/vmYFAsa02UrtMVeBNu9aUWoukStQ4AhH8lf42qHAUcJFHSftMrDldqZ1Kb
 buY6npYj7ztVgEOTm7UpkzqYmCnSxRdXDxBTsE8iNjalVrGVUO1u7GQqDeSaTUkBhc03
 pk7T4RxZsq7G4nDknh9yAljoD9Su16+zVcP0ZHzsnUBRn7XzIoPA23nGcWxguyxDx+Hm
 ufKw==
X-Gm-Message-State: AOAM533ByuKMTaXl7U7DPO3p9EATi2eoybf/y6/df7WeDu3A4rtV4oAW
 l8zqMoOkeOGPov7DXs+lcSZV8pqd7lCFxfaNeQGy
X-Google-Smtp-Source: ABdhPJxF6p6SBEimtPUNrEkSQF+zX9DJpwgGk4iFPWdSD+Id4rVokmvAN6idcgQhVjJ7yAcuLfiu8m9JyNw2bU7wl94=
X-Received: by 2002:a17:907:784b:: with SMTP id
 lb11mr29565002ejc.307.1633993863523; 
 Mon, 11 Oct 2021 16:11:03 -0700 (PDT)
MIME-Version: 1.0
References: <20211007004629.1113572-1-tkjos@google.com>
 <20211007004629.1113572-3-tkjos@google.com>
 <CAHC9VhSDnwapGk6Pvn5iuKv0zCtZSbfnGAkZwKcxVYLVRH6CLg@mail.gmail.com>
 <8c07f9b7-58b8-18b5-84f8-9b6c78acb08b@schaufler-ca.com>
In-Reply-To: <8c07f9b7-58b8-18b5-84f8-9b6c78acb08b@schaufler-ca.com>
From: Paul Moore <paul@paul-moore.com>
Date: Mon, 11 Oct 2021 19:10:52 -0400
Message-ID: <CAHC9VhRZz8ORWfQpQ8Wix845Zx3xGyusc3ne_UM7AmeLUpz9Eg@mail.gmail.com>
Subject: Re: [PATCH v4 2/3] binder: use cred instead of task for getsecid
To: Casey Schaufler <casey@schaufler-ca.com>
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
Cc: zohar@linux.ibm.com, arve@android.com, joel@joelfernandes.org,
 devel@driverdev.osuosl.org, Jeffrey Vander Stoep <jeffv@google.com>,
 James Morris <jmorris@namei.org>, kernel-team@android.com, tkjos@android.com,
 keescook@chromium.org, jannh@google.com, selinux@vger.kernel.org,
 Eric Paris <eparis@parisplace.org>, maco@android.com, christian@brauner.io,
 gregkh@linuxfoundation.org, Stephen Smalley <stephen.smalley.work@gmail.com>,
 linux-kernel@vger.kernel.org, stable@vger.kernel.org,
 linux-security-module@vger.kernel.org, Todd Kjos <tkjos@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Mon, Oct 11, 2021 at 5:59 PM Casey Schaufler <casey@schaufler-ca.com> wrote:
> On 10/11/2021 2:33 PM, Paul Moore wrote:
> > On Wed, Oct 6, 2021 at 8:46 PM Todd Kjos <tkjos@google.com> wrote:
> >> Use the 'struct cred' saved at binder_open() to lookup
> >> the security ID via security_cred_getsecid(). This
> >> ensures that the security context that opened binder
> >> is the one used to generate the secctx.
> >>
> >> Fixes: ec74136ded79 ("binder: create node flag to request sender's
> >> security context")
> >> Signed-off-by: Todd Kjos <tkjos@google.com>
> >> Suggested-by: Stephen Smalley <stephen.smalley.work@gmail.com>
> >> Reported-by: kernel test robot <lkp@intel.com>
> >> Cc: stable@vger.kernel.org # 5.4+
> >> ---
> >> v3: added this patch to series
> >> v4: fix build-break for !CONFIG_SECURITY
> >>
> >>  drivers/android/binder.c | 11 +----------
> >>  include/linux/security.h |  4 ++++
> >>  2 files changed, 5 insertions(+), 10 deletions(-)
> >>
> >> diff --git a/drivers/android/binder.c b/drivers/android/binder.c
> >> index ca599ebdea4a..989afd0804ca 100644
> >> --- a/drivers/android/binder.c
> >> +++ b/drivers/android/binder.c
> >> @@ -2722,16 +2722,7 @@ static void binder_transaction(struct binder_proc *proc,
> >>                 u32 secid;
> >>                 size_t added_size;
> >>
> >> -               /*
> >> -                * Arguably this should be the task's subjective LSM secid but
> >> -                * we can't reliably access the subjective creds of a task
> >> -                * other than our own so we must use the objective creds, which
> >> -                * are safe to access.  The downside is that if a task is
> >> -                * temporarily overriding it's creds it will not be reflected
> >> -                * here; however, it isn't clear that binder would handle that
> >> -                * case well anyway.
> >> -                */
> >> -               security_task_getsecid_obj(proc->tsk, &secid);
> >> +               security_cred_getsecid(proc->cred, &secid);
> >>                 ret = security_secid_to_secctx(secid, &secctx, &secctx_sz);
> >>                 if (ret) {
> >>                         return_error = BR_FAILED_REPLY;
> >> diff --git a/include/linux/security.h b/include/linux/security.h
> >> index 6344d3362df7..f02cc0211b10 100644
> >> --- a/include/linux/security.h
> >> +++ b/include/linux/security.h
> >> @@ -1041,6 +1041,10 @@ static inline void security_transfer_creds(struct cred *new,
> >>  {
> >>  }
> >>
> >> +static inline void security_cred_getsecid(const struct cred *c, u32 *secid)
> >> +{
> >> +}
> >
> > Since security_cred_getsecid() doesn't return an error code we should
> > probably set the secid to 0 in this case, for example:
> >
> >   static inline void security_cred_getsecid(...)
> >   {
> >     *secid = 0;
> >   }
>
> If CONFIG_SECURITY is unset there shouldn't be any case where
> the secid value is ever used for anything. Are you suggesting that
> it be set out of an abundance of caution?

It follows a pattern with the other LSM hooks when !CONFIG_SECURITY,
and I'd much rather us keep things consistent.

-- 
paul moore
www.paul-moore.com
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
