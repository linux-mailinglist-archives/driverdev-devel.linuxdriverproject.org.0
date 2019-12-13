Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id E2B1811DED4
	for <lists+driverdev-devel@lfdr.de>; Fri, 13 Dec 2019 08:47:44 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 87A3A88AD3;
	Fri, 13 Dec 2019 07:47:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id VBSNlAe2bjPO; Fri, 13 Dec 2019 07:47:43 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 9BAA4889F0;
	Fri, 13 Dec 2019 07:47:42 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id A63091BF2FE
 for <devel@linuxdriverproject.org>; Fri, 13 Dec 2019 07:47:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id A0825889F0
 for <devel@linuxdriverproject.org>; Fri, 13 Dec 2019 07:47:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id iHyz-tX+mLVL for <devel@linuxdriverproject.org>;
 Fri, 13 Dec 2019 07:47:38 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f65.google.com (mail-wm1-f65.google.com
 [209.85.128.65])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 71419889D5
 for <devel@driverdev.osuosl.org>; Fri, 13 Dec 2019 07:47:38 +0000 (UTC)
Received: by mail-wm1-f65.google.com with SMTP id t14so5463621wmi.5
 for <devel@driverdev.osuosl.org>; Thu, 12 Dec 2019 23:47:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=vTSxvUqfa6FoEiQTgKaCRKQ961VVqjF3zVcNDPTqeUQ=;
 b=FygEFXPkvDTEqQFNc95GmEPQFaOALol3FJZVABII8mgatRtgdG31UxBB+q2f85tioV
 YaDq76YgKg19kavCxLDGCXYdqM9e4pt1+h8vMM1af+h493sGTqtu8x0x0Y7pDZ9rZODl
 D0Tmu44OHSSAi7XTfiw3ezo4lLtG/fvqKXr9UP1I7ioXEwEcTuWWl+MwWhGJYbEnMq+w
 ALx7B4du4u7jUwnaaQoo9t+S3X/fO96NeqeTQ28Ffuy5wSsYUMg78UyAtuMEUmLPhSNZ
 lUUoOAhyKE5fSjw0CUYEi+vy/hxr1Eua69Uhw+w3KzjGJP3OD8JUBE+JCzVqCd/mRebH
 8ZnQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=vTSxvUqfa6FoEiQTgKaCRKQ961VVqjF3zVcNDPTqeUQ=;
 b=r/1H/y7CV6imqwZRnWZWTybGlkdjeC1Fd5LZiKSaK/33dvQVIJHdX7OSlPh7Mi/EHa
 vLAOQmKXQstDcoMPLo5mSmd0f4WIK4WibXrFtAQZHSTQQpHUDfF/x/P5l+mmXuG8QFeD
 F5+Mkbs7gVa+DkJX0/VoRXsauL97LyZSH5atIu/fQwohPElZfGVlAuryGgqIxe1upgsp
 pwRnx1BWgeftIGD/ZftirDy5v1qPmIWNxS6jzQ8L7+UVamFqfJV5TvS8HB6xpK+lKUOF
 qC490OLTEArZ5Q67pEdy8zPPCWPkgP9ZgIsPmKcvmCSyDvxCBS6wDHoeh+8jHOwSlwoC
 7KkQ==
X-Gm-Message-State: APjAAAU7amKXvy1uKcafTYF1fiHugyOyqtAFA3IoEETAV22Pv2DGajIG
 p8sdVt3SIxycsUHODCLLs2ckijitUKM0aSJzJJnhQA==
X-Google-Smtp-Source: APXvYqwNVH+CrxZcMnxSwclo0S3v7qgeIyd4KN1mrRn3wdEhUWxce27y0yPjv6LZIAM/PDIfAV+2naYwlAPl2eY/5zg=
X-Received: by 2002:a7b:cd84:: with SMTP id y4mr1059323wmj.57.1576223256882;
 Thu, 12 Dec 2019 23:47:36 -0800 (PST)
MIME-Version: 1.0
References: <20191204141159.1432387-1-colin.king@canonical.com>
 <20191205080611.GY93017@google.com>
In-Reply-To: <20191205080611.GY93017@google.com>
From: Maxime Jourdan <mjourdan@baylibre.com>
Date: Fri, 13 Dec 2019 08:47:26 +0100
Message-ID: <CAMO6naxT0syj74xvcectWXyVGmHfOU341A+15tC+GW4hsq+yJQ@mail.gmail.com>
Subject: Re: [PATCH] media: meson: add missing allocation failure check on
 new_buf
To: Sergey Senozhatsky <sergey.senozhatsky.work@gmail.com>
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
Cc: devel@driverdev.osuosl.org, Kevin Hilman <khilman@baylibre.com>,
 kernel-janitors@vger.kernel.org,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Hans Verkuil <hverkuil-cisco@xs4all.nl>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
 Colin King <colin.king@canonical.com>, linux-amlogic@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org,
 Linux Media Mailing List <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Thu, Dec 5, 2019 at 9:06 AM Sergey Senozhatsky
<sergey.senozhatsky.work@gmail.com> wrote:
>
> On (19/12/04 14:11), Colin King wrote:
> [..]
> > diff --git a/drivers/staging/media/meson/vdec/vdec.c b/drivers/staging/media/meson/vdec/vdec.c
> > index 0a1a04fd5d13..8dd1396909d7 100644
> > --- a/drivers/staging/media/meson/vdec/vdec.c
> > +++ b/drivers/staging/media/meson/vdec/vdec.c
> > @@ -133,6 +133,8 @@ vdec_queue_recycle(struct amvdec_session *sess, struct vb2_buffer *vb)
> >       struct amvdec_buffer *new_buf;
> >
> >       new_buf = kmalloc(sizeof(*new_buf), GFP_KERNEL);
> > +     if (!new_buf)
> > +             return;
> >       new_buf->vb = vb;

Thanks for the patch Colin.

>
> So the buffer is not getting recycled? IOW is leaked?
>
>         -ss

The "recycle" mechanism in the meson vdec is a way to tell the
firmware that "hey, both userspace and kernel are done using this
buffer, you can start using it again".

Not queuing it for recycling means that the firmware won't use this
buffer again, it's not desirable of course, but if there is no memory
left to allocate a simple list element then there are bigger problems
at hand.

Either way, failing this allocation and returning instantly doesn't
leak anything or do any damage kernel-side.
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
