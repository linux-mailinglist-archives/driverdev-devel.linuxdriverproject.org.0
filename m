Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 379F9233838
	for <lists+driverdev-devel@lfdr.de>; Thu, 30 Jul 2020 20:14:59 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id D3E2586E35;
	Thu, 30 Jul 2020 18:14:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 6EoXTGRNgKU5; Thu, 30 Jul 2020 18:14:56 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id A8AA586DEE;
	Thu, 30 Jul 2020 18:14:55 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 115F71BF401
 for <devel@linuxdriverproject.org>; Thu, 30 Jul 2020 18:14:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 0DA5A8855C
 for <devel@linuxdriverproject.org>; Thu, 30 Jul 2020 18:14:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 5SNRVl9quOHk for <devel@linuxdriverproject.org>;
 Thu, 30 Jul 2020 18:14:53 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f196.google.com (mail-pl1-f196.google.com
 [209.85.214.196])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 82C60884C3
 for <devel@driverdev.osuosl.org>; Thu, 30 Jul 2020 18:14:53 +0000 (UTC)
Received: by mail-pl1-f196.google.com with SMTP id t10so9561442plz.10
 for <devel@driverdev.osuosl.org>; Thu, 30 Jul 2020 11:14:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=R3XH19x0j9mpAwBbmALhrl+K1g6ws6AmAQc8yDsKxwc=;
 b=Rd+sngN9fVYhzl82nqy0DTTR682+o7qxhCC/+ghYliHvyO1hzJDTm0Q4K9N2e2sjvd
 N6jmVrVP1K+zH7o8lQSP7igJY1O84vbHMVMFz6s9vC7DFwyG9aRzqW/9TFWhy9bGwJDD
 8rWbAMt/fh9RSp/q+tWRyrXHkaKeB34igvVHo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=R3XH19x0j9mpAwBbmALhrl+K1g6ws6AmAQc8yDsKxwc=;
 b=qXfY+dR1DfVZSnJ6GBepuvQ/Xv0AJ4VYQEsx/AJ8q9p0C4HJv0ZkxV9T2bmhVILb1y
 sfx0tjkDNqITfM0PYETL1OQYxXOqtZsaCZsm8emkroPIqP0tWMDISHUyfkknmesOxkS4
 QzyRoad3v9i4y1BCVrwA75OWeylLKXwTotJektpprnkmuJAMz2iXyBN47+0v99LNbRWY
 E+Ryp415rL2q3wEQk1PHxKeCWyk1ebugaKcbYHEGsqCQ7I3O2eT/LlZ8RH860Dz0wsyA
 yH8I+S+8MqBQZnkVDMKpWzAwQCjsec68S7i+6tiGOcFTG4xooSqQayhyv3XLondOeZ/Z
 pL1g==
X-Gm-Message-State: AOAM5329zXsx40VymisFo0nAM1+PYMWBCuWrCvrnw2TDOGD0Dm40NlKw
 6jscbkbNjTMopkrto72QRMPYkA==
X-Google-Smtp-Source: ABdhPJxh4YSRJo64KtvfOflwHcynTg8W1GmMjR98OKYM43hau9SWD31eOcjpDevGju3jfuntinpu7g==
X-Received: by 2002:a17:90a:884:: with SMTP id v4mr318901pjc.27.1596132893170; 
 Thu, 30 Jul 2020 11:14:53 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id b63sm7067818pfg.43.2020.07.30.11.14.51
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 30 Jul 2020 11:14:52 -0700 (PDT)
Date: Thu, 30 Jul 2020 11:14:50 -0700
From: Kees Cook <keescook@chromium.org>
To: Thomas Gleixner <tglx@linutronix.de>
Subject: Re: [PATCH 0/3] Modernize tasklet callback API
Message-ID: <202007301113.45D24C9D@keescook>
References: <20200716030847.1564131-1-keescook@chromium.org>
 <87h7tpa3hg.fsf@nanos.tec.linutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <87h7tpa3hg.fsf@nanos.tec.linutronix.de>
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
 kernel-hardening@lists.openwall.com, Peter Zijlstra <peterz@infradead.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-usb@vger.kernel.org,
 Allen Pais <allen.lkml@gmail.com>, linux-kernel@vger.kernel.org,
 netdev@vger.kernel.org, linux-input@vger.kernel.org,
 kgdb-bugreport@lists.sourceforge.net, Romain Perier <romain.perier@gmail.com>,
 Will Deacon <will@kernel.org>, "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

[heavily trimmed CC list because I think lkml is ignoring this
thread...]

On Thu, Jul 30, 2020 at 09:03:55AM +0200, Thomas Gleixner wrote:
> Kees,
> 
> Kees Cook <keescook@chromium.org> writes:
> > This is the infrastructure changes to prepare the tasklet API for
> > conversion to passing the tasklet struct as the callback argument instead
> > of an arbitrary unsigned long. The first patch details why this is useful
> > (it's the same rationale as the timer_struct changes from a bit ago:
> > less abuse during memory corruption attacks, more in line with existing
> > ways of doing things in the kernel, save a little space in struct,
> > etc). Notably, the existing tasklet API use is much less messy, so there
> > is less to clean up.
> >
> > It's not clear to me which tree this should go through... Greg since it
> > starts with a USB clean-up, -tip for timer or interrupt, or if I should
> > just carry it. I'm open to suggestions, but if I don't hear otherwise,
> > I'll just carry it.
> >
> > My goal is to have this merged for v5.9-rc1 so that during the v5.10
> > development cycle the new API will be available. The entire tree of
> > changes is here[1] currently, but to split it up by maintainer the
> > infrastructure changes need to be landed first.
> >
> > Review and Acks appreciated! :)
> 
> I'd rather see tasklets vanish from the planet completely, but that's
> going to be a daring feat. So, grudgingly:

Understood! I will update the comments near the tasklet API.

> Acked-by: Thomas Gleixner <tglx@linutronix.de>

Thanks!

-- 
Kees Cook
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
