Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 48A95C0AD8
	for <lists+driverdev-devel@lfdr.de>; Fri, 27 Sep 2019 20:11:58 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id A35808815C;
	Fri, 27 Sep 2019 18:11:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id wVfaRTfVHKBQ; Fri, 27 Sep 2019 18:11:55 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 1FF5688072;
	Fri, 27 Sep 2019 18:11:55 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 860961BF5F8
 for <devel@linuxdriverproject.org>; Fri, 27 Sep 2019 18:11:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 82C3488072
 for <devel@linuxdriverproject.org>; Fri, 27 Sep 2019 18:11:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id wzGmRe2GLkUe for <devel@linuxdriverproject.org>;
 Fri, 27 Sep 2019 18:11:53 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-oi1-f196.google.com (mail-oi1-f196.google.com
 [209.85.167.196])
 by hemlock.osuosl.org (Postfix) with ESMTPS id ED9838804A
 for <devel@driverdev.osuosl.org>; Fri, 27 Sep 2019 18:11:52 +0000 (UTC)
Received: by mail-oi1-f196.google.com with SMTP id k20so5993835oih.3
 for <devel@driverdev.osuosl.org>; Fri, 27 Sep 2019 11:11:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=q8kRfB6Xbx6rONHxkGZUp3ildhXAQqVjOW7WQXlNe9c=;
 b=NWjzuJPo75rsgo5G56HU/2/h2qK1okO3pcWY3vt8StqVx/qozBdXqH634meZ0UGMdn
 nU4q5GfO73QiuCRk9uFpoj5a9t/dvREvcATdEIBeSvUwYdElXR8rdnxrIs7cWlnxAfSr
 6xX63Iq4slc1fSyCIjLRLqYsxovQT+S8VFelJMhcbB2A+QQ4OQgj1Ql+WgCof5ks5K0F
 7BsoWuPC/YoFI5nMFIAp74KR75NwF0piRQd5xeu9LD5QQKFhZwNe79XNK8n07x8iw5Wd
 fQXef2ZlcvYdzNVyxV19HNKy0p6DOqkAra1+uR2Ej/umCMcTegv4vjZTN8Tg6FRwoFVT
 36ww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=q8kRfB6Xbx6rONHxkGZUp3ildhXAQqVjOW7WQXlNe9c=;
 b=P1UXhuJoIcGyQYDUEVjiEdxw4DK/EObJEr2pMxMQi/azIe0NJ2xC5z3KWG3dVFf+4R
 I74OSC2UBENKJK1RoVQ3rw5+6Uc9O3GRI6MODuPQVsdXnlywto1apzTvaYf2l4fuufi1
 VR40DaKTIkgmtchIbh1JsKXMo2JlXeAvEINZ2dq+z80Res+9Fba56QdS6ZPjBgxY7FCl
 Yjt8/YpQjcHVOoFIA93Xt5G8+21OMNbJFTtxfmvd9DgGniKfVmpK18Efrm1r4hvx1xtx
 QlisFn4+gteN3Wz+vb9QzEP1XpgLgBL445Oj1lHBOkSj5nHBzzUJEzH0sREls7BxXk/e
 ugwA==
X-Gm-Message-State: APjAAAX3nJ8+sSjljE7Q59kSrPH4NpyPrVXvmkxhlCnpGFVYUMZKssTq
 2/z2PEA88+0NCgSxJZvJtpxJ/DYTCmwQRSVQA14JrA==
X-Google-Smtp-Source: APXvYqxa/HQwyqFY+PrO8PtAIp9ocTiHRnYqhCvUg365RqzUOv4C4iCm/gM8o7RDuvh7NpN/PqvZT0SKn7GbIOJ0uNM=
X-Received: by 2002:aca:d887:: with SMTP id p129mr8394743oig.92.1569607911837; 
 Fri, 27 Sep 2019 11:11:51 -0700 (PDT)
MIME-Version: 1.0
References: <20190903161655.107408-1-hridya@google.com>
 <20190927131912.pg7xtyfforiettgx@wittgenstein>
In-Reply-To: <20190927131912.pg7xtyfforiettgx@wittgenstein>
From: Hridya Valsaraju <hridya@google.com>
Date: Fri, 27 Sep 2019 11:11:15 -0700
Message-ID: <CA+wgaPOkMmVHYeKAx3bjBF_Yn=XAA8Jf7CbeJygy8xPTS06NdA@mail.gmail.com>
Subject: Re: [PATCH v3 0/4] Add binder state and statistics to binderfs
To: Christian Brauner <christian.brauner@ubuntu.com>
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
 Android Kernel Team <kernel-team@android.com>, Todd Kjos <tkjos@android.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 LKML <linux-kernel@vger.kernel.org>,
 =?UTF-8?B?QXJ2ZSBIasO4bm5ldsOlZw==?= <arve@android.com>,
 Joel Fernandes <joel@joelfernandes.org>, Martijn Coenen <maco@android.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Fri, Sep 27, 2019 at 6:19 AM Christian Brauner
<christian.brauner@ubuntu.com> wrote:
>
> On Tue, Sep 03, 2019 at 09:16:51AM -0700, Hridya Valsaraju wrote:
> > Currently, the only way to access binder state and
> > statistics is through debugfs. We need a way to
> > access the same even when debugfs is not mounted.
> > These patches add a mount option to make this
> > information available in binderfs without affecting
> > its presence in debugfs. The following debugfs nodes
> > will be made available in a binderfs instance when
> > mounted with the mount option 'stats=global' or 'stats=local'.
> >
> >  /sys/kernel/debug/binder/failed_transaction_log
> >  /sys/kernel/debug/binder/proc
> >  /sys/kernel/debug/binder/state
> >  /sys/kernel/debug/binder/stats
> >  /sys/kernel/debug/binder/transaction_log
> >  /sys/kernel/debug/binder/transactions
>
> I'm sitting in a talk from Jonathan about kernel documentation and what
> I realized is that we forgot to update the documentation I wrote for
> binderfs in Documentation/admin-guide/binderfs.rst to reflect the new
> stats=global mount option. Would be great if we could add that after rc1
> is out. Would you have time to do that, Hridya?

Thanks for catching that Christian, sorry about the miss! I will send
out a patch ASAP to add the documentation.

Regards,
Hridya

>
> Should just be a new entry under:
>
> Options
> -------
> max
>   binderfs instances can be mounted with a limit on the number of binder
>   devices that can be allocated. The ``max=<count>`` mount option serves as
>   a per-instance limit. If ``max=<count>`` is set then only ``<count>`` number
>   of binder devices can be allocated in this binderfs instance.
> stats
>   <description>
>
> Thanks!
> Christian
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
