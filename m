Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 720B61B1691
	for <lists+driverdev-devel@lfdr.de>; Mon, 20 Apr 2020 22:03:56 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id EE4DB86992;
	Mon, 20 Apr 2020 20:03:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id WHZfFSiBdChH; Mon, 20 Apr 2020 20:03:53 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 20D548697D;
	Mon, 20 Apr 2020 20:03:53 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 731B11BF29A
 for <devel@linuxdriverproject.org>; Mon, 20 Apr 2020 20:03:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 6F2E7843BD
 for <devel@linuxdriverproject.org>; Mon, 20 Apr 2020 20:03:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ddIOWglNM+ua for <devel@linuxdriverproject.org>;
 Mon, 20 Apr 2020 20:03:50 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ot1-f65.google.com (mail-ot1-f65.google.com
 [209.85.210.65])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 6FB7384397
 for <devel@driverdev.osuosl.org>; Mon, 20 Apr 2020 20:03:50 +0000 (UTC)
Received: by mail-ot1-f65.google.com with SMTP id i27so9257728ota.7
 for <devel@driverdev.osuosl.org>; Mon, 20 Apr 2020 13:03:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=QmIL5crnJ6coQ/xisfoITs7FajvHe0i8ibpe9qH1tOw=;
 b=xuIILliRNJohVGgFgY8Ms3DxS6dM2StIfONK2qFe0AJUBtvHWTQ+PuLfZ8iVFAaLyl
 FqlWJBi359Otp3AFIB7rdOUDIzzrDAK0yNelRgxBIzrNdfPIjMaIokCtpSNpP2g4X8/V
 2X04SfMv9FkywwCay+XPYQCQmO4Lckm5nPdKUlGRnLQS1AHH2Vj3XqXkvufoH19haXXQ
 ih3EaGimgqsAXoyr7rpJC2k3/5hdLXkwT9rxvWl1xgge15HPAPQ36dA9OgkKz25jB429
 miykesCoC5NyBfgxteOC6N+LQIber5p7oZtX01rwDBFEnvh0pWgkqXfjEQvSTbmavZ+3
 LK9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=QmIL5crnJ6coQ/xisfoITs7FajvHe0i8ibpe9qH1tOw=;
 b=YGO4CJN0bmXqm9sbPX3CCpEiI5I9vgSD0vimqYTuF9SQjk8kw7Bae/YCvHF4oVnhmb
 SIBt611FVlMJmgm5U7FTWAGTLWjaOU7IUnK4Sfz/ZK0N3mEDyt7jAHlRJkacdVDV3kPF
 FB42YVHzG+nmVBJbhXq47R/ue8hA7BarO5ZZgoEajZ6YL5qQ7xystd0vwng3x5Ahlbpt
 RlW1IJ2rB4l2C9QPInjcwwHRfaGjOEKVyPHe9bPm5HY4JGRpv75RbEjJvJSB4bYfCTFm
 7hG0o7bMZ8Yegy3HIvBRAiEtqDtmqBXV/Z2ejnI9IZF7XVEYLQNklh2X9KKV4lKV1unx
 Kvug==
X-Gm-Message-State: AGi0Pua9nni0xJXsY0eHPoresJqTTs+UwCDh1wMIi1jXSTh42OG5scDP
 rBiULECA208MXNvA83td9QnCgRa//LZcVbatg53csQ==
X-Google-Smtp-Source: APiQypK2nqgSukevEMOkrgEiY+Twkm4ExNtv93iL2MCVA6EiSnE9I0/kG/gRCZfwm2sf3tRai+xV044YMqqalBHAyGM=
X-Received: by 2002:a05:6830:22dc:: with SMTP id
 q28mr10406884otc.221.1587413029451; 
 Mon, 20 Apr 2020 13:03:49 -0700 (PDT)
MIME-Version: 1.0
References: <20200414134629.54567-1-orjan.eide@arm.com>
 <20200414141849.55654-1-orjan.eide@arm.com>
 <20200414142810.GA958163@kroah.com>
 <CALAqxLX-SUhHPH6ewt-s9cEMc8DtMTgXem=JruAkLofuJf1syg@mail.gmail.com>
 <20200416102508.GA820251@kroah.com>
 <20200420082207.ui7iyg7dsnred2vv@wittgenstein>
In-Reply-To: <20200420082207.ui7iyg7dsnred2vv@wittgenstein>
From: John Stultz <john.stultz@linaro.org>
Date: Mon, 20 Apr 2020 13:03:39 -0700
Message-ID: <CALAqxLW-txNEqW=P_9VTxvOVu_fgpjzHHDbR5BhtpYwhg1SXgw@mail.gmail.com>
Subject: Re: [PATCH] staging: android: ion: Skip sync if not mapped
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
Cc: driverdevel <devel@driverdev.osuosl.org>, nd <nd@arm.com>,
 Todd Kjos <tkjos@android.com>, Lecopzer Chen <lecopzer.chen@mediatek.com>,
 Arnd Bergmann <arnd@arndb.de>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Laura Abbott <laura@labbott.name>, lkml <linux-kernel@vger.kernel.org>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>,
 =?UTF-8?B?QXJ2ZSBIasO4bm5ldsOlZw==?= <arve@android.com>,
 Anders Pedersen <anders.pedersen@arm.com>,
 Daniel Vetter <daniel.vetter@ffwll.ch>,
 Joel Fernandes <joel@joelfernandes.org>,
 "Darren Hart \(VMware\)" <dvhart@infradead.org>,
 =?UTF-8?Q?=C3=98rjan_Eide?= <orjan.eide@arm.com>,
 Laura Abbott <labbott@redhat.com>, Martijn Coenen <maco@android.com>,
 Sumit Semwal <sumit.semwal@linaro.org>,
 Christian Brauner <christian@brauner.io>, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Mon, Apr 20, 2020 at 1:22 AM Christian Brauner
<christian.brauner@ubuntu.com> wrote:
> On Thu, Apr 16, 2020 at 12:25:08PM +0200, Greg Kroah-Hartman wrote:
> > On Tue, Apr 14, 2020 at 09:41:31PM -0700, John Stultz wrote:
> > > But I do think we can mark it as deprecated and let folks know that
> > > around the end of the year it will be deleted.
> >
> > No one ever notices "depreciated" things, they only notice if the code
> > is no longer there :)
> >
> > So I'm all for just deleting it and seeing who even notices...
>
> Agreed.

I mean, I get there's not much love for ION in staging, and I too am
eager to see it go, but I also feel like in the discussions around
submitting the dmabuf heaps at talks, etc, that there was clear value
in removing ION after a short time so that folks could transition
being able to test both implementations against the same kernel so
performance regressions, etc could be worked out.

I am actively getting many requests for help for vendors who are
looking at dmabuf heaps and are starting the transition process, and
I'm trying my best to motivate them to directly work within the
community so their needed heap functionality can go upstream. But it's
going to be a process, and their first attempts aren't going to
magically land upstream.  I think being able to really compare their
implementations as they iterate and push things upstream will help in
order to be able to have upstream solutions that are also properly
functional for production usage.

The dmabuf heaps have been in an official kernel now for all of three
weeks. So yea, we can "delete [ION] and see who even notices", but I
worry that may seem a bit like contempt for the folks doing the work
on transitioning over, which doesn't help getting them to participate
within the community.

thanks
-john
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
