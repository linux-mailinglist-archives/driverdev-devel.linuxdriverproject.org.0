Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F7B131F956
	for <lists+driverdev-devel@lfdr.de>; Fri, 19 Feb 2021 13:21:24 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id B4792606FD
	for <lists+driverdev-devel@lfdr.de>; Fri, 19 Feb 2021 12:21:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 8Pq02PT7j8_m for <lists+driverdev-devel@lfdr.de>;
	Fri, 19 Feb 2021 12:21:21 +0000 (UTC)
Received: by smtp3.osuosl.org (Postfix, from userid 1001)
	id 303C560701; Fri, 19 Feb 2021 12:21:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8F6B260690;
	Fri, 19 Feb 2021 12:21:03 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 2E7571BF364
 for <devel@linuxdriverproject.org>; Fri, 19 Feb 2021 12:20:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 1D80960690
 for <devel@linuxdriverproject.org>; Fri, 19 Feb 2021 12:20:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id kYs2BktYn0Fc for <devel@linuxdriverproject.org>;
 Fri, 19 Feb 2021 12:20:50 +0000 (UTC)
Received: by smtp3.osuosl.org (Postfix, from userid 1001)
 id 5DA6D606D8; Fri, 19 Feb 2021 12:20:50 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail-il1-f173.google.com (mail-il1-f173.google.com
 [209.85.166.173])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 1BDFC60690
 for <devel@driverdev.osuosl.org>; Fri, 19 Feb 2021 12:20:48 +0000 (UTC)
Received: by mail-il1-f173.google.com with SMTP id q5so4312737ilc.10
 for <devel@driverdev.osuosl.org>; Fri, 19 Feb 2021 04:20:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=EEb1UJDvgCRWaCo3f0yPJzWzHS0WltOW5+cgoN1g8l0=;
 b=Rsn1RPwp1k60poOFHRWlw9M0/3JIL7NmKup0Ycj2Y4wQ5N9BYDy4RrtoLGbCOdKSBn
 ofgbLOTOCrbuFYub/HgUpaduHvVVUg05A6aUTdOwdwLtsi8qNOo5TGn6FhiYdAwutOgE
 CJF0ECtGRrWb7NyqjaOhFfmnFZJI4pbF/HiRbkrhrvnpXM3fbzP5bq+7KQ59NFZ2nGo/
 YbjgH2n8wIm1czRnP5vawyWPAyRRqgncy9Kf9ubY89bXf+3yGfRrDWt6Pozm6I2Kq7kA
 fawGTEk14rTx+74R1c2/1H1lftOFttqJeianooi/h2DhgOXnaNCD0kB9UC13kiWGECqy
 IoEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=EEb1UJDvgCRWaCo3f0yPJzWzHS0WltOW5+cgoN1g8l0=;
 b=VULfr+F96Gvl48iSTENTG/iNDJAgMDmx4YyZNapv9KTaZLdEDpYKZ03mB1D3EMUUhf
 yRnJ1N/YBwzBE17EbV7V8GCN8BA40Fo59ga3vEjbBwyKCN9B9x+0jE8Y6LPQ2ocl1oP6
 h36wvPYh4TD2wKEQgNpcELABBgiPUAYNGh/zXesuQG7jDpkXee2pMnHkQS4dUEpiqyEH
 ytSqRzSd51t8Ro+69sfpwQDnt0QYr3D1JUwc7ilPn+JCpYuY13/SmFV5HLwVDWZdlZwz
 oUQvGKDbjWoWx9zDZwltoWwY//g2uVHkpQa8dzFZur/8nyPAKi0XSPXfhepkAvZUspgm
 UcEw==
X-Gm-Message-State: AOAM533niMmvoq5K285pU6B+mmltV0nisuV6ge40BrTQ0vxr/SB3wfRN
 wcI+pO0kODH85iH3KtytO9PYtCB+hethDy7zaAM=
X-Google-Smtp-Source: ABdhPJw5G19nuIDpQC28jqcYTsaptWnbhNgKMn4wtxZ1408VLOIBY66rOT/CjgJZRXEIEMrWCtgMmmvtLxmRvIXQVNE=
X-Received: by 2002:a05:6e02:20ca:: with SMTP id
 10mr3793892ilq.14.1613737248080; 
 Fri, 19 Feb 2021 04:20:48 -0800 (PST)
MIME-Version: 1.0
References: <20210219095835.9687-1-selvakumar16197@gmail.com>
 <20210219121219.GZ2087@kadam>
In-Reply-To: <20210219121219.GZ2087@kadam>
From: Selvakumar E <selvakumar16197@gmail.com>
Date: Fri, 19 Feb 2021 17:50:37 +0530
Message-ID: <CAD=cR89QCJ_6a20Pn9f2V6Zc5dTx86MbdwyrokjHbg70KmC1qw@mail.gmail.com>
Subject: Re: [PATCH] staging: vt6656: fixed a CamelCase coding style issue.
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
Cc: devel@driverdev.osuosl.org, oscar.carter@gmx.com, tvboxspy@gmail.com,
 gregkh@linuxfoundation.org, linux-kernel@vger.kernel.org,
 forest@alittletooquiet.net, linux-kernel-mentees@lists.linuxfoundation.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi Dan Carpenter

Thanks for the feedback, I'll work on the suggestion and come back with a fix.

Regards
Selvakumar Elangovan

On Fri, Feb 19, 2021 at 5:42 PM Dan Carpenter <dan.carpenter@oracle.com> wrote:
>
> You're not asking the right questions.
>
> On Fri, Feb 19, 2021 at 03:28:35PM +0530, Selvakumar Elangovan wrote:
> > This patch renames CamelCase macros uVar and uModulo into u_var and
> > u_module in device.h
> >
>
> Is "u_var" a good name?  What does the "u_" even mean?
>
> > This issue was reported by checkpatch.pl
> >
> > Signed-off-by: Selvakumar Elangovan <selvakumar16197@gmail.com>
> > ---
> >  drivers/staging/vt6656/device.h | 8 ++++----
> >  1 file changed, 4 insertions(+), 4 deletions(-)
> >
> > diff --git a/drivers/staging/vt6656/device.h b/drivers/staging/vt6656/device.h
> > index 947530fefe94..6615d356f74a 100644
> > --- a/drivers/staging/vt6656/device.h
> > +++ b/drivers/staging/vt6656/device.h
> > @@ -385,11 +385,11 @@ struct vnt_private {
> >       struct ieee80211_low_level_stats low_stats;
> >  };
> >
> > -#define ADD_ONE_WITH_WRAP_AROUND(uVar, uModulo) {    \
> > -     if ((uVar) >= ((uModulo) - 1))                  \
> > -             (uVar) = 0;                             \
> > +#define ADD_ONE_WITH_WRAP_AROUND(u_var, u_modulo) {  \
> > +     if ((u_var) >= ((u_modulo) - 1))                        \
>
> The \ is not aligned any more.
>
> > +             (u_var) = 0;                            \
> >       else                                            \
> > -             (uVar)++;                               \
> > +             (u_var)++;                              \
> >  }
>
>
> This macro is rubbish.  How does the wrap around even make sense?
> I hope that if you review the code a bit I think you will find that the
> wrap around is impossible?  Just fix the two callers and delete this
> macro.
>
> regards,
> dan carpenter
>
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
