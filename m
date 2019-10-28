Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FEB0E7B2D
	for <lists+driverdev-devel@lfdr.de>; Mon, 28 Oct 2019 22:11:46 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id DF7A58539A;
	Mon, 28 Oct 2019 21:11:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id tiLxhztyVGJB; Mon, 28 Oct 2019 21:11:43 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 095CD853FD;
	Mon, 28 Oct 2019 21:11:42 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id DAA841BF2AB
 for <devel@linuxdriverproject.org>; Mon, 28 Oct 2019 21:11:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id D604882F21
 for <devel@linuxdriverproject.org>; Mon, 28 Oct 2019 21:11:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 9JyMtIDnSLw9 for <devel@linuxdriverproject.org>;
 Mon, 28 Oct 2019 21:11:38 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ot1-f67.google.com (mail-ot1-f67.google.com
 [209.85.210.67])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 236F8824E0
 for <devel@driverdev.osuosl.org>; Mon, 28 Oct 2019 21:11:38 +0000 (UTC)
Received: by mail-ot1-f67.google.com with SMTP id z6so7935829otb.2
 for <devel@driverdev.osuosl.org>; Mon, 28 Oct 2019 14:11:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=cBYWQW9UvbERGywOWVvHYvLEUYwA7AlxyhS5hIUH/BQ=;
 b=pVT5yy7n+WJeNRc6Kqv08AdoWrhHCG9vtEOvUXQif3l/WjBzZ4AhsvpYb6aZMWKLQ3
 EecZu6Zc6mPcKxGiNDjiFaS6sg5erNopZSti0+Aza4Jd5c2mjgYvFe2zPxZq1Uqv8v5a
 EYnQHDDHofxDoRze/I+cCAawQz8iipUPSbNswKzyCRIiLHloXHqbmVng65P+ElYkksRW
 TxOLLJHhesY/wDtkmXY2pBmCmuD8PWE0nuVlb7iFotk7OyoySsnEVwLqeKoqOo3KuqMa
 sXj8gBfw4Uz+r4060/NBygCj7FFw8nQxVoKBrWm9TIib5SGWW1Z6JtvuZj24KaARGNh/
 uq5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=cBYWQW9UvbERGywOWVvHYvLEUYwA7AlxyhS5hIUH/BQ=;
 b=n81T/s4jpzvnqIKtCIqLHxst9I1HnmcaOJGkLHXS5GxY9ialle1ywWY1ZeClgl1SEV
 1WVYI6gUAVO5HuO7Xa7LvrnTD1yb7V+v1VNjeqvx23ilKfiTzdUdcly2QCRtvGTKCtTC
 c/VE7Rdtei8g/zKfsQ2IGEmRB6aXiOA873F92aAT6gv/XoquysqsGd32E2m/uqtyJU7H
 ojJxlSFhH1igHslSvk0sg2toVGDOte9qXq36K7s64t1EKN5e756IWc7XimMF56j7Jrs0
 fj5tpiiSp1a/9bJngYGctuIkq6eeU7YuETchqekttuLB6KQp90WrjuVf3K7SExwG3dTq
 Pn5g==
X-Gm-Message-State: APjAAAXLlJHf6SVnQix4quUvU+xD6H61VxCpWX+PLEGdnfR0bzowrRz2
 docqCXQBzoBNLtca/CG9ys1rGZESZLnjCfRBUbc=
X-Google-Smtp-Source: APXvYqzZlp/Hwl4spcTIxcPlRPWVaONev/r+vSRpbK+HYKkKdKaJOdOZ1o68YRa0duONP2nNeFRlys2UNb7JGmmxgOE=
X-Received: by 2002:a05:6830:4c1:: with SMTP id
 s1mr973895otd.232.1572297097075; 
 Mon, 28 Oct 2019 14:11:37 -0700 (PDT)
MIME-Version: 1.0
References: <1570515056-23589-1-git-send-email-hariprasad.kelam@gmail.com>
 <CAGngYiX0zoAQB=SEoXfoMm9u_JzHu3eLErj4zmTYtSAoDwkp6Q@mail.gmail.com>
In-Reply-To: <CAGngYiX0zoAQB=SEoXfoMm9u_JzHu3eLErj4zmTYtSAoDwkp6Q@mail.gmail.com>
From: Sven Van Asbroeck <thesven73@gmail.com>
Date: Mon, 28 Oct 2019 17:11:26 -0400
Message-ID: <CAGngYiXxagQMiHA-pZupTPHfyFz4kU=QOrvM28L_jSV1VGw=jQ@mail.gmail.com>
Subject: Re: [PATCH] staging: fieldbus: make use of
 devm_platform_ioremap_resource
To: hariprasad Kelam <hariprasad.kelam@gmail.com>
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
Cc: devel@driverdev.osuosl.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi Greg, friendly reminder... Did you miss the patch review below, or
is there a reason
why this isn't getting queued?

There seems to be a crowd chasing down this type of warnings, resulting
in multiple duplicates.

On Tue, Oct 8, 2019 at 9:31 AM Sven Van Asbroeck <thesven73@gmail.com> wrote:
>
> On Tue, Oct 8, 2019 at 2:11 AM hariprasad Kelam
> <hariprasad.kelam@gmail.com> wrote:
> >
> > From: Hariprasad Kelam <hariprasad.kelam@gmail.com>
> >
> > fix below issues reported by coccicheck
> > drivers/staging//fieldbus/anybuss/arcx-anybus.c:135:1-5: WARNING: Use
> > devm_platform_ioremap_resource for base
> > drivers/staging//fieldbus/anybuss/arcx-anybus.c:248:1-14: WARNING: Use
> > devm_platform_ioremap_resource for cd -> cpld_base
> >
> > Signed-off-by: Hariprasad Kelam <hariprasad.kelam@gmail.com>
> > ---
> >  drivers/staging/fieldbus/anybuss/arcx-anybus.c | 8 ++------
> >  1 file changed, 2 insertions(+), 6 deletions(-)
>
> Reviewed-by: Sven Van Asbroeck <TheSven73@gmail.com>
> Tested-by: Sven Van Asbroeck <TheSven73@gmail.com>
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
