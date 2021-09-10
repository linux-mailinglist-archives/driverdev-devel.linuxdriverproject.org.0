Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 7072B406724
	for <lists+driverdev-devel@lfdr.de>; Fri, 10 Sep 2021 08:18:09 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 64A3F4042F;
	Fri, 10 Sep 2021 06:18:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id wAKLAqKn2JFk; Fri, 10 Sep 2021 06:18:06 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id BB9A240391;
	Fri, 10 Sep 2021 06:18:05 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 3FB501BF352
 for <devel@linuxdriverproject.org>; Fri, 10 Sep 2021 06:17:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 2CE8640179
 for <devel@linuxdriverproject.org>; Fri, 10 Sep 2021 06:17:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=chromium.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id UdWDdh5-Fm18 for <devel@linuxdriverproject.org>;
 Fri, 10 Sep 2021 06:17:55 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ed1-x52a.google.com (mail-ed1-x52a.google.com
 [IPv6:2a00:1450:4864:20::52a])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 352BC400EE
 for <devel@driverdev.osuosl.org>; Fri, 10 Sep 2021 06:17:55 +0000 (UTC)
Received: by mail-ed1-x52a.google.com with SMTP id u19so929449edb.3
 for <devel@driverdev.osuosl.org>; Thu, 09 Sep 2021 23:17:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=iPswZAW7o0vaf27MkZYYDJ2cBqEgZHCY6/Z7/D3pu6Y=;
 b=OIG72E4XQRFTroK4LjVAqB9sdceeW3kBBgRmk22e5RESV1QFT1tqZTIpOXM53SNVth
 5Y69qV6WAqZ7hrRauk3WQEWhFS5h6hKeL0s7X9tIcQ8Yl1zq3E9PJLXakvfH+j8d8CCt
 dbP/q4atNyVOxNoB8cdG6eykTxR7n3JZbKWSw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=iPswZAW7o0vaf27MkZYYDJ2cBqEgZHCY6/Z7/D3pu6Y=;
 b=Ay1rXmkY0Rs6mfPR1ckdmKpw18GwIRwjTp/pCT8TPYmtS4mxy8obDVduQ1RCv4CZ+h
 MmpNw7QdCxCBMU6u4DHk3b/ZOwp0hq21/cFwmBIx9WIYzxpq03JpZP5u0UbI+ytbANDj
 mFEuU45QJ3yn/9RvCKcH2hbsl0oIrqLHYYB7/kRtJebNmGzYfNrJzWcOXJc7rZLkvvMw
 PDS7Ya3wVMaSUTYk672OODrZN0q2u2HpvgJDg3Erajxd9J9m++KPZqQFN5dshuedhiBH
 VQ+t+Zy/sC1//WURN3C3b7g59uN/YRZfCOP8+0s7IwO4Z3PSI54K5cEtR6ynIRGxDGNC
 E2kQ==
X-Gm-Message-State: AOAM533D3rml7D9eFny+JYkyUO2xCO4Zs6MCNIMc9idV8hdbGx2PxwEB
 Gyrgtgk41zrH2zRbVtnkHZLgfICaIJmS1mcQWrhbVQ==
X-Google-Smtp-Source: ABdhPJz2hNYb7IsJ/Z8ul3E6XYe/l4+sdHrR6jy4LrPlGs8rfMGdv5WmctwUjSEI2TNaaGaZkKTfcXcMz1tOeHWCFCA=
X-Received: by 2002:a50:ed09:: with SMTP id j9mr7227355eds.164.1631254673244; 
 Thu, 09 Sep 2021 23:17:53 -0700 (PDT)
MIME-Version: 1.0
References: <20210910035316.2873554-1-dualli@chromium.org>
 <20210910035316.2873554-2-dualli@chromium.org>
 <YTrvMSm2oB91IhuK@kroah.com>
In-Reply-To: <YTrvMSm2oB91IhuK@kroah.com>
From: Li Li <dualli@chromium.org>
Date: Thu, 9 Sep 2021 23:17:42 -0700
Message-ID: <CANBPYPgEbFusdyrcV1EqridahQGTH7X=s8ufUA9SMR8SefAO2g@mail.gmail.com>
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
 Android Kernel Team <kernel-team@android.com>,
 LKML <linux-kernel@vger.kernel.org>,
 "Joel Fernandes \(Google\)" <joel@joelfernandes.org>,
 =?UTF-8?B?QXJ2ZSBIasO4bm5ldsOlZw==?= <arve@android.com>,
 Martijn Coenen <maco@google.com>, Hridya Valsaraju <hridya@google.com>,
 Suren Baghdasaryan <surenb@google.com>,
 Christian Brauner <christian@brauner.io>, Todd Kjos <tkjos@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Thu, Sep 9, 2021 at 10:38 PM Greg KH <gregkh@linuxfoundation.org> wrote:
>
> On Thu, Sep 09, 2021 at 08:53:16PM -0700, Li Li wrote:
> >  struct binder_frozen_status_info {
> >       __u32            pid;
> > +
> > +     /* process received sync transactions since last frozen
> > +      * bit 0: received sync transaction after being frozen
> > +      * bit 1: new pending sync transaction during freezing
> > +      */
> >       __u32            sync_recv;
>
> You just changed a user/kernel api here, did you just break existing
> userspace applications?  If not, how did that not happen?
>

That's a good question. This design does keep backward compatibility.

The existing userspace applications call ioctl(BINDER_GET_FROZEN_INFO)
to check if there's sync or async binder transactions sent to a frozen
process.

If the existing userspace app runs on a new kernel, a sync binder call
still sets bit 1 of sync_recv (as it's a bool variable) so the ioctl
will return the expected value (TRUE). The app just doesn't check bit
1 intentionally so it doesn't have the ability to tell if there's a
race - this behavior is aligned with what happens on an old kernel as
the old kernel doesn't have bit 1 set at all.

The bit 1 of sync_recv enables new userspace app the ability to tell
1) there's a sync binder transaction happened when being frozen - same
as before; and 2) if that sync binder transaction happens exactly when
there's a race - a new information for rollback decision.

> thanks,
>
> greg k-h

Thanks,
Li
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
