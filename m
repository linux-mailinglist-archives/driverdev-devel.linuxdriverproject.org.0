Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 962B6FE332
	for <lists+driverdev-devel@lfdr.de>; Fri, 15 Nov 2019 17:49:09 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 7AC3D893B6;
	Fri, 15 Nov 2019 16:49:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 2EGOSVAIdMa2; Fri, 15 Nov 2019 16:49:07 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id A655E8938D;
	Fri, 15 Nov 2019 16:49:06 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 76A011BF2CB
 for <devel@linuxdriverproject.org>; Fri, 15 Nov 2019 16:49:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 72D4D204C2
 for <devel@linuxdriverproject.org>; Fri, 15 Nov 2019 16:49:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id DKjxAjIcg28E for <devel@linuxdriverproject.org>;
 Fri, 15 Nov 2019 16:49:04 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f195.google.com (mail-pg1-f195.google.com
 [209.85.215.195])
 by silver.osuosl.org (Postfix) with ESMTPS id C13D8204C1
 for <devel@driverdev.osuosl.org>; Fri, 15 Nov 2019 16:49:04 +0000 (UTC)
Received: by mail-pg1-f195.google.com with SMTP id z24so6274408pgu.4
 for <devel@driverdev.osuosl.org>; Fri, 15 Nov 2019 08:49:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=VLpzj5GM/mlBjL0K2sCFmpTMFSROa82RYmL4861eSc0=;
 b=RgkFP3a9s426OYYkZ7W21MD1zAotJvoKIJcOx8fEGlAapE+TfvDLycmtw0489eXEiW
 Fl4qZmK8/64lup/wMwN3kesYT96O/AbpCg4kKCpfpZNM3t0JygH/7aRhN85B9VNN+TOD
 1U2MWrHiTYG9FXUsiFNTenULOK35swEYq9okE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=VLpzj5GM/mlBjL0K2sCFmpTMFSROa82RYmL4861eSc0=;
 b=Gtpjjrr8PE76AjJ9nmP0kDVaV3Xxh6PhhdB8TajbOuEIELBw/PzZEHaATmRHcHzg+F
 KkWORy57I6pKTcpYeC4zuq1Y1VJpP7J6kSOcS4xqXylQDXPZIfwZq/qxzCaL8HaCTVwh
 JbL85Buu9AcbAAyAEEDqULqB05NAmwmT/T1y96yxO/ZzUlkh70gYpXrtOxravlKAmuOt
 PCxjfNQyXQKq7guBdI5jfed4mrbR8QEichy5tO+4xHvPorsXV1yxzEhGU25n/VW4wVlw
 +YLCtu/sfAGUgGsWkIMSosGkjGHXlkosB8TkJ29Z3X8N4Yp3vnX7nLfWDDxs7GeuCWPz
 szcg==
X-Gm-Message-State: APjAAAWuT68d5I/FcbubvaS9VByeY64+fsEumgpXmnJdKVtSRYTTGYe+
 ef1Sh1JTdyijiyWbxIHOFLLe/iADt28=
X-Google-Smtp-Source: APXvYqzK/lcD05IQBl/MSOo179tz+tQRcqFgCWgHTRpFQFjaLXWwuRaGkmv3yTQ5UcYy81I/Mzn1Vw==
X-Received: by 2002:a63:4961:: with SMTP id y33mr2498326pgk.264.1573836543743; 
 Fri, 15 Nov 2019 08:49:03 -0800 (PST)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id v15sm11235459pfe.44.2019.11.15.08.49.00
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 15 Nov 2019 08:49:02 -0800 (PST)
Date: Fri, 15 Nov 2019 08:48:55 -0800
From: Kees Cook <keescook@chromium.org>
To: Dan Carpenter <dan.carpenter@oracle.com>
Subject: Re: [PATCH] staging: rtl*: Remove tasklet callback casts
Message-ID: <201911150848.12F713465F@keescook>
References: <201911142135.5656E23@keescook> <20191115074003.GB19101@kadam.lan>
 <20191115074235.GJ19079@kadam.lan>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191115074235.GJ19079@kadam.lan>
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
 kernel-hardening@lists.openwall.com,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 Romain Perier <romain.perier@gmail.com>,
 Larry Finger <Larry.Finger@lwfinger.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Fri, Nov 15, 2019 at 10:42:35AM +0300, Dan Carpenter wrote:
> On Fri, Nov 15, 2019 at 10:40:03AM +0300, Dan Carpenter wrote:
> > On Thu, Nov 14, 2019 at 09:39:00PM -0800, Kees Cook wrote:
> > > In order to make the entire kernel usable under Clang's Control Flow
> > > Integrity protections, function prototype casts need to be avoided
> > > because this will trip CFI checks at runtime (i.e. a mismatch between
> > > the caller's expected function prototype and the destination function's
> > > prototype). Many of these cases can be found with -Wcast-function-type,
> > > which found that the rtl wifi drivers had a bunch of needless function
> > > casts. Remove function casts for tasklet callbacks in the various drivers.
> > > 
> > > Signed-off-by: Kees Cook <keescook@chromium.org>
> > 
> > Clang should treat void pointers as a special case.  If void pointers
> > are bad, surely replacing them with unsigned long is even more ambigous
> > and worse.
> 
> Wow...  Never mind.  I completely misread this patch.  I am ashamed.

Okay, whew. I was starting to try to wrap my brain around what you
meant and was failing badly. :)

> The patch is fine.
> 
> Reviewed-by: Dan Carpenter <dan.carpenter@oracle.com>

Thanks!

-Kees

> 
> regards,
> dan carpenter
> 

-- 
Kees Cook
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
