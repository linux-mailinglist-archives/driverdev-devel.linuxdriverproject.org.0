Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 62E971191AA
	for <lists+driverdev-devel@lfdr.de>; Tue, 10 Dec 2019 21:15:26 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 70FBD88476;
	Tue, 10 Dec 2019 20:15:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id fWoyfzghRV6E; Tue, 10 Dec 2019 20:15:24 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id B1A788846E;
	Tue, 10 Dec 2019 20:15:21 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 539491BF2B7
 for <devel@linuxdriverproject.org>; Tue, 10 Dec 2019 20:15:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 4FB3787A11
 for <devel@linuxdriverproject.org>; Tue, 10 Dec 2019 20:15:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ZR0URrwILk-9 for <devel@linuxdriverproject.org>;
 Tue, 10 Dec 2019 20:15:18 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f193.google.com (mail-pl1-f193.google.com
 [209.85.214.193])
 by whitealder.osuosl.org (Postfix) with ESMTPS id B7B6E878D6
 for <devel@driverdev.osuosl.org>; Tue, 10 Dec 2019 20:15:18 +0000 (UTC)
Received: by mail-pl1-f193.google.com with SMTP id w7so287955plz.12
 for <devel@driverdev.osuosl.org>; Tue, 10 Dec 2019 12:15:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=a23C88J7c4vvDVUHbth3se+rWS20dGukI7AqnM65nco=;
 b=llhypkAjXBMezhrv+X8Q+gI6d8VkNqoKlcbVvdvI9On4vUPUv1r+slLo8z/bVhZCO9
 xcgXnJuQKorteGeo/pibJPACwGP2FUf2gKSAQvCekuGSMMFOzXK3KPfUUGJAid5XrYbr
 yIJwahVO0Ize5dYpK7n62kNZNlUE3LHXrW2gwsDLGvkAKntWVLisYmQul+PetiTuX4RD
 bXEoMc3tRYxBKShqLs8q3JeVfg2Ku5KnyW+lDV5kB9aHOYh4Vb/J0Yj/PVmOt5PJe8Ee
 gX1yAlMAkWtX6gUN6jbr1CTR1NrVrD9hh3WiNFp2e1HV6gY9GwbshX3OFlL2XnLFwVPz
 S4YQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :references:mime-version:content-disposition:in-reply-to:user-agent;
 bh=a23C88J7c4vvDVUHbth3se+rWS20dGukI7AqnM65nco=;
 b=GQfu5cS5TaHjiyOL/MGTsuNRd5iWKBRCzVTf1IMSlrrYC+a0tCv+rM2V+IlcaXrC9u
 1+NfRCohELypZj4GJRm//4N5PcJ0Il3qB4Z+BXIesqR704EZ2WWioMnaVUDUwlDy6w8o
 gGgZHUJ4xVpeOdIjvVIGWjV8DXLCFagk7VBVPFcGdcHBUG5CR8z91wkiUMpyWJb2+sKr
 dkzidSPfvUqyAdIwqRusUUIVRr27wvWd93waa01CYo2khK4LMcM9H0LqWh5q7QHFx48n
 b5a0bpKFsNZKP6R/MIv4d/KgXcc7VoIfgiS8j67nzWwUyYlPH2GWvvQj4VMUKvOBb8nE
 Yihw==
X-Gm-Message-State: APjAAAWIKJJWmomXBi2eKDdHzXzUzN8k0Y+BbZHdUZRvzSd0cQgYiaHd
 aPsmeUVPBbsmGTJOIfrFanc=
X-Google-Smtp-Source: APXvYqyde2PpnPTK52R4kRUah6Xn6N9A9Bds8wqjeKADVQqfQY97SRK0znf6zNywQ2NTkGk1SXCm7w==
X-Received: by 2002:a17:902:9885:: with SMTP id
 s5mr37169532plp.217.1576008918269; 
 Tue, 10 Dec 2019 12:15:18 -0800 (PST)
Received: from localhost ([2600:1700:e321:62f0:329c:23ff:fee3:9d7c])
 by smtp.gmail.com with ESMTPSA id j22sm3478462pji.16.2019.12.10.12.15.15
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 10 Dec 2019 12:15:16 -0800 (PST)
Date: Tue, 10 Dec 2019 12:15:15 -0800
From: Guenter Roeck <linux@roeck-us.net>
To: Aaro Koskinen <aaro.koskinen@iki.fi>
Subject: Re: [PATCH 1/2] staging: octeon: delete driver
Message-ID: <20191210201515.GA16912@roeck-us.net>
References: <20191210091509.3546251-1-gregkh@linuxfoundation.org>
 <EFBFCF4B-745B-4B1B-A176-08CE8CADBFEA@volery.com>
 <20191210120120.GA3779155@kroah.com>
 <20191210194659.GC18225@darkstar.musicnaut.iki.fi>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191210194659.GC18225@darkstar.musicnaut.iki.fi>
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
 Florian Westphal <fw@strlen.de>, Paul Burton <paulburton@kernel.org>,
 Giovanni Gherdovich <bobdc9664@seznam.cz>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 YueHaibing <yuehaibing@huawei.com>, linux-kernel@vger.kernel.org,
 "Matthew Wilcox \(Oracle\)" <willy@infradead.org>,
 Julia Lawall <julia.lawall@lip6.fr>, Sandro Volery <sandro@volery.com>,
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

On Tue, Dec 10, 2019 at 09:46:59PM +0200, Aaro Koskinen wrote:
> On Tue, Dec 10, 2019 at 01:01:20PM +0100, Greg Kroah-Hartman wrote:
> > On Tue, Dec 10, 2019 at 12:40:54PM +0100, Sandro Volery wrote:
> > > Doesn't octeon have drivers out of staging already?
> > > What is this module for?
> > 
> > I have no idea :(
> 
> It's stated in the TODO file you are deleting (visible in your
> patch): "This driver is functional and supports Ethernet on
> OCTEON+/OCTEON2/OCTEON3 chips at least up to CN7030."
> 
> This includes e.g. some D-Link routers and Uniquiti EdgeRouters. You
> can check from /proc/cpuinfo if you are running on this MIPS SoC.
> 

It also results in "mips:allmodconfig" build failures in mainline
and is for that reason being marked as BROKEN. Unfortunately,
misguided attempts to clean it up had the opposite effect.

Guenter
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
