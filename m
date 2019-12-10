Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7914D119E89
	for <lists+driverdev-devel@lfdr.de>; Tue, 10 Dec 2019 23:48:11 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id A9C538850A;
	Tue, 10 Dec 2019 22:48:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id xiCFTJ-6Gm11; Tue, 10 Dec 2019 22:48:09 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id E0B9D884DF;
	Tue, 10 Dec 2019 22:48:08 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id B2D141BF3D7
 for <devel@linuxdriverproject.org>; Tue, 10 Dec 2019 22:48:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id A6ED7884DF
 for <devel@linuxdriverproject.org>; Tue, 10 Dec 2019 22:48:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id peI90usO006s for <devel@linuxdriverproject.org>;
 Tue, 10 Dec 2019 22:48:06 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f194.google.com (mail-pf1-f194.google.com
 [209.85.210.194])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 2989887A9C
 for <devel@driverdev.osuosl.org>; Tue, 10 Dec 2019 22:48:06 +0000 (UTC)
Received: by mail-pf1-f194.google.com with SMTP id p14so590975pfn.4
 for <devel@driverdev.osuosl.org>; Tue, 10 Dec 2019 14:48:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=toKM2TKe1TxNJ1VaQDO7o0YM+C3yJr2QelcOjh015Rs=;
 b=pbBYG0u1Bzy/q3jLJsNaX+L8CwYta1vgl3fEjO87Le/0PEWonsNYzt6cEeCGlEajq1
 bIl6/U+tcxSCkHrWcKyTLeXXalBIFGyG9w2sJhFs3OJ6KbT2D1U0iJGg6WQX7p62sdrn
 IaiR2v3HPq+C8uf2/lv40qFshPJmmHjgA7Yvv6gYUYhWLpcw4CCRE5LqyWDrQ+q5qYCj
 MEgtOjQRDvHbbbBJiUWh9hJ58p48ldv1XgALOkDasSuzGGxejVOWazsEJayfrUzvwmgJ
 i7nnd+dTecFfTmN26NzruoJQt1UXM08L1CxOsHzKENcOS6FGW/dCXq5fQ/BtIovotY8Y
 iFWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :references:mime-version:content-disposition:in-reply-to:user-agent;
 bh=toKM2TKe1TxNJ1VaQDO7o0YM+C3yJr2QelcOjh015Rs=;
 b=Wurg6L9zf2amLPRCE3z35O/bYObM0SFZcCVuppkSC2AcVkjhI2NNh87RADqKm72WnY
 pSX4g10+N5IaGkB/gcd+ECf71gg1oSUJoS26H6/gfKM3I53Q2yPkzdB7ru+GTm6JTZj1
 Y1NFLS0PG61qEEaf+y2IP1ikn91rLkWGA0IaCAwKlC0bRps1EalwktbqA2RUnlAwJbQH
 EOic17cpFI7D8iTfaoMKXpD/OzOtVFJFTOpI+sCxVGXgthAfWc65Z50/NFWD+VpSLFq/
 CnWBnEAHOmK+dLdEYNExwLV3rg42zdUT/g1qt7OG8xmd7ZNLcWPhRDbyGERBYmhHxem/
 fORg==
X-Gm-Message-State: APjAAAVaSKMxnOrR5dZpWJ52Z8QAdcHcfjAmPdfCcEbRtNRsMxEsJk3G
 P43nwv2stu7uWCI0HMQlfRM=
X-Google-Smtp-Source: APXvYqxi6tFJUHXKBXlv1vak8CiEOd7IldDFLoyZgDsTkXUY3scwhN8cMzSzOjmvU1EMyiERf+uqHw==
X-Received: by 2002:a63:3d4f:: with SMTP id k76mr564419pga.310.1576018085669; 
 Tue, 10 Dec 2019 14:48:05 -0800 (PST)
