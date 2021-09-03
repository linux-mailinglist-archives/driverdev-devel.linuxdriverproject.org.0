Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E6B14005F1
	for <lists+driverdev-devel@lfdr.de>; Fri,  3 Sep 2021 21:38:54 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id E808A4039B;
	Fri,  3 Sep 2021 19:38:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id H2arnvkEkoaS; Fri,  3 Sep 2021 19:38:52 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 46AF8402F3;
	Fri,  3 Sep 2021 19:38:51 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 7F5C11BF2F7
 for <devel@linuxdriverproject.org>; Fri,  3 Sep 2021 19:38:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 6DA23606E2
 for <devel@linuxdriverproject.org>; Fri,  3 Sep 2021 19:38:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=google.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id IP7ZIxgWoLiA for <devel@linuxdriverproject.org>;
 Fri,  3 Sep 2021 19:38:40 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-lf1-x12e.google.com (mail-lf1-x12e.google.com
 [IPv6:2a00:1450:4864:20::12e])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 91DA860679
 for <devel@driverdev.osuosl.org>; Fri,  3 Sep 2021 19:38:40 +0000 (UTC)
Received: by mail-lf1-x12e.google.com with SMTP id t12so362171lfg.9
 for <devel@driverdev.osuosl.org>; Fri, 03 Sep 2021 12:38:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=CpWTZXeHQgxI0FRIsXgHMKOEiigtxEoeHddO3FWKGkk=;
 b=UhpAzgv7FchR19cnMXHoZ7cPsnwbRuML2DSSZEKXlKbP9d7Uh/q51lYN6dicMfTSUV
 dMV18+ZxBaPhTEDxtpW7QeKdKnIGoeQPq4sChmtUxnlLdNqoFJI2YqFqgG0EvaVH4Khl
 cQjGnPEclgybXcLpQg8op5cyqaW6q3ph7e4SmGdI2glcrgPorTq5EcfSXhONcxrAT9EV
 SVUaIelOgjBRpSAzTjutRcpIv1HmjzTs7O/hqvPSmsGQOjEwyuWWlW6theTjv4gHo0vi
 IINnLytwUQXvyKA3KgzPZHFbroL39slzKCL2Gv5DbeUdMQTO5Hn1r6ANYcmcwc0drL1+
 RszA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=CpWTZXeHQgxI0FRIsXgHMKOEiigtxEoeHddO3FWKGkk=;
 b=RUZ+pXJI//Wexp9waRVrO431S6c5C9ME8McxL4sBdkV7PpS6xuKRuODYGH+FvNexXw
 bKZFlv3vNTsFjUEPvCrcEymsU6jpI0fd8LWotTj4Y1zlhx9abqwHpYRi5XbR9ninEfbD
 I2asbXC3Fsrm2AiUTo7d34ANpVzjeKZCPI/VTky4CRE4NHhcOAYeJ4tw/0JFY46xDa8V
 kxpLQxfHs4gQbhFjkc7Y+K6T1N011BVssOMMDf8FgGztz20lDx2tmtDOaG4WcG5ynVd9
 j7onW3MHYSlzosDEPqciPIKOen9a46J0BBzdbRGpjx+EkYksrnwOtjR+G088d+SxQBLy
 h1Tw==
X-Gm-Message-State: AOAM532piDPtCByTbhfx9GOU3EGNCYGJccdyTWV8GOZdQXPy6Orw4ZQX
 jwy0m2RjgThtlevI0FkCodfOw+K8wgrAVcIk7Z02qQ==
X-Google-Smtp-Source: ABdhPJzkMAwSm7ZOxAvX4qFCxpAR1VwRIYhxMiWpd1Z1azE/6kQNcFOVD1E07Ac/XUYd7vyLyUM9+oeka9mxK+cVk5k=
X-Received: by 2002:a05:6512:11e8:: with SMTP id
 p8mr386145lfs.682.1630697918128; 
 Fri, 03 Sep 2021 12:38:38 -0700 (PDT)
MIME-Version: 1.0
References: <20210830195146.587206-1-tkjos@google.com>
 <CAB0TPYFmUgPTONABLTJAdonK7fY7oqURKCpLp1-WqHLtyen7Zw@mail.gmail.com>
 <CAHRSSExONtUFu0Mb8uJeVKcyDYb8=1PO7a=aQ=DUEpA5kAcTQA@mail.gmail.com>
 <20210903080617.GA1957@kadam>
In-Reply-To: <20210903080617.GA1957@kadam>
From: Todd Kjos <tkjos@google.com>
Date: Fri, 3 Sep 2021 12:38:26 -0700
Message-ID: <CAHRSSEyDDmGRrc_paxJ2-Gkx=qMhKKhTr_Mpj-DiL8L1gcm5VA@mail.gmail.com>
Subject: Re: [PATCH] binder: make sure fd closes complete
To: Dan Carpenter <dan.carpenter@oracle.com>
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
Cc: "open list:ANDROID DRIVERS" <devel@driverdev.osuosl.org>,
 kernel-team@android.com, Greg KH <gregkh@linuxfoundation.org>,
 LKML <linux-kernel@vger.kernel.org>, stable <stable@vger.kernel.org>,
 =?UTF-8?B?QXJ2ZSBIasO4bm5ldsOlZw==?= <arve@android.com>,
 Martijn Coenen <maco@google.com>, Joel Fernandes <joel@joelfernandes.org>,
 Martijn Coenen <maco@android.com>, Christian Brauner <christian@brauner.io>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Fri, Sep 3, 2021 at 1:06 AM Dan Carpenter <dan.carpenter@oracle.com> wrote:
>
> On Thu, Sep 02, 2021 at 08:35:35AM -0700, Todd Kjos wrote:
> > On Tue, Aug 31, 2021 at 12:24 AM Martijn Coenen <maco@android.com> wrote:
> > >
> > > On Mon, Aug 30, 2021 at 9:51 PM 'Todd Kjos' via kernel-team
> > > <kernel-team@android.com> wrote:
> > > >
> > > > During BC_FREE_BUFFER processing, the BINDER_TYPE_FDA object
> > > > cleanup may close 1 or more fds. The close operations are
> > > > completed using the task work mechanism -- which means the thread
> > > > needs to return to userspace or the file object may never be
> > > > dereferenced -- which can lead to hung processes.
> > > >
> > > > Force the binder thread back to userspace if an fd is closed during
> > > > BC_FREE_BUFFER handling.
> > > >
> > > > Signed-off-by: Todd Kjos <tkjos@google.com>
> > > Reviewed-by: Martijn Coenen <maco@android.com>
> >
> > Please also add to stable releases 5.4 and later.
>
> It would be better if this had a fixes tag so we knew which is the first
> buggy commit.
>
> There was a long Project Zero article about the Bad Binder exploit
> because commit f5cb779ba163 ("ANDROID: binder: remove waitqueue when
> thread exits.") was marked as # 4.14 but it didn't have a Fixes tag and
> the actual buggy commit was in 4.9.

Good point Dan. I should have included a Fixes tag. Here is the tag
(issue introduced in 4.20):

Fixes: 80cd795630d6 ("binder: fix use-after-free due to ksys_close()
during fdget()")

Greg- would you like me to send a v2 with the Fixes tag and CC'ing
stable appropriately?

>
> regards,
> dan carpenter
>
> --
> To unsubscribe from this group and stop receiving emails from it, send an email to kernel-team+unsubscribe@android.com.
>
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
