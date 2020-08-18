Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 71A3124873F
	for <lists+driverdev-devel@lfdr.de>; Tue, 18 Aug 2020 16:19:51 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 768B0860B5;
	Tue, 18 Aug 2020 14:19:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id a3Z332pXoBjT; Tue, 18 Aug 2020 14:19:49 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 00535860F1;
	Tue, 18 Aug 2020 14:19:47 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 88CE51BF3D0
 for <devel@linuxdriverproject.org>; Tue, 18 Aug 2020 14:19:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 8553A860B5
 for <devel@linuxdriverproject.org>; Tue, 18 Aug 2020 14:19:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Q+MakdfCz6vC for <devel@linuxdriverproject.org>;
 Tue, 18 Aug 2020 14:19:46 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f66.google.com (mail-wr1-f66.google.com
 [209.85.221.66])
 by whitealder.osuosl.org (Postfix) with ESMTPS id B2126860A8
 for <devel@driverdev.osuosl.org>; Tue, 18 Aug 2020 14:19:45 +0000 (UTC)
Received: by mail-wr1-f66.google.com with SMTP id r2so18460350wrs.8
 for <devel@driverdev.osuosl.org>; Tue, 18 Aug 2020 07:19:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=7J/r1E+lQgwxAYRstL7rf8C32+EXOMnod+NMk/hBTHw=;
 b=PJJrwh3oAQCHYtG1D3/AT1wch3gMDb0LnX7tOl5ZAw03jrQv1wjtZ7aq3JFvygskhT
 yKCQx6xLh2ZyFzCCdT7s13ourBuPJqI0znwxo/JMtk46hjxMfSXY2OsR8jHBdTdMyJsQ
 NbjSNCd7MMJPWTuBk6F1DbadYQbVG9LmHt1uQAX5ii3a/b/IH73wobb0eqquCTjZ8ybF
 HpFiUSfJGh7+1hhEMn+VyEwHKWMb8hBWy7XLccGUQjPe9rJCKUluS05i8dikv8mfi1PG
 CtJyBPF2Cxee8db8qdgwaVbB35rLsVFrqA7SO9vsx6XMTkbjUwJTcDbDH6BTvtZ/enXg
 ZZlQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=7J/r1E+lQgwxAYRstL7rf8C32+EXOMnod+NMk/hBTHw=;
 b=AnpbayngA82y21BaBWBC4BOgn1wvfbqrFnl6zRWwpNtmaR+3gwGw7+wSBb5wi96cKO
 18gLHmPhU8Z2llMJp7QI1lEpVLxdy97MauEuyCJ8fW4rrziEa4Upehmj8NIAwTQaFjmh
 AvOX9O3B1tm1UPQ8tqUwW6E8DAAfLAbjGbgPNOz8z29Gf3mMYrtg7mnjVHOhKyLBqPGg
 s4lI56ot8SRomUeF6oOMAnpRC6rFiu6l91gJjyWb+RAzMZKZrIGiq4FsygYt5npxbIBU
 pkxahktiCrweQuKaJf8HtG6Z5fftpD5yEBTu3NtFfLlhArWOjE8q2yrrjTCjsxWfOb8P
 9rrA==
X-Gm-Message-State: AOAM530ZqeHRBkJ+EOnMDNEI73mx18sv2p6PvYoC1EbTQPV2K0wlKZcW
 N1m/Qr8GyTpR0mqqwg86Zvg=
X-Google-Smtp-Source: ABdhPJzxT9GBf8wTWBH60WuPWnbzAmw2HJeyQL0biUOSzv5uQPE/uCUdy9ZeBHEyX5vDda9O2/QZZA==
X-Received: by 2002:adf:e8cc:: with SMTP id k12mr21199676wrn.2.1597760384066; 
 Tue, 18 Aug 2020 07:19:44 -0700 (PDT)
Received: from tsnow ([94.159.146.190])
 by smtp.gmail.com with ESMTPSA id t11sm32487327wrs.66.2020.08.18.07.19.42
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 18 Aug 2020 07:19:43 -0700 (PDT)
Date: Tue, 18 Aug 2020 17:19:40 +0300
From: Tomer Samara <tomersamara98@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: Re: [PATCH v2 1/4] staging: android: Replace BUG_ON with WARN_ON
Message-ID: <20200818141940.GA357037@tsnow>
References: <cover.1597602783.git.tomersamara98@gmail.com>
 <fd55c53cb20c4887a87c05fffa28c28a740cd314.1597602783.git.tomersamara98@gmail.com>
 <20200818141106.GB562377@kroah.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200818141106.GB562377@kroah.com>
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
Cc: devel@driverdev.osuosl.org, Todd Kjos <tkjos@android.com>,
 Martijn Coenen <maco@android.com>, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, Joel Fernandes <joel@joelfernandes.org>,
 Riley Andrews <riandrews@android.com>,
 Arve =?iso-8859-1?B?SGr4bm5lduVn?= <arve@android.com>,
 Hridya Valsaraju <hridya@google.com>, Laura Abbott <labbott@redhat.com>,
 Suren Baghdasaryan <surenb@google.com>, Sumit Semwal <sumit.semwal@linaro.org>,
 Christian Brauner <christian@brauner.io>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Tue, Aug 18, 2020 at 04:11:06PM +0200, Greg Kroah-Hartman wrote:
> On Sun, Aug 16, 2020 at 10:23:25PM +0300, Tomer Samara wrote:
> > BUG_ON() is replaced with WARN_ON at ion_page_pool.c
> 
> Why?
> 
> > Fixes the following issue:
> > Avoid crashing the kernel - try using WARN_ON & recovery code ratherthan BUG() or BUG_ON().
> 
> Ideally you can get rid of WARN_ON() too, right?
> 
> Many systems run in panic-on-warn mode, so this really does not change
> anything.  Try fixing this up properly to not crash at all.
> 
You mean by that to just remove the WARN_ON and leave the condition the
same?

> > 
> > Signed-off-by: Tomer Samara <tomersamara98@gmail.com>
> > ---
> >  drivers/staging/android/ion/ion_page_pool.c | 12 ++++++++----
> >  1 file changed, 8 insertions(+), 4 deletions(-)
> > 
> > diff --git a/drivers/staging/android/ion/ion_page_pool.c b/drivers/staging/android/ion/ion_page_pool.c
> > index 0198b886d906..c1b9eda35c96 100644
> > --- a/drivers/staging/android/ion/ion_page_pool.c
> > +++ b/drivers/staging/android/ion/ion_page_pool.c
> > @@ -46,11 +46,13 @@ static struct page *ion_page_pool_remove(struct ion_page_pool *pool, bool high)
> >  	struct page *page;
> >  
> >  	if (high) {
> > -		BUG_ON(!pool->high_count);
> > +		if (WARN_ON(!pool->high_count))
> > +			return NULL;
> 
> And can you test this that it works properly?
> 
> thanks,
> 
> greg k-h

Will do :)
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
