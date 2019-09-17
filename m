Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id A3FB0B4722
	for <lists+driverdev-devel@lfdr.de>; Tue, 17 Sep 2019 08:04:36 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 5931085477;
	Tue, 17 Sep 2019 06:04:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id IWolshzIvm3n; Tue, 17 Sep 2019 06:04:33 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 1B8C4847D9;
	Tue, 17 Sep 2019 06:04:33 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id EFD591BF313
 for <devel@linuxdriverproject.org>; Tue, 17 Sep 2019 06:04:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id EBD75848A9
 for <devel@linuxdriverproject.org>; Tue, 17 Sep 2019 06:04:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id zgSJFggbczhV for <devel@linuxdriverproject.org>;
 Tue, 17 Sep 2019 06:04:29 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-vk1-f193.google.com (mail-vk1-f193.google.com
 [209.85.221.193])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 38936847D9
 for <devel@driverdev.osuosl.org>; Tue, 17 Sep 2019 06:04:29 +0000 (UTC)
Received: by mail-vk1-f193.google.com with SMTP id p189so466192vkf.10
 for <devel@driverdev.osuosl.org>; Mon, 16 Sep 2019 23:04:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=SYf30STYtd8wS6M1VhEfM29R/tPCrWS/3zFLL7Kf2eM=;
 b=D8u8y8oE6v+IYdTzy1J6NqueZGXlOa81h6Z23l9LmZ0sx9U35tJ2rUVB4sOu8dYGLs
 s9d3aUKiYqQnNHL+8wxg5ei43Bfd6SBeTkkeOgD3UggAdMWtPcBsXvSKwQY6RkZqft0h
 GMW6lM13bWc9mJZSnQG6BU1mMWnFXOD52YBgXzB/v3QsWQa/yHlpf8Kl4AljrJhm60n6
 881plqixpuwIRcUC9tDvAtnD44XmR1+DibX/e7XE+jK0H8jrI/rBVqkPOCFG0zANXp74
 w/ePTmsV0TB77x1gOaTEsTa65fzIoK3GM5WQg5Omcue6IqpwPtBpznM0FhHxYA0D/cAU
 u2Lw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=SYf30STYtd8wS6M1VhEfM29R/tPCrWS/3zFLL7Kf2eM=;
 b=dpjZ5DEpeTqa1vFFhUSy+s1p0fZPC0fO4OAwOsz1sFqtLxUx/BeCAZjFnLCZN9C22q
 u1sOf4nxUzmI010IFhEMiLcxqY98WbWJG78Rd5C30XYfLX9puzd87Db6Cl3mxXZ/p90g
 3AnTQPi4eDVt3SH05sonJ/FEE9jhP8JGyAoshau2eZ15U7dMJcHqTesawOrjOONv1ZCx
 Zh2N/f1nV/NLzKLhvIkgME0qbg/UHiz0hcUwX6GP7zoz2Fc8u+fNOES4hIoCYoKs8aaW
 wUE1JycXqejOpTiNsP0tiFArkedcEy5dqFQAOfxvbzk805CeTw4DoZaT3628qPKod+dP
 /aHQ==
X-Gm-Message-State: APjAAAWi6UY7hfwyL364TJ+8yR8pRMaT1MIP3SnlG9FyVE06JFJQXegO
 ePQULS4WkSDD+EZ9R3Dt8xtmJtWTmHOf7zr8mJI=
X-Google-Smtp-Source: APXvYqwzqF2CgV83C3ndEgfr+Dfe3YDTx0SA7Jpak4NJ8dMd7WdcjaTRinsxCgKm2+wYVmzNvJ09Ct56Rz2111TwXLY=
X-Received: by 2002:a1f:a4c5:: with SMTP id n188mr692034vke.11.1568700267940; 
 Mon, 16 Sep 2019 23:04:27 -0700 (PDT)
MIME-Version: 1.0
References: <8998.1568693976@turing-police>
 <20190917053134.27926-1-qkrwngud825@gmail.com>
 <20190917054726.GA2058532@kroah.com>
In-Reply-To: <20190917054726.GA2058532@kroah.com>
From: Ju Hyung Park <qkrwngud825@gmail.com>
Date: Tue, 17 Sep 2019 15:04:16 +0900
Message-ID: <CAD14+f1adJPRTvk8awgPJwCoHXSngqoKcAze1xbHVVvrhSMGrQ@mail.gmail.com>
Subject: Re: [PATCH] staging: exfat: add exfat filesystem code to
To: Greg KH <gregkh@linuxfoundation.org>, namjae.jeon@samsung.com, 
 Valdis Kletnieks <valdis.kletnieks@vt.edu>
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
Cc: devel@driverdev.osuosl.org, linkinjeon@gmail.com,
 linux-kernel@vger.kernel.org, alexander.levin@microsoft.com,
 sergey.senozhatsky@gmail.com, linux-fsdevel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Tue, Sep 17, 2019 at 2:47 PM Greg KH <gregkh@linuxfoundation.org> wrote:
> It's the fact that it actually was in a form that could be merged, no
> one has done that with the sdfat code :)

Well, I'm more than happy to help if you guys are happy with merging
the new base.

> What fixes?  That's what I'm asking here.

I gave this as an example in my previous email:
https://github.com/MotorolaMobilityLLC/kernel-msm/commit/7ab1657

> How do we "know" that this is better than what we currently have today?
> We don't, so it's a bit hard to tell someone, "delete the work you did
> and replace it with this other random chunk of code, causing you a bunch
> more work in the process for no specific reason other than it looks
> 'newer'." :(

The new sdFAT base I'm suggesting, is just as "random" as the one
staging tree is based on.

If exFAT gets merged to Torvald's tree, there will be a lot more eyes
interested in it.
If there's a better base, we better switch to it now and prevent
further headaches long-term.

It's really hard to compare those 2 drivers base and extract
meaningful changelogs.

But regardless, here are some diff stats:
<Full diff stat>
 Kconfig      |   79 +-
 Makefile     |   46 +-
 api.c        |  423 ----
 api.h        |  310 ---
 blkdev.c     |  409 +---
 cache.c      | 1142 ++++-----
 config.h     |   49 -
 core.c       | 5583 ++++++++++++++++++++++++--------------------
 core.h       |  196 --
 core_exfat.c | 1553 ------------
 exfat.h      | 1309 +++++++----
 exfat_fs.h   |  417 ----
 extent.c     |  351 ---
 fatent.c     |  182 --
 misc.c       |  401 ----
 nls.c        |  490 ++--
 super.c      | 5103 +++++++++++++++++++++-------------------
 upcase.c     |  740 ++++++
 upcase.h     |  407 ----
 version.h    |   29 -
 xattr.c      |  136 --
 21 files changed, 8186 insertions(+), 11169 deletions(-)

<diff-filter=M>
 Kconfig  |   79 +-
 Makefile |   46 +-
 blkdev.c |  409 +---
 cache.c  | 1142 +++++-----
 core.c   | 5583 ++++++++++++++++++++++++++----------------------
 exfat.h  | 1309 ++++++++----
 nls.c    |  490 ++---
 super.c  | 5103 ++++++++++++++++++++++---------------------
 8 files changed, 7446 insertions(+), 6715 deletions(-)

> I recommend looking at what we have in the tree now, and seeing what is
> missing compared to "sdfat".  I know a lot of places in the exfat code
> that needs to be fixed up, odds are they are the same stuff that needs
> to be resolved in sdfat as well.

Would there be any more data that I can provide?
It's really hard to go through the full diff :(

Thanks.
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
