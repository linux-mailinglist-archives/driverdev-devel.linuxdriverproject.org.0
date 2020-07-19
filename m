Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E70B2250E9
	for <lists+driverdev-devel@lfdr.de>; Sun, 19 Jul 2020 11:35:24 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id E407887BFF;
	Sun, 19 Jul 2020 09:35:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id O6muWadQJkYP; Sun, 19 Jul 2020 09:35:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id EC2D687BBF;
	Sun, 19 Jul 2020 09:35:20 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id D19591BF484
 for <devel@linuxdriverproject.org>; Sun, 19 Jul 2020 09:35:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id BBD0F20133
 for <devel@linuxdriverproject.org>; Sun, 19 Jul 2020 09:35:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id CWWmIc-Jz5QB for <devel@linuxdriverproject.org>;
 Sun, 19 Jul 2020 09:35:17 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lf1-f67.google.com (mail-lf1-f67.google.com
 [209.85.167.67])
 by silver.osuosl.org (Postfix) with ESMTPS id 703A52010B
 for <devel@driverdev.osuosl.org>; Sun, 19 Jul 2020 09:35:17 +0000 (UTC)
Received: by mail-lf1-f67.google.com with SMTP id k15so8234503lfc.4
 for <devel@driverdev.osuosl.org>; Sun, 19 Jul 2020 02:35:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=pesu-pes-edu.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=b2myl3rrfsZfV3B1/6+71zukNw223HefPvrzFOXka6Y=;
 b=D1PbfnB/cEtXs1YHmkD9RddChOxmhJyhVH7iGXhG+BYAeAwPU2w2DpeoyQESG8fNEq
 jQAAwnhp5JxDEiKq8xVTqcop2XD7UHyJGpoS8tZKKQaYjer25q2JhkjmYMCgk5lMIq4V
 taNXGxUGeuwHr6fC3phAuLrd7EhtA0rG4nQzmS/Y0V+onBW3EALw9nZY5YzjDpnTuXZY
 cnEzmEV+36Tghawmvo/yLYIjwu236QaxvKakFvcM9cl5WCyCBFUyxVZMMaBq1Km1zEMt
 yOSqiDp9QD++GhF8rcl5TWkPhC6Xk7jykRJh0AE259skpd+R3wXJG0tHhg2pCx83cKWe
 csOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=b2myl3rrfsZfV3B1/6+71zukNw223HefPvrzFOXka6Y=;
 b=HrkswKTOMWrkH/9Cn9OkaE5Iu6i/hrthyZbVIHAUiCvABvs+XsMMo+ysTXIL1us/mR
 2zHsVpYR6eIc07+ygfQJY9ovW3aURoBGf/PHN1sR5pfNyDaORYIaWJBKYDHmAm4Mbvps
 nZza8t/gXaqf/KcFQLI+zthAl035LcGN2DNlZrGi6fsPKvjVz56BjFn73Izm6i6UAXNz
 ix7O/CTJmBXyFr4PNoJKZoemBbWX8Se6meLd4XUkXptC+kG2krrwHDv8jM/vClXEz87g
 d3de7pda6MIWOWj+CsnjQuUuhI6+nodsOPLlH5/fy825igzr9zfFLPXt5MdYt+MlGElW
 h1/Q==
X-Gm-Message-State: AOAM532IrmnzfmuwaQvX3P0TDfLdN7mgTzhv9obtSPgap7SCJfjxpbBj
 eBvEaIffe4wGFaqrqZQQLzrVnw89mk4CjDHMB6sruA==
X-Google-Smtp-Source: ABdhPJwGUxA5J2lZn92NVAcIQz99hfWezqmmL6bbBZf1zp7nN9Zk8v9gaz/86rItRldOJL9/DispxniIILk/6y370P8=
X-Received: by 2002:a19:8452:: with SMTP id g79mr134333lfd.29.1595151315205;
 Sun, 19 Jul 2020 02:35:15 -0700 (PDT)
MIME-Version: 1.0
References: <20200718091626.uflhdcgkmhqij5b7@pesu-pes-edu>
 <20200719092652.GA257887@kroah.com>
In-Reply-To: <20200719092652.GA257887@kroah.com>
From: B K Karthik <bkkarthik@pesu.pes.edu>
Date: Sun, 19 Jul 2020 05:35:04 -0400
Message-ID: <CAAhDqq1LNQ=UfCaNojZ+wf2+njQ+7jD8Yvr1AG1TSrcByfMo+g@mail.gmail.com>
Subject: Re: [PATCH 2/4] staging: rtl8188eu: include: fixed multiple
 parentheses coding style issues
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
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
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
 Larry Finger <Larry.Finger@lwfinger.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Sun, Jul 19, 2020 at 5:26 AM Greg Kroah-Hartman
<gregkh@linuxfoundation.org> wrote:
>
> On Sat, Jul 18, 2020 at 05:16:26AM -0400, B K Karthik wrote:
> > fixed multiple parentheses coding style issues reported by checkpatch.
> >
> > Signed-off-by: B K Karthik <karthik.bk2000@live.com>
> > ---
> >  drivers/staging/rtl8188eu/include/ieee80211.h |  4 +--
> >  .../staging/rtl8188eu/include/osdep_service.h |  4 +--
> >  drivers/staging/rtl8188eu/include/wifi.h      | 34 +++++++++----------
> >  3 files changed, 21 insertions(+), 21 deletions(-)
>
> You can never add warnings to the build, like this patch did.  Always
> test-build your patches at the very least...

understood, I will definitely do that.
but these warnings are (mostly) [-Wunused-value] and [-Wformat].
that should not have (?) occurred due to the usage of parentheses.

anyways, I will try to fix these up and send a v2.
sorry if i wasted your time

karthik
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
