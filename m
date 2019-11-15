Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 478FCFE336
	for <lists+driverdev-devel@lfdr.de>; Fri, 15 Nov 2019 17:49:56 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id D892B8938D;
	Fri, 15 Nov 2019 16:49:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id osdmWyzwdUFY; Fri, 15 Nov 2019 16:49:54 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id B41D88939A;
	Fri, 15 Nov 2019 16:49:52 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 2FB1C1BF2CB
 for <devel@linuxdriverproject.org>; Fri, 15 Nov 2019 16:49:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 2C9A386451
 for <devel@linuxdriverproject.org>; Fri, 15 Nov 2019 16:49:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 5sFj-eV6y_Iw for <devel@linuxdriverproject.org>;
 Fri, 15 Nov 2019 16:49:49 +0000 (UTC)
X-Greylist: delayed 11:10:46 by SQLgrey-1.7.6
Received: from mail-pl1-f193.google.com (mail-pl1-f193.google.com
 [209.85.214.193])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 1CB8886449
 for <devel@driverdev.osuosl.org>; Fri, 15 Nov 2019 16:49:49 +0000 (UTC)
Received: by mail-pl1-f193.google.com with SMTP id e3so5033552plt.7
 for <devel@driverdev.osuosl.org>; Fri, 15 Nov 2019 08:49:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=ptqDM2bmHnot4adtaFSv3VaRZd83rjxzM9yPEL0ZiVQ=;
 b=QYMnEMQdAAVP1ErDUxIsFQ6DlszLOn9whrvq/Y2SkMm3zbUFH+xz7ZikY3RfYWSyFL
 CgLAPq64BHMWfuyf6WB4hq42WvHXD1+xlybGrdxKdVwbyB7Goxz+ZSO9LU3F6eWD2L5g
 ONFqp4+EO1xyjzoG/IdQWW4dq6e9+ckLUvZjQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=ptqDM2bmHnot4adtaFSv3VaRZd83rjxzM9yPEL0ZiVQ=;
 b=qONU0uetjxAemiKRbmEyMIU7QD+wLMwfekmnsgjzy5b9pVeAgZURlIpUFrYP+xu9oW
 4pzLBPcKs8jLqwLSu4RK0yGQZ/K+iD3+1teWt49jnw9UoU4BBWTyEThvDsIOwWQCk2fD
 /y9wgm1sK67F8pKksyXlzjEaZiuHxiEmAtcaPF1T9JJmv/hWfcm3DuWfk21KEU4BGIXE
 uEcY4UVc/z8ApApZUfEizCfi0WReDpfj2CuKFcpABQowjsEFfr0bY3+vxEOImCnhpKtp
 Lnvg44AXMLG1q/cSnmzXt1yCUbELNR/no4l5Ac/R59ZopNjavO0N5YYQ7efYzha+1V8E
 SSlg==
X-Gm-Message-State: APjAAAURRZDzus+RAQU9bHY+ktGZZJE+88hU4OxQ1SKbhbfBWDF1B78D
 jYkD08erVm0F+MoMzL7ENur5fpvmFMM=
X-Google-Smtp-Source: APXvYqx05o7Lzkd/xkkJdoxu2DTq4WyYxecLtO0mGNyWyc+EB6il/XJ0N+kSYVGwAcNEssnj4S4clA==
X-Received: by 2002:a17:902:6903:: with SMTP id
 j3mr7357486plk.231.1573836588247; 
 Fri, 15 Nov 2019 08:49:48 -0800 (PST)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id x29sm11756518pfj.131.2019.11.15.08.49.42
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 15 Nov 2019 08:49:47 -0800 (PST)
Date: Fri, 15 Nov 2019 08:49:24 -0800
From: Kees Cook <keescook@chromium.org>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: Re: [PATCH] staging: rtl*: Remove tasklet callback casts
Message-ID: <201911150848.4518DFCA1@keescook>
References: <201911142135.5656E23@keescook>
 <20191115061610.GA1034830@kroah.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191115061610.GA1034830@kroah.com>
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
Cc: devel@driverdev.osuosl.org,
 Florian Schilhabel <florian.c.schilhabel@googlemail.com>,
 kernel-hardening@lists.openwall.com, linux-kernel@vger.kernel.org,
 Romain Perier <romain.perier@gmail.com>,
 Larry Finger <Larry.Finger@lwfinger.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Fri, Nov 15, 2019 at 02:16:10PM +0800, Greg Kroah-Hartman wrote:
> On Thu, Nov 14, 2019 at 09:39:00PM -0800, Kees Cook wrote:
> > In order to make the entire kernel usable under Clang's Control Flow
> > Integrity protections, function prototype casts need to be avoided
> > because this will trip CFI checks at runtime (i.e. a mismatch between
> > the caller's expected function prototype and the destination function's
> > prototype). Many of these cases can be found with -Wcast-function-type,
> > which found that the rtl wifi drivers had a bunch of needless function
> > casts. Remove function casts for tasklet callbacks in the various drivers.
> > 
> > Signed-off-by: Kees Cook <keescook@chromium.org>
> > ---
> >  drivers/staging/rtl8188eu/hal/rtl8188eu_recv.c        |  3 +--
> >  drivers/staging/rtl8188eu/hal/rtl8188eu_xmit.c        |  3 +--
> >  drivers/staging/rtl8188eu/include/rtl8188e_recv.h     |  2 +-
> >  drivers/staging/rtl8188eu/include/rtl8188e_xmit.h     |  2 +-
> >  drivers/staging/rtl8188eu/os_dep/usb_ops_linux.c      |  4 ++--
> >  drivers/staging/rtl8192e/rtllib_softmac.c             |  7 +++----
> >  .../staging/rtl8192u/ieee80211/ieee80211_softmac.c    |  7 +++----
> >  drivers/staging/rtl8192u/r8192U_core.c                |  8 ++++----
> >  drivers/staging/rtl8712/rtl8712_recv.c                | 11 +++++------
> >  drivers/staging/rtl8712/rtl871x_xmit.c                |  5 ++---
> >  drivers/staging/rtl8712/rtl871x_xmit.h                |  2 +-
> >  drivers/staging/rtl8712/usb_ops_linux.c               |  4 ++--
> >  drivers/staging/rtl8723bs/hal/rtl8723bs_recv.c        | 11 ++++-------
> >  13 files changed, 30 insertions(+), 39 deletions(-)
> 
> This fails to apply to my staging-next branch of staging.git.  Can you
> rebase and resend?

Ah, hrm, sorry. I think I was based on Linus's master. I will adjust!

-- 
Kees Cook
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
