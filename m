Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id BFA98A86B6
	for <lists+driverdev-devel@lfdr.de>; Wed,  4 Sep 2019 18:51:53 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id E312D869EA;
	Wed,  4 Sep 2019 16:51:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id zhb4h0QMJXwy; Wed,  4 Sep 2019 16:51:51 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 7554486142;
	Wed,  4 Sep 2019 16:51:50 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 86AA51BF841
 for <devel@linuxdriverproject.org>; Wed,  4 Sep 2019 16:51:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 824138575E
 for <devel@linuxdriverproject.org>; Wed,  4 Sep 2019 16:51:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id DJsMQR2U7Yxf for <devel@linuxdriverproject.org>;
 Wed,  4 Sep 2019 16:51:47 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ot1-f68.google.com (mail-ot1-f68.google.com
 [209.85.210.68])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 2C38586142
 for <devel@driverdev.osuosl.org>; Wed,  4 Sep 2019 16:51:47 +0000 (UTC)
Received: by mail-ot1-f68.google.com with SMTP id 97so18454505otr.4
 for <devel@driverdev.osuosl.org>; Wed, 04 Sep 2019 09:51:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=MlIv6DeXLkg4uR1/sPKQNkLhMSuShpHchXiSAIDmZ0E=;
 b=N8PIZnJHFOI8JoHe9sxqWDMgOn4GZ6iQqYjA020wCxu3o7sOm/6bIQk9/8EoQ+OeZa
 AKLFKYYU9+YgR34WalofuXjHVk6yw6IoIL/Fa+YtH3YhWpsdBH7FzVe7fsFuvrCQEccM
 mHW9Zd3+Rsd8IZLmjvjy1WCd/QoQ/gIbtTdIArWVI8DqvE6tfdZaK9Rb/8sy6Ko7Q2l7
 O0vbYxXouuJ3S45WM6Wj2vdWqPqDplGZJCnyPjhwGI2HRdgKWyAouB0OFCvt3NiuPEqQ
 WxMXHJU7nUBKYXRaaM02KRIQoeMN+HtidM91MfhREDtcBhB71gvzzc8Nx78tAhdmlFfu
 Pvww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=MlIv6DeXLkg4uR1/sPKQNkLhMSuShpHchXiSAIDmZ0E=;
 b=FfJB7bE6Zv6JR2FwXnATMmvqFeIJbz7NMqSoQUxU5EbZkg866DZ7ZVl89dSbLhdc1S
 te/Hhx4ArgZ8xxTXb7LaOwOoWyei1JNkQEa4Zy/htt6TvR+2PVeathlKMuqs5BN9GYYO
 5coYj0hUIhwSmmdxSPA2/aO332CScDkQnHGexr9pyYlDXcpT8mjft+U28PGbB3i3fnqd
 c1H+At3MReXWT12CrTzjwH5oOa2esGLiAxgCM7/6X1+R/nFJ7/zOKky1AfYH71W6uzzu
 kLkKw3csaPg65g3f2Ddp6hNJfAmfOHkk5tpNYYGXCMvv8Pw88ScGwvagSnepdkvgkPQu
 Q12g==
X-Gm-Message-State: APjAAAVv3GZJMiODYkw2hY9eFFdSmEtW/b6EeVseIDIy8Jo57aFoo7bZ
 AIw/1SijE2R7PTx112nI3hVsyevDixV+KAGGk4vQqQ==
X-Google-Smtp-Source: APXvYqydoIKXu3gB6t4ZJpZ6BjNALeXpBGBsWdQ9ycCVnj7lK23s91IiGy8iCWh0qHMq+IHITd+wqHt/tVATfORbQoA=
X-Received: by 2002:a05:6830:1bc3:: with SMTP id
 v3mr14369770ota.97.1567615906001; 
 Wed, 04 Sep 2019 09:51:46 -0700 (PDT)
MIME-Version: 1.0
References: <20190903161655.107408-1-hridya@google.com>
 <20190904111934.ya37tlzqjqvt7h6a@wittgenstein>
 <CAEXW_YSj5tdykM8txae66zd0jX_aJujrnS4jG=fHWRvCH7aR7w@mail.gmail.com>
 <20190904144903.GA30432@kroah.com>
 <20190904151212.wolcug25ozytp4bw@wittgenstein>
In-Reply-To: <20190904151212.wolcug25ozytp4bw@wittgenstein>
From: Hridya Valsaraju <hridya@google.com>
Date: Wed, 4 Sep 2019 09:51:09 -0700
Message-ID: <CA+wgaPNGPtxVUTBeNKYTd3R8uJdY8jmD8PA=uR1vvAYG2R_Ebw@mail.gmail.com>
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
 Todd Kjos <tkjos@android.com>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 LKML <linux-kernel@vger.kernel.org>,
 =?UTF-8?B?QXJ2ZSBIasO4bm5ldsOlZw==?= <arve@android.com>,
 Martijn Coenen <maco@android.com>, Joel Fernandes <joel@joelfernandes.org>,
 kernel-team <kernel-team@android.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Wed, Sep 4, 2019 at 8:12 AM Christian Brauner
<christian.brauner@ubuntu.com> wrote:
>
> On Wed, Sep 04, 2019 at 04:49:03PM +0200, Greg Kroah-Hartman wrote:
> > On Wed, Sep 04, 2019 at 10:20:32AM -0400, Joel Fernandes wrote:
> > > On September 4, 2019 7:19:35 AM EDT, Christian Brauner
> > > <christian.brauner@ubuntu.com> wrote:
> > > >On Tue, Sep 03, 2019 at 09:16:51AM -0700, Hridya Valsaraju wrote:
> > > >> Currently, the only way to access binder state and
> > > >> statistics is through debugfs. We need a way to
> > > >> access the same even when debugfs is not mounted.
> > > >> These patches add a mount option to make this
> > > >> information available in binderfs without affecting
> > > >> its presence in debugfs. The following debugfs nodes
> > > >> will be made available in a binderfs instance when
> > > >> mounted with the mount option 'stats=global' or 'stats=local'.
> > > >>
> > > >>  /sys/kernel/debug/binder/failed_transaction_log
> > > >>  /sys/kernel/debug/binder/proc
> > > >>  /sys/kernel/debug/binder/state
> > > >>  /sys/kernel/debug/binder/stats
> > > >>  /sys/kernel/debug/binder/transaction_log
> > > >>  /sys/kernel/debug/binder/transactions
> > > >
> > > >Acked-by: Christian Brauner <christian.brauner@ubuntu.com>
> > > >
> > > >Btw, I think your counting is off-by-one. :) We usually count the
> > > >initial send of a series as 0 and the first rework of that series as
> > > >v1.
> > > >I think you counted your initial send as v1 and the first rework as v2.
> > >
> > > Which is fine. I have done it both ways. Is this a rule written somewhere?
> >
> > No where, I can count both ways, it's not a big deal :)
>
> It isn't documented (as many things we still do are) and it's not a big
> deal. But most people seem to be counting revisions starting from 0 it
> seems. I went looking for previous version to link to in the patch cover
> letter and was confused because I was missing a v1. :)
>
> Anyway, I'm happy that Hridya landed this! It was fun helping her the
> last couple of weeks on- and off-list. Thanks for getting this done! I
> hope we'll see even more patches in the future. :)

Thank you so much Christian and Todd for the guidance and thorough
reviews on the many patches I sent your way both on and off-list :) I
really appreciate it!

>
> Christian
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
