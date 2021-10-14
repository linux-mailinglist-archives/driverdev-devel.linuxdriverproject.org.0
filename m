Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id E9EE342E34A
	for <lists+driverdev-devel@lfdr.de>; Thu, 14 Oct 2021 23:34:16 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id C00654012A;
	Thu, 14 Oct 2021 21:34:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id K7ep8O4lSdiw; Thu, 14 Oct 2021 21:34:13 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 5190B400D9;
	Thu, 14 Oct 2021 21:34:12 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 861381BF576
 for <devel@linuxdriverproject.org>; Thu, 14 Oct 2021 21:34:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 8250681CFE
 for <devel@linuxdriverproject.org>; Thu, 14 Oct 2021 21:34:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key)
 header.d=paul-moore-com.20210112.gappssmtp.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id FuK1zCTs_LFX for <devel@linuxdriverproject.org>;
 Thu, 14 Oct 2021 21:34:01 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ed1-x52d.google.com (mail-ed1-x52d.google.com
 [IPv6:2a00:1450:4864:20::52d])
 by smtp1.osuosl.org (Postfix) with ESMTPS id E879481CE3
 for <devel@driverdev.osuosl.org>; Thu, 14 Oct 2021 21:34:00 +0000 (UTC)
Received: by mail-ed1-x52d.google.com with SMTP id r18so29711962edv.12
 for <devel@driverdev.osuosl.org>; Thu, 14 Oct 2021 14:34:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=paul-moore-com.20210112.gappssmtp.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=QoPu0jnNDwspHFj/KwTjXTK5IovBXrFnYnRM3qY9AfI=;
 b=a6KNglUwuPfv6oIfTS0ZYiZ4KlAFHaiXh7LKObdDfk5CWQzJWVBf4zQfr+h2DcJC+q
 /6GC8MY8aeLSG9gRqlIj5iz++B4UI0/XaeMbc1vyyC9cmgmj1Ga6sYbPgi13jZB/PdGw
 EjaDJ6X3eS1fm/ZL1GEQ8kxsLVPysO+XqTkMqqpFK6X+OPSHu9t9dspGa0ODwtJrnwYa
 2JCH5e8jK6dlNwBA2rh7BCfstK7WIld8g4LPRuxYNWh6XAQpRoLFqbqi+PtyK5d/X2pq
 MYKYgIXToadW9qIHhG8Z1QRBqXaqWeEHOjtwPhK/AqNf065c7fPuruiSGzVXxkmlA/rG
 NEnA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=QoPu0jnNDwspHFj/KwTjXTK5IovBXrFnYnRM3qY9AfI=;
 b=O4z4k1zzex73JLZ6ymwR9U5Z/wUf0jsqe28L8c5cff6vk7WBkAue2TNXQ010avAunX
 8v3zF2wFv7qp+Lrl+Lwx7LPdc3VGhLgdXPlJSzf/MvfhjVfjIMy7MVzdncbxCB8FFyZX
 dXb7MKPKYv4UZCKlD2cxnLz7U3kvPxSuFxsSmOjWCWUMENYZDzgipxVoaJuVsfSdq0yK
 z78D8h4IfT51LE8i1zDtAUgvxuvBMPxX5z5KI5Sz/PXK1ExdkOgdvVN1Xz7BZ7n12tAV
 qO5PSQzgGlABuf4ozMncUeSdk7z2m93KIfuhJrObkgPkpc8dvY3yxfPLRux6N4r5vUxH
 PBmQ==
X-Gm-Message-State: AOAM532yKe2R1GLmhqSRY0V8Ixfu0S5PTOtJ/rJETgqDitRrKLs4sh6r
 KgVVWZQpZKT84RB8Ps57JgWzXlJafCbd1QpuyQvk
X-Google-Smtp-Source: ABdhPJwdxSsmYhKsafUPIKuDs91ExUIKE/+rIIpYnPbV6xJvCFR8GllgoKtB9zmq6jGKXojYL90idam79iMgX4lDJwQ=
X-Received: by 2002:a05:6402:2552:: with SMTP id
 l18mr12249192edb.370.1634247239018; 
 Thu, 14 Oct 2021 14:33:59 -0700 (PDT)
MIME-Version: 1.0
References: <20211012165614.2873369-1-tkjos@google.com>
In-Reply-To: <20211012165614.2873369-1-tkjos@google.com>
From: Paul Moore <paul@paul-moore.com>
Date: Thu, 14 Oct 2021 17:33:48 -0400
Message-ID: <CAHC9VhQ6W=8rX6hryk_d+iTc90MAoZOw=KVDhjXsXE5Laccn_A@mail.gmail.com>
Subject: Re: [PATCH v5 0/3] binder: use cred instead of task for security
 context
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
 linux-kernel@vger.kernel.org, arve@android.com,
 Jeffrey Vander Stoep <jeffv@google.com>, joel@joelfernandes.org,
 Eric Paris <eparis@parisplace.org>, maco@android.com, christian@brauner.io
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Tue, Oct 12, 2021 at 12:56 PM Todd Kjos <tkjos@google.com> wrote:
>
> This series fixes the possible use of an incorrect security context
> when checking selinux permissions, getting a security ID, or lookup
> up the euid.
>
> The previous behavior was to save the group_leader 'struct task_struct'
> in binder_open() and using that to obtain security IDs or euids.
>
> This has been shown to be unreliable, so this series instead saves the
> 'struct cred' of the task that called binder_open(). This cred is used
> for these lookups instead of the task.

Hi Todd,

I just merged all three patches into selinux/next, thanks for your
help patience on this patchset.  Ultimately I merged these patches
into selinux/next as opposed to selinux/stable-5.15 because I felt
that a couple of weeks in -next before going to Linus would be a good
thing.  I'm also not certain how widespread binder is outside of
Android so I figured the practical difference between next and
stable-5.15 is likely very small.  Regardless, all of your Fixes and
stable tags remain in the patches so as soon as they go up to Linus
during the next merge window the stable folks will be notified.

-- 
paul moore
www.paul-moore.com
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
