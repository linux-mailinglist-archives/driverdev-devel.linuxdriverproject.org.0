Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 29DFF45C940
	for <lists+driverdev-devel@lfdr.de>; Wed, 24 Nov 2021 16:54:45 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 21C3A615F9;
	Wed, 24 Nov 2021 15:54:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id rC16cy3BPqbR; Wed, 24 Nov 2021 15:54:42 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 70EED607D6;
	Wed, 24 Nov 2021 15:54:41 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 17B911BF41A
 for <devel@linuxdriverproject.org>; Wed, 24 Nov 2021 15:54:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 067A540364
 for <devel@linuxdriverproject.org>; Wed, 24 Nov 2021 15:54:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=google.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id SBDc7nKOLn3x for <devel@linuxdriverproject.org>;
 Wed, 24 Nov 2021 15:54:29 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-lj1-x234.google.com (mail-lj1-x234.google.com
 [IPv6:2a00:1450:4864:20::234])
 by smtp4.osuosl.org (Postfix) with ESMTPS id A4DEE40357
 for <devel@driverdev.osuosl.org>; Wed, 24 Nov 2021 15:54:29 +0000 (UTC)
Received: by mail-lj1-x234.google.com with SMTP id b16so6367643ljf.12
 for <devel@driverdev.osuosl.org>; Wed, 24 Nov 2021 07:54:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=nSz945VXF1BFd/e4+mBTzOYUtSdM9vLxyacs/e/UXtA=;
 b=HMMh1lFnHVBYVLj5nSyQ7W5ZiPNE2LdReg7O0nYSHcxSI6dDIN3iskk/kch7WCCf6t
 pe8Q/5trZO43uytv3Duw1OTa3HHCyeYJ5MY10uNzsy1QsoG5/GQ5/P43q76Q3aDA9GMA
 J7KDHl8tWX67Zx4WFs2cVZ1CdnwGN4cV5sa1hZ01pb3NqLRylqImWhd8eVBD3JJVBqKO
 pX9AsyRzjae8GHs/wABmK5NDOUEzvWG2UibwE217xS6iJEPPOs+8BB4mdOQTfAchlE2d
 vP6kB30kaO48NrVvPnF5rogpwPryXg5ZwsFzSQb/LTw0t2g9xN0hn37arfZhZnDwSx7D
 kJbw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=nSz945VXF1BFd/e4+mBTzOYUtSdM9vLxyacs/e/UXtA=;
 b=wIKS3raRrOHg7xpfTjW0M8LSH7nQnLtlJ+E4l6dM8yEJhZiiQjnyJTPheNXknEYn9t
 1oga6oZgQQBs2luOinWoAk5qn5a8K7ohaKh9TUeC4SuAAcu+tvHs9SsTs+pb8aDdyGuZ
 +e1geKW1HxhUFyw3oziy7gfQ7v0oLqE6QkR/njGcpooSfjUWct11/XxnO8GB9SLIFTGf
 szZ2MXe5hn9slSuh61W0UowlffMdWtS55Qv7jopAGK3BjTGg5RP3F9i8+QamtjpCbzt+
 /MNXhOPepkgjPmyprOTX2RSIKP9PbI6RgsYhiYAGnhgNVCea9NCDqrML4bnL04uRoWLx
 rr+w==
X-Gm-Message-State: AOAM532hqBIK8kS2rB9cYegKKYbjEwEbBnWEg1av5fN+1kU3nNzOQD1C
 A0/s/tNYye4v8Z9bbpnmxdGV6YaDu5s+nUEWAw8J+g==
X-Google-Smtp-Source: ABdhPJxTZLNHOiJ4eL2gf7D6zLLVMvlKtcLTjtR8pcGzZtlPWJnSIWYCWTowlExoLRv9qU1zcJihPVr0e1wMYCu5GOE=
X-Received: by 2002:a2e:7616:: with SMTP id r22mr16689430ljc.391.1637769267387; 
 Wed, 24 Nov 2021 07:54:27 -0800 (PST)
MIME-Version: 1.0
References: <20211123191737.1296541-1-tkjos@google.com>
 <YZ3y/aYUeC5HSXk0@kroah.com>
In-Reply-To: <YZ3y/aYUeC5HSXk0@kroah.com>
From: Todd Kjos <tkjos@google.com>
Date: Wed, 24 Nov 2021 07:54:15 -0800
Message-ID: <CAHRSSEy527aTTHGeQxD2OiagxTtmyV2kZ5Rfh8JxWA84LxYT-Q@mail.gmail.com>
Subject: Re: [PATCH 0/3] binder: Prevent untranslated sender data from being
 copied to target
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
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org, arve@android.com,
 maco@google.com, joel@joelfernandes.org, kernel-team@android.com,
 christian@brauner.io
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Wed, Nov 24, 2021 at 12:08 AM Greg KH <gregkh@linuxfoundation.org> wrote:
>
> On Tue, Nov 23, 2021 at 11:17:34AM -0800, Todd Kjos wrote:
> > Binder copies transactions directly from the sender buffer
> > to the target buffer and then fixes up BINDER_TYPE_PTR and
> > BINDER_TYPE_FDA objects. This means there is a brief time
> > when sender pointers and fds are visible to the target
> > process.
> >
> > This series reworks the the sender to target copy to
> > avoid leaking any untranslated sender data from being
> > visible in the target.
> >
> > Todd Kjos (3):
> >   binder: defer copies of pre-patched txn data
> >   binder: read pre-translated fds from sender buffer
> >   binder: avoid potential data leakage when copying txn
> >
> >  drivers/android/binder.c | 442 +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++----------------
> >  1 file changed, 387 insertions(+), 55 deletions(-)
>
> Are these changes needed now in 5.16-final and also in stable kernels?
>
> Or can they wait until 5.17-rc1?

They can wait until 5.17-rc1.

>
> thanks,
>
> greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
