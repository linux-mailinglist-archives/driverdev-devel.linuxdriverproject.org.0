Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id F2CE423A141
	for <lists+driverdev-devel@lfdr.de>; Mon,  3 Aug 2020 10:46:42 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 90DF5204D6;
	Mon,  3 Aug 2020 08:46:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id H5mxjbC5kDX8; Mon,  3 Aug 2020 08:46:39 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 37854204AD;
	Mon,  3 Aug 2020 08:46:35 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 00D3A1BF2CD
 for <devel@linuxdriverproject.org>; Mon,  3 Aug 2020 08:46:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id F117685A46
 for <devel@linuxdriverproject.org>; Mon,  3 Aug 2020 08:46:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id WaM-gb7d-fuW for <devel@linuxdriverproject.org>;
 Mon,  3 Aug 2020 08:46:31 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ot1-f68.google.com (mail-ot1-f68.google.com
 [209.85.210.68])
 by whitealder.osuosl.org (Postfix) with ESMTPS id E7494859C2
 for <devel@driverdev.osuosl.org>; Mon,  3 Aug 2020 08:46:30 +0000 (UTC)
Received: by mail-ot1-f68.google.com with SMTP id o72so21764187ota.11
 for <devel@driverdev.osuosl.org>; Mon, 03 Aug 2020 01:46:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Ldpq9lUOsWhKwe/FZyOZtBINOPkrHNfkHnfcPwlRPCU=;
 b=WpMWmZ08n26KnNJ8Kee1MYAG1Jm/zPcTsurcm70Oz6QCv5oFfJJeXvq3VcoC9Bqmp3
 ZwUe+YLsT+FIs/9kGKQtxteKlRXHSSQ+XStDVRPK0FJ9rDWqULujkoduvfNvMAyy0GOg
 NoXxh8OaGSL/tRiXvcDRUH0pjdIKGIrcWXdgMqadI1W4uKjz2xIadtm/umq1TPcJ2dwv
 x921GXZ22H8R3fB7B0gACzntSyHHPZ4Uep08cGKEx1pE00WBaNIlW5skBV0VR9xSPFsw
 +/MQUrW8/mEWr+pwjxhIKc3bVJJhFwBIXZ+8+jfHudxJdG2f4k8YUNGYS662utnJkUBW
 AW1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Ldpq9lUOsWhKwe/FZyOZtBINOPkrHNfkHnfcPwlRPCU=;
 b=AYpVvd3Rx748/UEpowhWgNejzHS7JcHd50K1kiM+GXwGoaSvnZQaDO2s0mKqO2g4Vm
 F0NLTU478YN+Ke0tvdlmEsIZFOBcVm4Poda4wESb2t4Mpdtho//LycFl0c0IKv2Cufub
 o64VDSdu9RZgfQ/gWE0K1D87lqz0oHIlMQEJ6Bdqn6QWMJTTieSckd3nIgLf4M1Rnp2C
 DoYaQtxTg4gISRRFa9vhTv4wlVakwRdBVhWwyxXd2DjO0zuQIp+JxPOoBfz4TkLzWDYv
 ynnwLOzDQC/P4c7ccxKnfZ6YUCOkm9UAAyhcYi+tHiKvUouMiu4t13V2SWXhpThuyWdk
 ud/Q==
X-Gm-Message-State: AOAM531XpfxrfFzzL71ci86er4iF8abnY3rQliImpkgn72Ayc340gOkI
 SvVEsr/c5cNiGKKmrOlIl6VC9XlBbhCdADbngeo=
X-Google-Smtp-Source: ABdhPJywEIvpuyitAoDTtD0/wC6yQxi+TGZF6FmBDXPPZy9GwNZrNEeGyjiIoXvh3WcLO7UKIwA2uajhqG5WgWac/6c=
X-Received: by 2002:a05:6830:1c65:: with SMTP id
 s5mr12486238otg.264.1596444390081; 
 Mon, 03 Aug 2020 01:46:30 -0700 (PDT)
MIME-Version: 1.0
References: <20200716030847.1564131-1-keescook@chromium.org>
 <87h7tpa3hg.fsf@nanos.tec.linutronix.de> <202007301113.45D24C9D@keescook>
In-Reply-To: <202007301113.45D24C9D@keescook>
From: Allen <allen.lkml@gmail.com>
Date: Mon, 3 Aug 2020 14:16:15 +0530
Message-ID: <CAOMdWSJQKHAWY1P297b9koOLd8sVtezEYEyWGtymN1YeY27M6A@mail.gmail.com>
Subject: Re: [PATCH 0/3] Modernize tasklet callback API
To: Kees Cook <keescook@chromium.org>
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
Cc: devel@driverdev.osuosl.org, linux-s390@vger.kernel.org,
 alsa-devel@alsa-project.org, Oscar Carter <oscar.carter@gmx.com>,
 Kernel Hardening <kernel-hardening@lists.openwall.com>,
 Peter Zijlstra <peterz@infradead.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-usb@vger.kernel.org,
 linux-kernel@vger.kernel.org, netdev@vger.kernel.org,
 linux-input@vger.kernel.org, kgdb-bugreport@lists.sourceforge.net,
 Thomas Gleixner <tglx@linutronix.de>, Romain Perier <romain.perier@gmail.com>,
 Will Deacon <will@kernel.org>, "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Kees,

>
> [heavily trimmed CC list because I think lkml is ignoring this
> thread...]
>
> On Thu, Jul 30, 2020 at 09:03:55AM +0200, Thomas Gleixner wrote:
> > Kees,
> >
> > Kees Cook <keescook@chromium.org> writes:
> > > This is the infrastructure changes to prepare the tasklet API for
> > > conversion to passing the tasklet struct as the callback argument instead
> > > of an arbitrary unsigned long. The first patch details why this is useful
> > > (it's the same rationale as the timer_struct changes from a bit ago:
> > > less abuse during memory corruption attacks, more in line with existing
> > > ways of doing things in the kernel, save a little space in struct,
> > > etc). Notably, the existing tasklet API use is much less messy, so there
> > > is less to clean up.
> > >
> > > It's not clear to me which tree this should go through... Greg since it
> > > starts with a USB clean-up, -tip for timer or interrupt, or if I should
> > > just carry it. I'm open to suggestions, but if I don't hear otherwise,
> > > I'll just carry it.
> > >
> > > My goal is to have this merged for v5.9-rc1 so that during the v5.10
> > > development cycle the new API will be available. The entire tree of
> > > changes is here[1] currently, but to split it up by maintainer the
> > > infrastructure changes need to be landed first.
> > >
> > > Review and Acks appreciated! :)
> >
> > I'd rather see tasklets vanish from the planet completely, but that's
> > going to be a daring feat. So, grudgingly:
>
> Understood! I will update the comments near the tasklet API.
>
> > Acked-by: Thomas Gleixner <tglx@linutronix.de>
>

Here's the series re-based on top of 5.8
https://github.com/allenpais/tasklets/tree/V3

Let me know how you would want these to be reviewed.

Also, I was thinking if removing tasklets completely could be a task
on KSPP wiki. If yes, I did like to take ownership of that task. I have a
couple of ideas in mind, which could be discussed in a separate email.

Thanks.

-- 
       - Allen
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
