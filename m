Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 312B7429900
	for <lists+driverdev-devel@lfdr.de>; Mon, 11 Oct 2021 23:34:43 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4884260900;
	Mon, 11 Oct 2021 21:34:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id EOa6KFcameUL; Mon, 11 Oct 2021 21:34:40 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 73620608B3;
	Mon, 11 Oct 2021 21:34:39 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 6F14E1BF865
 for <devel@linuxdriverproject.org>; Mon, 11 Oct 2021 21:34:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 6934D40283
 for <devel@linuxdriverproject.org>; Mon, 11 Oct 2021 21:34:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key)
 header.d=paul-moore-com.20210112.gappssmtp.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 8fF9LtF92IBk for <devel@linuxdriverproject.org>;
 Mon, 11 Oct 2021 21:34:28 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ed1-x533.google.com (mail-ed1-x533.google.com
 [IPv6:2a00:1450:4864:20::533])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 6EB604022F
 for <devel@driverdev.osuosl.org>; Mon, 11 Oct 2021 21:34:28 +0000 (UTC)
Received: by mail-ed1-x533.google.com with SMTP id a25so56977814edx.8
 for <devel@driverdev.osuosl.org>; Mon, 11 Oct 2021 14:34:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=paul-moore-com.20210112.gappssmtp.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=2ASvbaX4mULlaQ5VNPfAMnoxqnz/X2X3p0hluU+FIx0=;
 b=GiaUqRzMzNZdxYScPjPe67tmbRfAkynuVW7jg+j+0HBDVYAZ68l2sqeWVWgHuZrcBU
 k6U7oTLA4aSdUOyJNK92QwUQlGj8rxB0exbbQpz1TWi70ip96mgchR3g5BpCZXnQwRMz
 H+lXteD9kB9UeLgfxAE/A7DZMwh4T1CLoYvQ1dSezaMFim857pG5rcZ1bH+r0wmceFAs
 OEW87b2KDx+sdoXDzWliapO3EmyyxQbo1T2z2wDIuy0Gtu0fEuv8qmg2TBrLvCLBepJm
 H01rmaiD2lU2pNAU2sCoIHLBayWlWbtQcGUzWQSuIyTIxd1ZozWZMrw6e8DPm6ydlhsF
 fyGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=2ASvbaX4mULlaQ5VNPfAMnoxqnz/X2X3p0hluU+FIx0=;
 b=x/es60eGFm3EmUDWgEIqkVhw8ApkKnK77wT9ZH6K5rffhk5ibmNf8iwLs97JrgTjp0
 tF+PUPLh1kEZ37B6lycbOFg8hCxXhfD6p/TN9VkXVXXluWrn1snuZAVi6sDFvOLDIc9e
 OOlGW4NmS35O3G73picW+I8S4DjwTQkJwe1ZlyPjWk5lYCtFicAaieeZkYaUKypXK6gU
 DhQ+BKjRMBhcBRxWGjI8ZWGGwCasmZGPT1KH6/xKtGL+zXMdJQmbdItvqcT2+QlTGN2/
 988lmfa5fvhvQY83YIODE2w5tfJhWpUyc8osIeDzzVLJ43q21+J85+u+hNEiCA6+gCCu
 pl2Q==
X-Gm-Message-State: AOAM533V0NBLMRdS0zXJ53Mp/Vf8NhbYIOOxh/GMCA9T9pqkYL5k8TnH
 32HiupfPNax5J3e8TvD+YLVq84PrkForbxlPZKuv
X-Google-Smtp-Source: ABdhPJyO3wD+tHrVQmXHAZ7sE5WYEdQl0aKMJ//KoLlskSOmk+AfJORoEj9x9vQTLaFdFxfB1vfKy3dWfszaiXIkUn8=
X-Received: by 2002:a17:906:2f16:: with SMTP id
 v22mr27539784eji.126.1633988066527; 
 Mon, 11 Oct 2021 14:34:26 -0700 (PDT)
MIME-Version: 1.0
References: <20211007004629.1113572-1-tkjos@google.com>
 <20211007004629.1113572-4-tkjos@google.com>
 <CAHC9VhTRTcZW9eyXXvAN7T=ZCQ_zwH5iBz+d0h2ntf7=XHE-Vw@mail.gmail.com>
 <6dd3cdff-c4eb-6457-f04c-199263acd80b@schaufler-ca.com>
In-Reply-To: <6dd3cdff-c4eb-6457-f04c-199263acd80b@schaufler-ca.com>
From: Paul Moore <paul@paul-moore.com>
Date: Mon, 11 Oct 2021 17:34:15 -0400
Message-ID: <CAHC9VhQfPn88QZSMEw1d04V4f9MWwJxUDd-ibTd+6GTBiYLAPg@mail.gmail.com>
Subject: Re: [PATCH v4 3/3] binder: use euid from cred instead of using task
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
Cc: devel@driverdev.osuosl.org, linux-security-module@vger.kernel.org,
 kernel-team@android.com, tkjos@android.com, keescook@chromium.org,
 jannh@google.com, selinux@vger.kernel.org, gregkh@linuxfoundation.org,
 Stephen Smalley <stephen.smalley.work@gmail.com>,
 James Morris <jmorris@namei.org>, zohar@linux.ibm.com,
 linux-kernel@vger.kernel.org, arve@android.com, stable@vger.kernel.org,
 Jeffrey Vander Stoep <jeffv@google.com>, joel@joelfernandes.org,
 Eric Paris <eparis@parisplace.org>, maco@android.com, christian@brauner.io,
 Todd Kjos <tkjos@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Fri, Oct 8, 2021 at 5:25 PM Casey Schaufler <casey@schaufler-ca.com> wrote:
>
> On 10/8/2021 2:12 PM, Paul Moore wrote:
> > On Wed, Oct 6, 2021 at 8:46 PM Todd Kjos <tkjos@google.com> wrote:
> >> Set a transaction's sender_euid from the 'struct cred'
> >> saved at binder_open() instead of looking up the euid
> >> from the binder proc's 'struct task'. This ensures
> >> the euid is associated with the security context that
> >> of the task that opened binder.
> >>
> >> Fixes: 457b9a6f09f0 ("Staging: android: add binder driver")
> >> Signed-off-by: Todd Kjos <tkjos@google.com>
> >> Suggested-by: Stephen Smalley <stephen.smalley.work@gmail.com>
> >> Cc: stable@vger.kernel.org # 4.4+
> >> ---
> >> v3: added this patch to series
> >>
> >>  drivers/android/binder.c | 2 +-
> >>  1 file changed, 1 insertion(+), 1 deletion(-)
> > This is an interesting ordering of the patches.  Unless I'm missing
> > something I would have expected patch 3/3 to come first, followed by
> > 2/3, with patch 1/3 at the end; basically the reverse of what was
> > posted here.
> >
> > My reading of the previous thread was that Casey has made his peace
> > with these changes
>
> Yes. I will address the stacking concerns more directly.
> I am still somewhat baffled by the intent of the hook, the data
> passed to it, and the SELinux policy enforcement decisions, but
> that's beyond my scope.

Okay, I just wanted to make sure there were no objections.

-- 
paul moore
www.paul-moore.com
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