Received: from localhost ([2600:1700:e321:62f0:329c:23ff:fee3:9d7c])
 by smtp.gmail.com with ESMTPSA id o10sm29746pgq.68.2019.12.10.14.48.04
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 10 Dec 2019 14:48:04 -0800 (PST)
Date: Tue, 10 Dec 2019 14:48:03 -0800
From: Guenter Roeck <linux@roeck-us.net>
To: Aaro Koskinen <aaro.koskinen@iki.fi>
Subject: Re: [PATCH 1/2] staging: octeon: delete driver
Message-ID: <20191210224803.GA3372@roeck-us.net>
References: <20191210091509.3546251-1-gregkh@linuxfoundation.org>
 <EFBFCF4B-745B-4B1B-A176-08CE8CADBFEA@volery.com>
 <20191210120120.GA3779155@kroah.com>
 <20191210194659.GC18225@darkstar.musicnaut.iki.fi>
 <20191210201515.GA16912@roeck-us.net>
 <20191210214848.GA5834@darkstar.musicnaut.iki.fi>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191210214848.GA5834@darkstar.musicnaut.iki.fi>
User-Agent: Mutt/1.9.4 (2018-02-28)
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
Cc: devel@driverdev.osuosl.org, Branden Bonaby <brandonbonaby94@gmail.com>,
 YueHaibing <yuehaibing@huawei.com>, Paul Burton <paulburton@kernel.org>,
 Julia Lawall <julia.lawall@lip6.fr>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Florian Westphal <fw@strlen.de>, linux-kernel@vger.kernel.org,
 "Matthew Wilcox \(Oracle\)" <willy@infradead.org>,
 Giovanni Gherdovich <bobdc9664@seznam.cz>, Sandro Volery <sandro@volery.com>,
 Geert Uytterhoeven <geert@linux-m68k.org>,
 Valery Ivanov <ivalery111@gmail.com>,
 Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>,
 "David S. Miller" <davem@davemloft.net>,
 Dan Carpenter <dan.carpenter@oracle.com>,
 Wambui Karuga <wambui.karugax@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Tue, Dec 10, 2019 at 11:48:49PM +0200, Aaro Koskinen wrote:
> On Tue, Dec 10, 2019 at 12:15:15PM -0800, Guenter Roeck wrote:
> > On Tue, Dec 10, 2019 at 09:46:59PM +0200, Aaro Koskinen wrote:
> > > On Tue, Dec 10, 2019 at 01:01:20PM +0100, Greg Kroah-Hartman wrote:
> > > > I have no idea :(
> > > 
> > > It's stated in the TODO file you are deleting (visible in your
> > > patch): "This driver is functional and supports Ethernet on
> > > OCTEON+/OCTEON2/OCTEON3 chips at least up to CN7030."
> > > 
> > > This includes e.g. some D-Link routers and Uniquiti EdgeRouters. You
> > > can check from /proc/cpuinfo if you are running on this MIPS SoC.
> > 
> > It also results in "mips:allmodconfig" build failures in mainline
> > and is for that reason being marked as BROKEN. Unfortunately,
> > misguided attempts to clean it up had the opposite effect.
> 
> This was because of stubs hack added by someone - people who do not run
> or care about the hardware can now break it for others with their
> silly x86 "compile test"s.
> 

Thast was the first breakage. The second was to replace typedefs with
structures without considering that those typedefs are still used
throughout the Cavium code, creating conflicts between "mystruct_t" and
"struct mystruct" in various API calls. It may well be that this
"improvement" was tested with x86_64:allmodconfig - if it was tested
in the first place. It was most definitely not tested with
cavium_octeon_defconfig, much less with real hardware.

Pretty much none of the changes made to the driver in the recent
past have improved it. On the contrary, it is getting worse. With no
one committed to get the driver out of staging, I don't think there
is a reasonable alternative to removing it. For my part I am for sure
not looking forward having to deal with it breaking over and over
again and having to spend time tracking down the breakage.

Guenter
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
