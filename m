Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FC2922C55D
	for <lists+driverdev-devel@lfdr.de>; Fri, 24 Jul 2020 14:41:52 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id BEBCE88582;
	Fri, 24 Jul 2020 12:41:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 0nbwErCKQKYv; Fri, 24 Jul 2020 12:41:50 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 93458880E7;
	Fri, 24 Jul 2020 12:41:49 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 67E411BF29D
 for <devel@linuxdriverproject.org>; Fri, 24 Jul 2020 12:41:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 618478846C
 for <devel@linuxdriverproject.org>; Fri, 24 Jul 2020 12:41:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id hey7ajUoiwLE for <devel@linuxdriverproject.org>;
 Fri, 24 Jul 2020 12:41:37 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-vs1-f68.google.com (mail-vs1-f68.google.com
 [209.85.217.68])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 6222588469
 for <devel@driverdev.osuosl.org>; Fri, 24 Jul 2020 12:41:37 +0000 (UTC)
Received: by mail-vs1-f68.google.com with SMTP id p25so4818599vsg.4
 for <devel@driverdev.osuosl.org>; Fri, 24 Jul 2020 05:41:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=2Y/hqFtvSIVM16rwYbPUWVppdN1RqdMbSz6G6w4jStg=;
 b=JgGBQFcL9fblo1Ehj0NkTjtkr/P21VDmlXk6wvWbzPbSqNpJHCxXMj94ApqJj9rnP4
 IN4mYv9wJcsU6iWVSC1SuYTe/TbESzsjaDFSRWeM5JqXJCPHonmV3b68IzF9CEjv5sTC
 xwJ7zDOEpQhL7rve7+d5QfvSJXijdLHGbm8r4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=2Y/hqFtvSIVM16rwYbPUWVppdN1RqdMbSz6G6w4jStg=;
 b=A0ve5B7pHoUpCLxCxI51adeLP3wJyL2vGOfecx/fSA14PbZFPn8Y9UWtiIV+frSHuI
 od9F33PMUWsTOdeCACD/3HxyV/SAVyRoLsIsT6M/YbTpWTVYMZ4Prp5rGNBhUmAm21MS
 vPBIBrW1cLk0MEBHRqiC4VSk5A+ermphalC6n1jS02Z3sma2Wr+4MpejMbVSZKF+f92F
 aNmJHUQiGJssAMwjaaP4NrzzJBpwjtMD5NkcPDM1qw2A0LQ3BbmCzCvXA+V2IzvumjHs
 39DS23YoJl28nS7ilj/jZG/hPwtlNL8n3uuN4cl2U5vdRQZszSgIXqE94ItZRqtmuit4
 nvJg==
X-Gm-Message-State: AOAM531QMRV2xVZJ/IvBicsOLOuwdfRZ0DafYbCHpD9tyhOGQW468EXh
 r1Jk1qqoBZQnDYvfnpYMjQQgR1NDoop6rx0Vt8ObCQ==
X-Google-Smtp-Source: ABdhPJyAlSVayuXDG/mTcs8Rws1rB4Ysra6FB/un27XvYZ4dSbrTFfDoRevDk3+SMuiMsE0LlAfuPpRXgFCKuP7YzUA=
X-Received: by 2002:a67:b448:: with SMTP id c8mr7575072vsm.54.1595594496206;
 Fri, 24 Jul 2020 05:41:36 -0700 (PDT)
MIME-Version: 1.0
References: <20200710144520.RESEND.1.Id0f52f486e277b5af30babac8ba6b09589962a68@changeid>
 <20200710070332.GA1175842@kroah.com>
In-Reply-To: <20200710070332.GA1175842@kroah.com>
From: Nicolas Boichat <drinkcat@chromium.org>
Date: Fri, 24 Jul 2020 20:41:25 +0800
Message-ID: <CANMq1KDcKWgyYYP_m0-WV7602g7zUbU0PPkvwXxbSTF5vFfKGQ@mail.gmail.com>
Subject: Re: [RESEND PATCH] media: atomisp: Replace trace_printk by pr_info
To: Mauro Carvalho Chehab <mchehab@kernel.org>
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
 lkml <linux-kernel@vger.kernel.org>,
 Sakari Ailus <sakari.ailus@linux.intel.com>,
 Linux Media Mailing List <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Fri, Jul 10, 2020 at 3:03 PM Greg Kroah-Hartman
<gregkh@linuxfoundation.org> wrote:
>
> On Fri, Jul 10, 2020 at 02:45:29PM +0800, Nicolas Boichat wrote:
> > trace_printk should not be used in production code, replace it
> > call with pr_info.
> >
> > Signed-off-by: Nicolas Boichat <drinkcat@chromium.org>
> > ---
> > Sent this before as part of a series (whose 4th patch was a
> > change that allows to detect such trace_printk), but maybe it's
> > easier to get individual maintainer attention by splitting it.
>
> Mauro should take this soon:
>
> Acked-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>

Mauro: did you get a chance to look at this? (and the other similar
patch "media: camss: vfe: Use trace_printk for debugging only")

Thanks!
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
