Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 524DA2215E
	for <lists+driverdev-devel@lfdr.de>; Sat, 18 May 2019 05:28:57 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 6CCB1879A9;
	Sat, 18 May 2019 03:28:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id V53acFiovwl5; Sat, 18 May 2019 03:28:55 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 1A8938798D;
	Sat, 18 May 2019 03:28:54 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 63F441BF304
 for <devel@linuxdriverproject.org>; Sat, 18 May 2019 03:28:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 5D99222008
 for <devel@linuxdriverproject.org>; Sat, 18 May 2019 03:28:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id XtJhpoD0R59P for <devel@linuxdriverproject.org>;
 Sat, 18 May 2019 03:28:50 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-qt1-f193.google.com (mail-qt1-f193.google.com
 [209.85.160.193])
 by silver.osuosl.org (Postfix) with ESMTPS id ABA1E2154A
 for <devel@driverdev.osuosl.org>; Sat, 18 May 2019 03:28:50 +0000 (UTC)
Received: by mail-qt1-f193.google.com with SMTP id i26so10279808qtr.10
 for <devel@driverdev.osuosl.org>; Fri, 17 May 2019 20:28:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=4k2RPAOIwlNWvBVTtEJ5zltXK23wBhV48PCCQgLPHiE=;
 b=q822CBw5a/+uAweK0KVid8+RUmQbym/QH2YlJyz3TB7J9Ct9aXpor0aw6lOejEn8CG
 gmwZ93Alq+BkoYvq9gTdYNFtSzy/7Soqx08UT3ck8IeOSp34MXg+nwPGuyT9B7qclLFp
 lRf7OgLnq0tMmJOdOyOEA8zKXx6QYpCNSrq7iV49/MJxp6cs/M49JsxCiZA01ZfZNrif
 8Se80cmUQ0cdho2HpA5FsFt6cTaMx4OM2uepgHYXTIvixxSfvaXy+eFCGHq0CYa8WUPI
 YEfRct2O+zSyIqu+Gj07k4aIymn8YpZ2x79u1MKrViQdefXNSqzSrHxpztobHKbIj9Mt
 +yDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=4k2RPAOIwlNWvBVTtEJ5zltXK23wBhV48PCCQgLPHiE=;
 b=GZ5AuMBmZNkJE6CsMwgCPkcdfNmcYlUzGnjI8LBixekgpDk0eJXiaUdUhfhCrbod2A
 Ob0Hc44zYoHEU60uojtjoupv40y/CMsxay1GvZ6s4YXaqorGTEmuvUhb5HydUSTgUR7F
 3oYpGZDHtzP5OBB37x463GD+tq2xUimx+rvmlSxI+uzo9I9mtQKpQj8RWrS/SASxAXrR
 0craMNSoAa/z0oqGWfFtVNSIFQnVIrF2pPkpRVcqnyeryB1ShxGrUL4tyYGTL9t3lx8Z
 putO2by5vGz3TjKARgZV5ncTFqrNm56stEDiBIjJekqpSuyYUCnQS2TOt/9xjdffryK/
 m8Xw==
X-Gm-Message-State: APjAAAUCJ5sEd2D8ISKZWWSLP3J/s6j+nzmEufnnp23DeL6u91GD9l/7
 6vOMhqOXRvlJga/fpAO4C/k=
X-Google-Smtp-Source: APXvYqyRgcGoQefGiJDfG+qLVgABXquiY4xbWUkDfbSL0uV3O1PXPrRJPd27K7B+6f2z9EBGqr1FvQ==
X-Received: by 2002:a0c:acba:: with SMTP id m55mr11365004qvc.52.1558150129539; 
 Fri, 17 May 2019 20:28:49 -0700 (PDT)
Received: from arch-01.home (c-73-132-202-198.hsd1.dc.comcast.net.
 [73.132.202.198])
 by smtp.gmail.com with ESMTPSA id x8sm6320857qtc.96.2019.05.17.20.28.48
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Fri, 17 May 2019 20:28:49 -0700 (PDT)
Date: Sat, 18 May 2019 03:28:39 +0000
From: Geordan Neukum <gneukum1@gmail.com>
To: Joe Perches <joe@perches.com>
Subject: Re: [PATCH 4/5] staging: kpc2000: kpc_i2c: use %s with __func__
 identifier in log messages
Message-ID: <20190518032838.GA12809@arch-01.home>
References: <cover.1558146549.git.gneukum1@gmail.com>
 <ffd66b415e67f6b03483a6ee57b7b3dc0bab388f.1558146549.git.gneukum1@gmail.com>
 <9e30f140e314f03057a2941f4d091d8965391c17.camel@perches.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <9e30f140e314f03057a2941f4d091d8965391c17.camel@perches.com>
User-Agent: Mutt/1.11.4 (2019-03-13)
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
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Fri, May 17, 2019 at 07:58:19PM -0700, Joe Perches wrote:
> On Sat, 2019-05-18 at 02:29 +0000, Geordan Neukum wrote:
> > Throughout i2c_driver.c, there are instances where the log strings
> > contain the function's name hardcoded into the string. Instead, use the
> > printk conversion specifier '%s' with the __func__ preprocessor
> > identifier to more maintainably print the function's name.
>
> Might as well remove all of these and use the
> builtin ftrace function tracing mechanism instead.
>
> > diff --git a/drivers/staging/kpc2000/kpc_i2c/i2c_driver.c b/drivers/staging/kpc2000/kpc_i2c/i2c_driver.c
> []
> > @@ -142,7 +142,7 @@ static int i801_check_pre(struct i2c_device *priv)
> >  {
> >  	int status;
> >
> > -	dev_dbg(&priv->adapter.dev, "i801_check_pre\n");
> > +	dev_dbg(&priv->adapter.dev, "%s\n", __func__);
>
> etc...
>
Joe/All,

Acknowledged. I apologize for the inconvenience there -- I was
unfamiliar with that API until receiving your email. I'll hold on
additional uploads until other reviewers have had time to take a
look, but I do plan on leveraging the ftrace API instead of just
using __func__ and %s in my printk strings in the upcoming 'v2'
patchset.

Thanks for your feedback,
Geordan
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
