Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D0A8409A87
	for <lists+driverdev-devel@lfdr.de>; Mon, 13 Sep 2021 19:19:07 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8E3BE80DAA;
	Mon, 13 Sep 2021 17:19:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id SFt5QvycGooo; Mon, 13 Sep 2021 17:19:04 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id C27A180C6A;
	Mon, 13 Sep 2021 17:19:03 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 176DA1BF342
 for <devel@linuxdriverproject.org>; Mon, 13 Sep 2021 17:18:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 04CFB80B82
 for <devel@linuxdriverproject.org>; Mon, 13 Sep 2021 17:18:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Egg07_yLua-8 for <devel@linuxdriverproject.org>;
 Mon, 13 Sep 2021 17:18:50 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ej1-x629.google.com (mail-ej1-x629.google.com
 [IPv6:2a00:1450:4864:20::629])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 46B4580EFA
 for <devel@driverdev.osuosl.org>; Mon, 13 Sep 2021 17:18:50 +0000 (UTC)
Received: by mail-ej1-x629.google.com with SMTP id n27so22645891eja.5
 for <devel@driverdev.osuosl.org>; Mon, 13 Sep 2021 10:18:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=E4YV9pWz0lzIhd+YfUEnVg61Zq9n7qhIbQA2SNDsEUM=;
 b=aSiTbWmdIw42qZxE1KiBIhTgkbMfBjVrSueGpx83IEEmRKPYwwdohg4G0zgNEjiaBf
 A3N97HrRIEH2iD6tSJfHS8j5OGEK+66a511MEjXsXtNWqdezha/rvXl5wamCr7dJwxQx
 d9CeFkTGUlgcU9SxmAR/UJ8k4pcs4AJ06INUU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=E4YV9pWz0lzIhd+YfUEnVg61Zq9n7qhIbQA2SNDsEUM=;
 b=iW0y0ITYVW6FSHa4q+209JaAEZX92tXwpBP3uKTDD930ReYEcxN7DOFPdUIBmzAGW9
 sHJNFF3G4lsZP5kGJl5sz0+AN55zRPako0KO6JszQTONNEEtJ52f/Tk5WYCcwxNV7FFW
 Z1p2ml3qah4Vn9ZPA43n5MxZ2G08+LxerveNj2ClRsRcwUo8Ad+7Kkkw2xKG7WX3QCXP
 JDoekNGB3RhjMbtcWfv2M7XeZe1YzWqYfVxMLs91hj8I4m+Gu+jfFLrdoRIwVjlEl2f2
 Fi9nx5/OdPoiqdjeVepKy29qrfy83SQRj0EX6qQYERqWYaLtv98nZnSOXSqa1tRc16nV
 GvhA==
X-Gm-Message-State: AOAM533Q1W0OSnS2irGMmEr7jr2dNPjT2SgX4T3PQ+Uy+AHzY1gE42wu
 7Hsg/Xj4dGRBWNRpHSjhZ9epvFq+gGc4AIMutAWDFA==
X-Google-Smtp-Source: ABdhPJwBy8jiqgfcAsdKhFh7QuDYJ3+JmILc5ugmtBhg0/74DjYdhgfPxLMM30DsebTSQCj+//8TUAX53O4nxwlqvFg=
X-Received: by 2002:a17:906:180a:: with SMTP id
 v10mr14105396eje.112.1631553528438; 
 Mon, 13 Sep 2021 10:18:48 -0700 (PDT)
MIME-Version: 1.0
References: <20210910035316.2873554-1-dualli@chromium.org>
 <20210910035316.2873554-2-dualli@chromium.org>
 <YTrvMSm2oB91IhuK@kroah.com>
 <CANBPYPgEbFusdyrcV1EqridahQGTH7X=s8ufUA9SMR8SefAO2g@mail.gmail.com>
 <YTsF9OC4QEMl2wp7@kroah.com>
In-Reply-To: <YTsF9OC4QEMl2wp7@kroah.com>
From: Li Li <dualli@chromium.org>
Date: Mon, 13 Sep 2021 10:18:37 -0700
Message-ID: <CANBPYPgxSVPxiThHsnCjrf7m+GbZJvszRUqas4fHD6LEoNiD9w@mail.gmail.com>
Subject: Re: [PATCH v2 1/1] binder: fix freeze race
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
Cc: Li Li <dualli@google.com>,
 "open list:ANDROID DRIVERS" <devel@driverdev.osuosl.org>,
 Suren Baghdasaryan <surenb@google.com>, LKML <linux-kernel@vger.kernel.org>,
 Hridya Valsaraju <hridya@google.com>,
 =?UTF-8?B?QXJ2ZSBIasO4bm5ldsOlZw==?= <arve@android.com>,
 Martijn Coenen <maco@google.com>,
 "Joel Fernandes \(Google\)" <joel@joelfernandes.org>,
 Android Kernel Team <kernel-team@android.com>,
 Christian Brauner <christian@brauner.io>, Todd Kjos <tkjos@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Fri, Sep 10, 2021 at 12:15 AM Greg KH <gregkh@linuxfoundation.org> wrote:
>
> On Thu, Sep 09, 2021 at 11:17:42PM -0700, Li Li wrote:
> > On Thu, Sep 9, 2021 at 10:38 PM Greg KH <gregkh@linuxfoundation.org> wrote:
> > >
> > > On Thu, Sep 09, 2021 at 08:53:16PM -0700, Li Li wrote:
> > > >  struct binder_frozen_status_info {
> > > >       __u32            pid;
> > > > +
> > > > +     /* process received sync transactions since last frozen
> > > > +      * bit 0: received sync transaction after being frozen
> > > > +      * bit 1: new pending sync transaction during freezing
> > > > +      */
> > > >       __u32            sync_recv;
> > >
> > > You just changed a user/kernel api here, did you just break existing
> > > userspace applications?  If not, how did that not happen?
> > >
> >
> > That's a good question. This design does keep backward compatibility.
> >
> > The existing userspace applications call ioctl(BINDER_GET_FROZEN_INFO)
> > to check if there's sync or async binder transactions sent to a frozen
> > process.
> >
> > If the existing userspace app runs on a new kernel, a sync binder call
> > still sets bit 1 of sync_recv (as it's a bool variable) so the ioctl
> > will return the expected value (TRUE). The app just doesn't check bit
> > 1 intentionally so it doesn't have the ability to tell if there's a
> > race - this behavior is aligned with what happens on an old kernel as
> > the old kernel doesn't have bit 1 set at all.
> >
> > The bit 1 of sync_recv enables new userspace app the ability to tell
> > 1) there's a sync binder transaction happened when being frozen - same
> > as before; and 2) if that sync binder transaction happens exactly when
> > there's a race - a new information for rollback decision.
>
> Ah, can you add that to the changelog text to make it more obvious?
>
Sure, added that to V3, plus other minor improvements listed in the cover
letter. Please let me know if there's anything else I should continue
to improve.

https://lore.kernel.org/lkml/20210910164210.2282716-1-dualli@chromium.org/

BTW, I had a stress test running, repeatedly freezing and unfreezing a
couple apps every second, which at the same time initiates new binder
transactions in a loop. The overnight stress test during the past
weekend showed positive results. Without this kernel patch, the reply
transaction will fail in tens of iterations. With this kernel patch
and the corresponding user space fix (rescheduling the freeze op to
next second in case race happens), the stress test runs for 24hrs
without a single failure.

Thanks,
Li
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
