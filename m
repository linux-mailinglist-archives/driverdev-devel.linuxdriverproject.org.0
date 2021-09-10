Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id E60E2406775
	for <lists+driverdev-devel@lfdr.de>; Fri, 10 Sep 2021 09:05:02 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2547982EC7;
	Fri, 10 Sep 2021 07:05:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 23qRur-EAFHo; Fri, 10 Sep 2021 07:05:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 888278275C;
	Fri, 10 Sep 2021 07:04:59 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id C9D711BF2F5
 for <devel@linuxdriverproject.org>; Fri, 10 Sep 2021 07:04:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id C3B0260599
 for <devel@linuxdriverproject.org>; Fri, 10 Sep 2021 07:04:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=chromium.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id xItbifa4iPhz for <devel@linuxdriverproject.org>;
 Fri, 10 Sep 2021 07:04:48 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ej1-x632.google.com (mail-ej1-x632.google.com
 [IPv6:2a00:1450:4864:20::632])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 1BD2D6064D
 for <devel@driverdev.osuosl.org>; Fri, 10 Sep 2021 07:04:48 +0000 (UTC)
Received: by mail-ej1-x632.google.com with SMTP id bt14so2270184ejb.3
 for <devel@driverdev.osuosl.org>; Fri, 10 Sep 2021 00:04:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=3H4oKYSFY56M3qiNXBl+wyXrV3Q3fK7XNGLdUGoxRYk=;
 b=XEF2dNRdTYcFZ49M5pLnNkQGCRME+D2yb6K0sa6lGGehvguZSeR4VYKb/SB8dsl55o
 MlQTLsfMEN8dRH9TY0LM2p/S2GDgMWhlby19cOyAfHiNLd7xfwmOpibfUxAIpxDDSWVk
 LfuzFhM/z4WSSobVjz8ZB+zSRJ86BWQd2cxWo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=3H4oKYSFY56M3qiNXBl+wyXrV3Q3fK7XNGLdUGoxRYk=;
 b=xfS1e5JV8YXo8NkP8UCGXTtcBOg3z6jG8goDjbcqet1re6SZwKWGIuzn3hQWiVURGr
 MtDO4gGcYyvs27VR1s/abThzxmuCAkHsEdQTiFHRepnAJJdQO2rkel93xFzocIpdh8Vf
 07G+WMjQaXVJINCWS14yZXGDax88fLfB+y7bsKIA+UDI8TqPUzT1YvdzWsypphNSTCyI
 MA1tBqRj5qX084F6SnIWxUS0YBOl0Iqk9pHVxYsTlfG+188ESqLZY3dtx8PVIunhlCgL
 3NcEiO9JEx/znNaKHVyGiOLKU1MPgoWtoa/w02Ti0Qp9PazRDfa+M+WpUQU8Cev2jgT6
 MjnA==
X-Gm-Message-State: AOAM533gtrJ/qRQL/9zOdfwrwSpPGB6Wh85OsvDor6i7S7xni+0usJzR
 hipgsQXz+G+nMaYYAXmv2T4GTFBRge+sziUT3wp8NA==
X-Google-Smtp-Source: ABdhPJzdvpHts5YmnwO9zUbLdQPaUX6UVtZstq71FhyxXpicJP5fSXyIB9Z/lapxzFeS24WqtJwASK/He71YVJeakGo=
X-Received: by 2002:a17:906:180a:: with SMTP id
 v10mr8039021eje.112.1631257486397; 
 Fri, 10 Sep 2021 00:04:46 -0700 (PDT)
MIME-Version: 1.0
References: <20210909232141.2489691-1-dualli@chromium.org>
 <20210909232141.2489691-2-dualli@chromium.org>
 <20210910060251.GC7203@kadam>
In-Reply-To: <20210910060251.GC7203@kadam>
From: Li Li <dualli@chromium.org>
Date: Fri, 10 Sep 2021 00:04:35 -0700
Message-ID: <CANBPYPgCUgjpX38dNR+SyPVBUTF_go0saTmitO_z+Ox3AgkCdg@mail.gmail.com>
Subject: Re: [PATCH v1 1/1] binder: fix freeze race
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
Cc: Li Li <dualli@google.com>,
 "open list:ANDROID DRIVERS" <devel@driverdev.osuosl.org>,
 Android Kernel Team <kernel-team@android.com>,
 Greg KH <gregkh@linuxfoundation.org>, LKML <linux-kernel@vger.kernel.org>,
 "Joel Fernandes \(Google\)" <joel@joelfernandes.org>,
 =?UTF-8?B?QXJ2ZSBIasO4bm5ldsOlZw==?= <arve@android.com>,
 Martijn Coenen <maco@google.com>, Hridya Valsaraju <hridya@google.com>,
 Suren Baghdasaryan <surenb@google.com>,
 Christian Brauner <christian@brauner.io>, Todd Kjos <tkjos@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Thu, Sep 9, 2021 at 11:03 PM Dan Carpenter <dan.carpenter@oracle.com> wrote:
>
> On Thu, Sep 09, 2021 at 04:21:41PM -0700, Li Li wrote:
> > @@ -4648,6 +4647,22 @@ static int binder_ioctl_get_node_debug_info(struct binder_proc *proc,
> >       return 0;
> >  }
> >
> > +static int binder_txns_pending(struct binder_proc *proc)
> > +{
> > +     struct rb_node *n;
> > +     struct binder_thread *thread;
> > +
> > +     if (proc->outstanding_txns > 0)
> > +             return 1;
>
> Make this function bool.

Will include the change (as well as the extra ->outstanding_txns
check) in the next revision.
>
> > +
> > +     for (n = rb_first(&proc->threads); n; n = rb_next(n)) {
> > +             thread = rb_entry(n, struct binder_thread, rb_node);
> > +             if (thread->transaction_stack)
> > +                     return 1;
> > +     }
> > +     return 0;
> > +}
> > +
> >  static int binder_ioctl_freeze(struct binder_freeze_info *info,
> >                              struct binder_proc *target_proc)
> >  {
> > @@ -4682,6 +4697,14 @@ static int binder_ioctl_freeze(struct binder_freeze_info *info,
> >       if (!ret && target_proc->outstanding_txns)
> >               ret = -EAGAIN;
>
> These two lines can be deleted now because binder_txns_pending() checks
> ->outstanding_txns.
>

Thanks,
Li
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
