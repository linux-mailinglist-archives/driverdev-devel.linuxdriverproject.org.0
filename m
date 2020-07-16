Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 533CC222BD3
	for <lists+driverdev-devel@lfdr.de>; Thu, 16 Jul 2020 21:24:22 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 7272186934;
	Thu, 16 Jul 2020 19:24:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id vikNlXOK3eo1; Thu, 16 Jul 2020 19:24:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 2853386933;
	Thu, 16 Jul 2020 19:24:17 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 3B6601BF385
 for <devel@linuxdriverproject.org>; Thu, 16 Jul 2020 19:24:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 307AA87EEE
 for <devel@linuxdriverproject.org>; Thu, 16 Jul 2020 19:24:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id nesf+u2iaJtx for <devel@linuxdriverproject.org>;
 Thu, 16 Jul 2020 19:24:14 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f193.google.com (mail-pl1-f193.google.com
 [209.85.214.193])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 84CE687EEC
 for <devel@driverdev.osuosl.org>; Thu, 16 Jul 2020 19:24:14 +0000 (UTC)
Received: by mail-pl1-f193.google.com with SMTP id x9so4300500plr.2
 for <devel@driverdev.osuosl.org>; Thu, 16 Jul 2020 12:24:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=IO5rF0v38hkORnZpPQ2np7PkHTT7l3o2Frf1znSvMCA=;
 b=MoeXRnczoJvOTiX060NRDer3ic+Z0a6OAKDDzvlghJHJsuwLM+IhpBPYCW1h0hZNZh
 Fr5kyGgY0/SatP2EZptwciRkxUEZBeWULPC9tbngCSgNOCvd0NXvOeL8OmnqU6ynZicD
 iZLZdIgB2wXCD8oLjuasdEEdCIEAfOKV/ccMk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=IO5rF0v38hkORnZpPQ2np7PkHTT7l3o2Frf1znSvMCA=;
 b=ecZnhTaCTJbsr4Nibtv7Vzxd/vwXJmjwdAS17mFZbAFNYS6s6jKqmVau3H1qJQlD2W
 Se57m7Nn7dmNW5G458Ku1BMgBixD5UZNcdNhHWcmooaRX4yLkCHnG//ie0OM4sO13ZEI
 n2oDpuZiuLoFAe4CFKjSEEzBT8/zYkLWKZkUWY9rKkCNq0UvM1hpTDVHjzcxjnCCNwmd
 QuULtIinCpzxeIXk+WoR8UEI2azOchk3jBvpNAuhEzEAZQz2U70cBbm2Ifjm557Auh+W
 x4LQ3xedn/orlQre70nq9w6SJRzFSyTf0i7Jfkupl5KGokZvfuXeoVazu8cNA+ZJoCzh
 JLhQ==
X-Gm-Message-State: AOAM530/og0+iTe/InWlOA/Ay3FxHEcaNJdBoPJ7YHQd77duF0y1nslx
 aUQghMZoYKonHyzIh1pXIjpD4g==
X-Google-Smtp-Source: ABdhPJy0sUnqF9h52WMr6418CCHExwqoVmt3MmuGhwouhxSV6Mqarvy7mOWSh3mLcM/3Qo2Kub5J7g==
X-Received: by 2002:a17:90a:d30c:: with SMTP id
 p12mr6742185pju.4.1594927454098; 
 Thu, 16 Jul 2020 12:24:14 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id f29sm5669290pga.59.2020.07.16.12.24.12
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 16 Jul 2020 12:24:13 -0700 (PDT)
Date: Thu, 16 Jul 2020 12:24:12 -0700
From: Kees Cook <keescook@chromium.org>
To: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
Subject: Re: [PATCH 0/3] Modernize tasklet callback API
Message-ID: <202007161223.19FB352B5@keescook>
References: <20200716030847.1564131-1-keescook@chromium.org>
 <20200716075718.GM10769@hirez.programming.kicks-ass.net>
 <20200716081538.2sivhkj4hcyrusem@linutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200716081538.2sivhkj4hcyrusem@linutronix.de>
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
Cc: Kuppuswamy Sathyanarayanan <sathyanarayanan.kuppuswamy@linux.intel.com>,
 "Rafael J. Wysocki" <rafael.j.wysocki@intel.com>,
 Oscar Carter <oscar.carter@gmx.com>, Mitchell Blank Jr <mitch@sfgoth.com>,
 kernel-hardening@lists.openwall.com, Peter Zijlstra <peterz@infradead.org>,
 kgdb-bugreport@lists.sourceforge.net, alsa-devel@alsa-project.org,
 Allen Pais <allen.lkml@gmail.com>, netdev@vger.kernel.org,
 Christian Gromm <christian.gromm@microchip.com>, Will Deacon <will@kernel.org>,
 devel@driverdev.osuosl.org, Jonathan Corbet <corbet@lwn.net>,
 Daniel Thompson <daniel.thompson@linaro.org>,
 "David S. Miller" <davem@davemloft.net>,
 Masahiro Yamada <masahiroy@kernel.org>, Takashi Iwai <tiwai@suse.com>,
 Julian Wiedmann <jwi@linux.ibm.com>,
 "Matthew Wilcox \(Oracle\)" <willy@infradead.org>,
 Christian Borntraeger <borntraeger@de.ibm.com>,
 Nishka Dasgupta <nishkadg.linux@gmail.com>, Jiri Slaby <jslaby@suse.com>,
 Jakub Kicinski <kuba@kernel.org>, Guenter Roeck <linux@roeck-us.net>,
 Wambui Karuga <wambui.karugax@gmail.com>, Vasily Gorbik <gor@linux.ibm.com>,
 linux-s390@vger.kernel.org, linux-kernel@vger.kernel.org,
 Heiko Carstens <hca@linux.ibm.com>, linux-input@vger.kernel.org,
 Ursula Braun <ubraun@linux.ibm.com>, Stephen Boyd <swboyd@chromium.org>,
 Chris Packham <chris.packham@alliedtelesis.co.nz>,
 Harald Freudenberger <freude@linux.ibm.com>,
 Thomas Gleixner <tglx@linutronix.de>, Jaroslav Kysela <perex@perex.cz>,
 Felipe Balbi <balbi@kernel.org>, Kyungtae Kim <kt0755@gmail.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Dmitry Torokhov <dmitry.torokhov@gmail.com>,
 Douglas Anderson <dianders@chromium.org>,
 Kevin Curtis <kevin.curtis@farsite.co.uk>, linux-usb@vger.kernel.org,
 Jason Wessel <jason.wessel@windriver.com>,
 Romain Perier <romain.perier@gmail.com>, Karsten Graul <kgraul@linux.ibm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Thu, Jul 16, 2020 at 10:15:38AM +0200, Sebastian Andrzej Siewior wrote:
> On 2020-07-16 09:57:18 [+0200], Peter Zijlstra wrote:
> > 
> > there appear to be hardly any users left.. Can't we stage an extinction
> > event here instead?
> 
> Most of the time the tasklet is scheduled from an interrupt handler. So
> we could get rid of these tasklets by using threaded IRQs.

Perhaps I can add a comment above the tasklet API area in interrupt.h?

-- 
Kees Cook
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
