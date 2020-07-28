Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0954E2311CE
	for <lists+driverdev-devel@lfdr.de>; Tue, 28 Jul 2020 20:36:00 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id C3B8388665;
	Tue, 28 Jul 2020 18:35:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id VzPjTA5su4gg; Tue, 28 Jul 2020 18:35:57 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 2E85788607;
	Tue, 28 Jul 2020 18:35:57 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 268351BF28E
 for <devel@linuxdriverproject.org>; Tue, 28 Jul 2020 18:35:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 2223B88607
 for <devel@linuxdriverproject.org>; Tue, 28 Jul 2020 18:35:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id psv1M9oyy6hq for <devel@linuxdriverproject.org>;
 Tue, 28 Jul 2020 18:35:53 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ot1-f65.google.com (mail-ot1-f65.google.com
 [209.85.210.65])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 1E42188602
 for <devel@driverdev.osuosl.org>; Tue, 28 Jul 2020 18:35:53 +0000 (UTC)
Received: by mail-ot1-f65.google.com with SMTP id p25so6265797oto.6
 for <devel@driverdev.osuosl.org>; Tue, 28 Jul 2020 11:35:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=0Z63JKAOHq4FmpWz4KBmz4cVqOLwzIvbRITRXwRUNMg=;
 b=GPIMIt06GdktXH/MGPQAgShkUf3xRghQYf+l+eRGqs2hhNLnYxeu0YJcUSVm4aWq6+
 JnLC4qT6HYzxvFFz3ZJcvfVQgPuAgo8WKeUb8jkHnnRV+HukPiceUAjuOiCRPfqcn4Rf
 8s5ENREcr1d5c48Aj7xQ3o6qcvLkQ4XGumU/Zj3YyTt1XPJeuhuPZsrpvUcQvFfEk68N
 IXV7CWoENQ1ufiO8hAuitfNaTEL3xyb8IGjI/q3MSvio2EQU3OQnGhSZFBe3nJbHzIlA
 7uiqk9pMyc0ymqN60xtYwQTbpaRjrKhbYIibaO6d3GQvqyN5TLiZax4obJ1JpOGM1fED
 sF2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=0Z63JKAOHq4FmpWz4KBmz4cVqOLwzIvbRITRXwRUNMg=;
 b=KDsqCIeAHVOXC0aax2QVW+oQsFxoqfyxxT7TDsOk08XL6Q5tRbwMHtQ2RUpRFv9uYj
 07a7Rh5oLg6cSTmBieR2m+PvWT3u7o5baABpfbeXAs9yG29PgeQzKA7MaykUwiozIe/y
 ptlmMVqVA1rCz1NpiUBbFZHl7AnucPZElfCnxtuveFpYSU/0+7OrLtb/5mI0n+fniw5N
 wWgme0FQxXFEf9vILAZ3Oacdude9/nBvet7Tw0DJ3OFQ10AifrIkmdLpQU7sGLf0lxkh
 HJyUEqy4pM4/V1D30dFunke2kuGrt1oj9h6WYQa3swWlwIqUuQ8iXofUjANz7dwRQ4P2
 cBqw==
X-Gm-Message-State: AOAM532fsWop6T3Q6/c6i9OeWtPiiR0QWFHp2H6KhindOjGXFxN0ARaR
 uqNCkvREk8rgDDmnzC4VJBOY26h1R+muVVHHABs=
X-Google-Smtp-Source: ABdhPJyzWjrRD0PrwzvQqD83SQdnWksQWGtydVmK8bWLCVtscOqjbdlaXNKFDL1fEPN2+nshHblWyt37hJyOEDw7PQQ=
X-Received: by 2002:a05:6830:4c8:: with SMTP id
 s8mr24921273otd.368.1595961352281; 
 Tue, 28 Jul 2020 11:35:52 -0700 (PDT)
MIME-Version: 1.0
References: <20200728175935.2130-1-dhiraj.sharma0024@gmail.com>
 <20200728182519.GA328787@kroah.com>
In-Reply-To: <20200728182519.GA328787@kroah.com>
From: Dhiraj Sharma <dhiraj.sharma0024@gmail.com>
Date: Wed, 29 Jul 2020 00:05:39 +0530
Message-ID: <CAPRy4h3RWzY0nStJzvLUJuEyxN4Pc03LiqJxie-_GWhzuZEmgA@mail.gmail.com>
Subject: Re: [PATCH] staging: android: ashmem: used const keyword
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
Cc: devel@driverdev.osuosl.org, tkjos@android.com,
 Suren Baghdasaryan <surenb@google.com>, linux-kernel@vger.kernel.org,
 Hridya Valsaraju <hridya@google.com>, arve@android.com, joel@joelfernandes.org,
 maco@android.com, christian@brauner.io
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Alright, I have understood now that I should not trust on
checkpatch.pl script fully but partially it is indeed helpful. Please
don't criticize this script, it was my fault instead.

Before submitting code changes I would test them all, sorry for
wasting your time please ignore this patch changes now.

I will not commit such foolish mistakes now.


Thank you
Dhiraj Sharma

On Tue, Jul 28, 2020 at 11:55 PM Greg KH <gregkh@linuxfoundation.org> wrote:
>
> On Tue, Jul 28, 2020 at 11:29:35PM +0530, Dhiraj Sharma wrote:
> > I ran checkpatch.pl script which reported a warning to use const keyword
> > on line 370.Therefore I made this change.
> >
> > Signed-off-by: Dhiraj Sharma <dhiraj.sharma0024@gmail.com>
> > ---
> >  drivers/staging/android/ashmem.c | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> >
> > diff --git a/drivers/staging/android/ashmem.c b/drivers/staging/android/ashmem.c
> > index c05a214191da..f9cfa15b785f 100644
> > --- a/drivers/staging/android/ashmem.c
> > +++ b/drivers/staging/android/ashmem.c
> > @@ -367,7 +367,7 @@ ashmem_vmfile_get_unmapped_area(struct file *file, unsigned long addr,
> >
> >  static int ashmem_mmap(struct file *file, struct vm_area_struct *vma)
> >  {
> > -     static struct file_operations vmfile_fops;
> > +     static const struct file_operations vmfile_fops;
>
> You have now submitted two patches that you obviously never even built,
> which is the first step in kernel development :(
>
> Please be more careful next time.
>
> greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
