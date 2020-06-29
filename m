Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 878C320CD05
	for <lists+driverdev-devel@lfdr.de>; Mon, 29 Jun 2020 09:43:23 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 47B5025D66;
	Mon, 29 Jun 2020 07:43:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id QBYd7m0hozBo; Mon, 29 Jun 2020 07:43:20 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id AB9B120450;
	Mon, 29 Jun 2020 07:43:19 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id C1B951BF399
 for <devel@linuxdriverproject.org>; Mon, 29 Jun 2020 07:43:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id BE921886D8
 for <devel@linuxdriverproject.org>; Mon, 29 Jun 2020 07:43:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id EjSr6Leopcna for <devel@linuxdriverproject.org>;
 Mon, 29 Jun 2020 07:43:17 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lj1-f195.google.com (mail-lj1-f195.google.com
 [209.85.208.195])
 by whitealder.osuosl.org (Postfix) with ESMTPS id C510788558
 for <devel@driverdev.osuosl.org>; Mon, 29 Jun 2020 07:43:16 +0000 (UTC)
Received: by mail-lj1-f195.google.com with SMTP id s9so16852922ljm.11
 for <devel@driverdev.osuosl.org>; Mon, 29 Jun 2020 00:43:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=BpT/uyybih139D6iFg4rZyoObC79oxCiEs6azBpE2YE=;
 b=eWOMDIcdNKPnqKniUzovXY9ZtuhkPQPMFwvo/irWwVreZ1aIiZuPeRfAqTXShwB7Sb
 RDxHc8rjn8Rztt8wazdog8y0VRuZqMXYlxePeEiyyyPvMWCqQ9uF8I3nvsY+RQPGT7B/
 dLAL+3GtmuEGEp3GfaYDKP1cjUNZKPZHWBgNtAp1zAZzO14ZIBxmHf2paDSVt2tfYmQx
 39yHRymhOJcDTEkusaRiN2juiIBr0yOuVQuiSoEtbi7IWRlo8jkvdY3TfWBg2OOv/h4O
 3y4cWBDi4G2UmjIM8Di0+0vGelZs1/e+q/HZ0Kl0haE4BYixGu+sTOJ+plptiYkMkReA
 lMEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=BpT/uyybih139D6iFg4rZyoObC79oxCiEs6azBpE2YE=;
 b=EvwTJ/D78rHd5VA2SvAoiqSjQ2DkEKqVdvI36uFduxgk2E2HSzliFZyXmmY6SkrpXH
 SlLJ7rlPk2vDV5uXLZ4VMMg/vNuoOMRyDD/h5FuXGaQho6zRa2vsIc2lJBbdE74rscmy
 UD37SHBgta+Y5B9DPETojOtmWwWbx8FvLhnsP52pcuPzxkLw2PuknWMRpH5bnv1fyhmA
 cUj1ZM+3vO+ezryfFicgii/5910x5HjYH6Ujjl8n4v8H4c0aDwTGiYq1Cc2h2W5v1UVq
 v2aRGEkUpj+1nNmdY+tqw7gTT3uvrzBXySJ2QBwXTYi71k3k6xTOS7ZtTcTqhFYVT3mr
 aTtg==
X-Gm-Message-State: AOAM530dryFGKWwduKEOZCOE91hliRWLmF2eXWtP+rqkHgA1wSSU0nB9
 Upg5pv9Oozwt8PN459F5rhZxgG3/JR25FeLk499CwQ==
X-Google-Smtp-Source: ABdhPJw7yeKkbKPWP4mXfSYYqEDtum3zLDjdN8GDjfwrFqZ7YKutP6wIttG5AalTozR+fFq8ban51FPPfG1rw4k/c6E=
X-Received: by 2002:a2e:350a:: with SMTP id z10mr7103214ljz.104.1593416594822; 
 Mon, 29 Jun 2020 00:43:14 -0700 (PDT)
MIME-Version: 1.0
References: <20200628085236.707579-1-linus.walleij@linaro.org>
 <20200628104302.GA305213@kroah.com>
In-Reply-To: <20200628104302.GA305213@kroah.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Mon, 29 Jun 2020 09:43:04 +0200
Message-ID: <CACRpkdaCUzC3b5FuHf+T2Dt+kKjcSjstckK=Wnn3BCXi6wD1sA@mail.gmail.com>
Subject: Re: [PATCH v3] staging: wfx: Get descriptors for GPIOs
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
Cc: devel@driverdev.osuosl.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Sun, Jun 28, 2020 at 12:43 PM Greg KH <gregkh@linuxfoundation.org> wrote:
> On Sun, Jun 28, 2020 at 10:52:36AM +0200, Linus Walleij wrote:

> > ChangeLog v2->v3:
> > - ERR_CAST not PTR_CAST
> > ChangeLog v1->v2:
> > - Fixed a cast and a variable name.
> > - I still don't know how to compile this but hey the zeroday
> >   robot does.
>
> I can build this on my desktop, and this patch still blows up the build.
> What is wrong with your setup that this doesn't build for you?

Don't know exactly, probably that all my builds are so ARM-fixated.
I'll try to learn my way around the x86 config properly so I can
properly compile-test this, the other patch I managed to test
after a long menuconfig session.

Yours,
Linus Walleij
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
