Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id D886F17D60A
	for <lists+driverdev-devel@lfdr.de>; Sun,  8 Mar 2020 21:10:37 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 6718787154;
	Sun,  8 Mar 2020 20:10:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id iaOimftl8rbQ; Sun,  8 Mar 2020 20:10:27 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 93EBC86341;
	Sun,  8 Mar 2020 20:10:22 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id D32461BF2B0
 for <devel@linuxdriverproject.org>; Sun,  8 Mar 2020 20:10:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id C401C87008
 for <devel@linuxdriverproject.org>; Sun,  8 Mar 2020 20:10:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id xCo39hEJf_ax for <devel@linuxdriverproject.org>;
 Sun,  8 Mar 2020 20:10:16 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f196.google.com (mail-pg1-f196.google.com
 [209.85.215.196])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 1D2DB86341
 for <devel@driverdev.osuosl.org>; Sun,  8 Mar 2020 20:10:15 +0000 (UTC)
Received: by mail-pg1-f196.google.com with SMTP id 7so3739964pgr.2
 for <devel@driverdev.osuosl.org>; Sun, 08 Mar 2020 13:10:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:subject:from:to:cc:date:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=keYQOSsjtxcwkK7w1EwEK6NznXj1jY335Yzu34Xh85g=;
 b=ZW6FjChq6D4x9ZCIUzVq7Xxn+VVO31DB3Vz4iM/+oQf38Y36vs53f7+X0ZDfMtoi1n
 NXt3FwpwxarBhuJA7OzcwWqMNSIXgjdhjezIwuTllt1bDpxjLiIPFcfybZWWIOrf0uUq
 FOgpUCNTZOhjunpAUp8+2s0lHwer9N7jHw+62OBusM1a7AgUHqEGfJp7TNqz8RKbemIX
 JeK6+b9IWdPIs+Qu8Itm3uSnwOB8xW5Gx+0fO6+IfRsxgF3coDU/cCYdFnPDA1eH7oYt
 iee10U6VhAqxhUfSE0MVeJaclJkTTkIsRUB0Sp9o7wqW37IiZfKtTFQdlSNWrJ15qnfr
 y4LQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=keYQOSsjtxcwkK7w1EwEK6NznXj1jY335Yzu34Xh85g=;
 b=Ufm4h5t+0SmnRSi3qm1cq3Zu9qvqeiWMiv/T3nhK/at4et0PL+NbSTwiZS5IWtZ7Df
 CZhI866e+uLUjk6+Nxu6Jh56mAdQ3A3in4+itL3PadarCyc8+nrpLL382SfRJRH7qeu6
 bH9WrXd4bc++OMVCMSDOSbtjK3malnlJfBooksnzLTqhrLCziT5lauDQ+I35/uqSoAzK
 UCfQXW7ZLl2P0D+iBXUy7lhxLVrXtSQnLuYN3IjNR1i7GTaMvtB9JvQQZy5aKeYuEJsR
 zSnJRf9MOBPUHEk/HUa2d5mXmi+ihCXJ8ZkqRPdwEUnNOtplvgZOfEA1XFHXyrwEnH75
 aTSQ==
X-Gm-Message-State: ANhLgQ3VnvBNlvNg8SoqbbRxu60Spkh5nuepHeMB4yobdrIC2XeZ40RK
 9MdMSeLZD4+KEPUA0V/525A=
X-Google-Smtp-Source: ADFU+vvVjiENSas95D9tD6ARDPLK6wVhe+rxZ43vBy5zx3pyZVcYuAK4CVAOOmEL9McNcdR+wKqU0A==
X-Received: by 2002:a63:d20d:: with SMTP id a13mr13855281pgg.257.1583698214986; 
 Sun, 08 Mar 2020 13:10:14 -0700 (PDT)
Received: from Shreeya-Patel ([1.23.250.201])
 by smtp.googlemail.com with ESMTPSA id x14sm34284557pfr.23.2020.03.08.13.10.11
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Sun, 08 Mar 2020 13:10:14 -0700 (PDT)
Message-ID: <465a7cfe822438a8edd32d3a5120bd565797ca4d.camel@gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] Staging: rtl8188eu: Add space around
 operator
From: Shreeya Patel <shreeya.patel23498@gmail.com>
To: Joe Perches <joe@perches.com>, Julia Lawall <julia.lawall@inria.fr>
Date: Mon, 09 Mar 2020 01:40:07 +0530
In-Reply-To: <5a28241e8c3b11cbfe1776caadcb799cd9e39ee4.camel@perches.com>
References: <20200308192152.26403-1-shreeya.patel23498@gmail.com>
 <alpine.DEB.2.21.2003082030310.2400@hadrien>
 <5a28241e8c3b11cbfe1776caadcb799cd9e39ee4.camel@perches.com>
X-Mailer: Evolution 3.28.5-0ubuntu0.18.04.1 
Mime-Version: 1.0
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
Cc: devel@driverdev.osuosl.org, nramas@linux.microsoft.com,
 daniel.baluta@gmail.com, sbrivio@redhat.com, gregkh@linuxfoundation.org,
 linux-kernel@vger.kernel.org, hverkuil@xs4all.nl,
 outreachy-kernel@googlegroups.com, Larry.Finger@lwfinger.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Sun, 2020-03-08 at 12:59 -0700, Joe Perches wrote:

Hi Joe,

> On Sun, 2020-03-08 at 20:31 +0100, Julia Lawall wrote:
> > On Mon, 9 Mar 2020, Shreeya Patel wrote:
> > 
> > > Add space around & operator for improving the code
> > > readability.
> > I guess you found this with checkpatch.  If so, it could be nice to
> > add
> > "Reported by checkpatch." to the log message.  OK otherwise.
> 
> It's also be nice to do all the whitespace changes at once.
> 
> See below...
> 
> > Acked-by: Julia Lawall <julia.lawall@inria.fr>
> > 
> > > Signed-off-by: Shreeya Patel <shreeya.patel23498@gmail.com>
> 
> []
> > > diff --git a/drivers/staging/rtl8188eu/core/rtw_mlme.c
> > > b/drivers/staging/rtl8188eu/core/rtw_mlme.c
> 
> []
> > > @@ -924,7 +924,7 @@ static void rtw_joinbss_update_network(struct
> > > adapter *padapter, struct wlan_net
> > >  	/* update fw_state will clr _FW_UNDER_LINKING here indirectly
> > > */
> > >  	switch (pnetwork->network.InfrastructureMode) {
> > >  	case Ndis802_11Infrastructure:
> > > -		if (pmlmepriv->fw_state&WIFI_UNDER_WPS)
> > > +		if (pmlmepriv->fw_state & WIFI_UNDER_WPS)
> > >  			pmlmepriv->fw_state =
> > > WIFI_STATION_STATE|WIFI_UNDER_WPS;
> 
> Like adding spaces around the | here too.
> 
I thought of doing this but then it was introducing another warning of
"Line over 80 charachters" that is why I didn't proceed with it.

What is your suggestion over it? Should I let the line be over 80
characters and add spaces around the operators?

> An automated way to do this is:
> 
> Here's the diff produced by the commands below
> 
> $ git diff --shortstat drivers/staging/rtl8188eu
>  32 files changed, 407 insertions(+), 407 deletions(-)
> $ git diff -w --shortstat drivers/staging/rtl8188eu
>  32 files changed, 0 insertions(+), 0 deletions(-)
> 
> $ git ls-files drivers/staging/rtl8188eu | \
>   xargs ./scripts/checkpatch.pl --fix-inplace -f --types=spacing --
> terse --no-summary
> drivers/staging/rtl8188eu/core/rtw_mlme.c:152: CHECK: spaces
> preferred around that '/' (ctx:VxV)
> drivers/staging/rtl8188eu/core/rtw_mlme.c:252: CHECK: spaces
> preferred around that '>>' (ctx:VxV)
> drivers/staging/rtl8188eu/core/rtw_mlme.c:253: CHECK: spaces
> preferred around that '>>' (ctx:VxV)
> drivers/staging/rtl8188eu/core/rtw_mlme.c:360: CHECK: spaces
> preferred around that '+' (ctx:VxV)
> drivers/staging/rtl8188eu/core/rtw_mlme.c:360: CHECK: spaces
> preferred around that '*' (ctx:VxV)
> drivers/staging/rtl8188eu/core/rtw_mlme.c:360: CHECK: spaces
> preferred around that '/' (ctx:VxV)
> drivers/staging/rtl8188eu/core/rtw_mlme.c:361: CHECK: spaces
> preferred around that '+' (ctx:VxV)
> drivers/staging/rtl8188eu/core/rtw_mlme.c:361: CHECK: spaces
> preferred around that '*' (ctx:VxV)
> drivers/staging/rtl8188eu/core/rtw_mlme.c:361: CHECK: spaces
> preferred around that '/' (ctx:VxV)
> drivers/staging/rtl8188eu/core/rtw_mlme.c:362: CHECK: spaces
> preferred around that '+' (ctx:VxV)
> drivers/staging/rtl8188eu/core/rtw_mlme.c:362: CHECK: spaces
> preferred around that '*' (ctx:VxV)
> drivers/staging/rtl8188eu/core/rtw_mlme.c:362: CHECK: spaces
> preferred around that '/' (ctx:VxV)
> drivers/staging/rtl8188eu/core/rtw_mlme.c:513: CHECK: spaces
> preferred around that '+' (ctx:VxV)
> drivers/staging/rtl8188eu/core/rtw_mlme.c:513: CHECK: spaces
> preferred around that '-' (ctx:VxV)
> drivers/staging/rtl8188eu/core/rtw_mlme.c:927: CHECK: spaces
> preferred around that '&' (ctx:VxV)
> drivers/staging/rtl8188eu/core/rtw_mlme.c:928: CHECK: spaces
> preferred around that '|' (ctx:VxV)
> drivers/staging/rtl8188eu/core/rtw_mlme.c:1100: CHECK: spaces
> preferred around that '-' (ctx:VxV)
> drivers/staging/rtl8188eu/core/rtw_mlme.c:1107: CHECK: spaces
> preferred around that '-' (ctx:VxV)
> drivers/staging/rtl8188eu/core/rtw_mlme.c:1126: CHECK: spaces
> preferred around that '<<' (ctx:VxV)
> drivers/staging/rtl8188eu/core/rtw_mlme.c:1126: CHECK: spaces
> preferred around that '|' (ctx:VxV)
> drivers/staging/rtl8188eu/core/rtw_mlme.c:1216: CHECK: spaces
> preferred around that '<<' (ctx:VxV)
> drivers/staging/rtl8188eu/core/rtw_mlme.c:1216: CHECK: spaces
> preferred around that '|' (ctx:VxV)
> drivers/staging/rtl8188eu/core/rtw_mlme.c:1643: CHECK: spaces
> preferred around that '+' (ctx:VxV)
> drivers/staging/rtl8188eu/core/rtw_mlme.c:1643: CHECK: spaces
> preferred around that '+' (ctx:VxV)
> drivers/staging/rtl8188eu/core/rtw_mlme.c:1643: CHECK: spaces
> preferred around that '+' (ctx:VxV)
> drivers/staging/rtl8188eu/core/rtw_mlme.c:1643: CHECK: spaces
> preferred around that '+' (ctx:VxV)
> drivers/staging/rtl8188eu/core/rtw_mlme.c:1643: CHECK: spaces
> preferred around that '+' (ctx:VxV)
> drivers/staging/rtl8188eu/core/rtw_mlme.c:1737: CHECK: spaces
> preferred around that '+' (ctx:VxV)
> drivers/staging/rtl8188eu/core/rtw_mlme.c:1742: CHECK: spaces
> preferred around that '+' (ctx:VxV)
> drivers/staging/rtl8188eu/core/rtw_mlme.c:1743: CHECK: spaces
> preferred around that '+' (ctx:VxV)
> drivers/staging/rtl8188eu/core/rtw_mlme.c:1868: CHECK: spaces
> preferred around that '+' (ctx:VxV)
> drivers/staging/rtl8188eu/core/rtw_mlme.c:1868: CHECK: spaces
> preferred around that '-' (ctx:VxV)
> drivers/staging/rtl8188eu/core/rtw_mlme.c:1907: CHECK: spaces
> preferred around that '+' (ctx:VxV)
> drivers/staging/rtl8188eu/core/rtw_mlme.c:1913: CHECK: spaces
> preferred around that '+' (ctx:VxV)
> drivers/staging/rtl8188eu/core/rtw_mlme.c:1913: CHECK: spaces
> preferred around that '-' (ctx:VxV)
> drivers/staging/rtl8188eu/core/rtw_mlme.c:1916: CHECK: spaces
> preferred around that '+' (ctx:VxV)
> drivers/staging/rtl8188eu/core/rtw_mlme.c:1916: CHECK: spaces
> preferred around that '+' (ctx:VxV)
> drivers/staging/rtl8188eu/core/rtw_pwrctrl.c:208: CHECK: spaces
> preferred around that '|' (ctx:VxV)
> drivers/staging/rtl8188eu/core/rtw_pwrctrl.c:209: CHECK: spaces
> preferred around that '|' (ctx:VxV)
> drivers/staging/rtl8188eu/core/rtw_pwrctrl.c:211: CHECK: spaces
> preferred around that '|' (ctx:VxV)
> drivers/staging/rtl8188eu/core/rtw_pwrctrl.c:252: CHECK: spaces
> preferred around that '%' (ctx:VxV)
> drivers/staging/rtl8188eu/core/rtw_recv.c:255: CHECK: spaces
> preferred around that '-' (ctx:VxV)
> drivers/staging/rtl8188eu/core/rtw_recv.c:256: CHECK: spaces
> preferred around that '-' (ctx:VxV)
> drivers/staging/rtl8188eu/core/rtw_recv.c:256: CHECK: spaces
> preferred around that '-' (ctx:VxV)
> drivers/staging/rtl8188eu/core/rtw_recv.c:258: CHECK: spaces
> preferred around that '+' (ctx:VxV)
> drivers/staging/rtl8188eu/core/rtw_recv.c:258: CHECK: spaces
> preferred around that '+' (ctx:VxV)
> drivers/staging/rtl8188eu/core/rtw_recv.c:269: CHECK: spaces
> preferred around that '+' (ctx:VxV)
> drivers/staging/rtl8188eu/core/rtw_recv.c:280: CHECK: spaces
> preferred around that '-' (ctx:VxV)
> drivers/staging/rtl8188eu/core/rtw_recv.c:280: CHECK: spaces
> preferred around that '-' (ctx:VxV)
> drivers/staging/rtl8188eu/core/rtw_recv.c:280: CHECK: spaces
> preferred around that '-' (ctx:VxV)
> drivers/staging/rtl8188eu/core/rtw_recv.c:281: CHECK: spaces
> preferred around that '-' (ctx:VxV)
> drivers/staging/rtl8188eu/core/rtw_recv.c:281: CHECK: spaces
> preferred around that '-' (ctx:VxV)
> drivers/staging/rtl8188eu/core/rtw_recv.c:281: CHECK: spaces
> preferred around that '-' (ctx:VxV)
> drivers/staging/rtl8188eu/core/rtw_recv.c:282: CHECK: spaces
> preferred around that '-' (ctx:VxV)
> drivers/staging/rtl8188eu/core/rtw_recv.c:282: CHECK: spaces
> preferred around that '-' (ctx:VxV)
> drivers/staging/rtl8188eu/core/rtw_recv.c:285: CHECK: spaces
> preferred around that '-' (ctx:VxV)
> drivers/staging/rtl8188eu/core/rtw_recv.c:285: CHECK: spaces
> preferred around that '-' (ctx:VxV)
> drivers/staging/rtl8188eu/core/rtw_recv.c:285: CHECK: spaces
> preferred around that '-' (ctx:VxV)
> drivers/staging/rtl8188eu/core/rtw_recv.c:286: CHECK: spaces
> preferred around that '-' (ctx:VxV)
> drivers/staging/rtl8188eu/core/rtw_recv.c:286: CHECK: spaces
> preferred around that '-' (ctx:VxV)
> drivers/staging/rtl8188eu/core/rtw_recv.c:286: CHECK: spaces
> preferred around that '-' (ctx:VxV)
> drivers/staging/rtl8188eu/core/rtw_recv.c:287: CHECK: spaces
> preferred around that '-' (ctx:VxV)
> drivers/staging/rtl8188eu/core/rtw_recv.c:287: CHECK: spaces
> preferred around that '-' (ctx:VxV)
> drivers/staging/rtl8188eu/core/rtw_recv.c:298: CHECK: spaces
> preferred around that '+' (ctx:VxV)
> drivers/staging/rtl8188eu/core/rtw_recv.c:299: CHECK: spaces
> preferred around that '+' (ctx:VxV)
> drivers/staging/rtl8188eu/core/rtw_recv.c:299: CHECK: spaces
> preferred around that '+' (ctx:VxV)
> drivers/staging/rtl8188eu/core/rtw_recv.c:300: CHECK: spaces
> preferred around that '+' (ctx:VxV)
> drivers/staging/rtl8188eu/core/rtw_recv.c:300: CHECK: spaces
> preferred around that '+' (ctx:VxV)
> drivers/staging/rtl8188eu/core/rtw_recv.c:301: CHECK: spaces
> preferred around that '+' (ctx:VxV)
> drivers/staging/rtl8188eu/core/rtw_recv.c:301: CHECK: spaces
> preferred around that '+' (ctx:VxV)
> drivers/staging/rtl8188eu/core/rtw_recv.c:302: CHECK: spaces
> preferred around that '+' (ctx:VxV)
> drivers/staging/rtl8188eu/core/rtw_recv.c:302: CHECK: spaces
> preferred around that '+' (ctx:VxV)
> drivers/staging/rtl8188eu/core/rtw_recv.c:303: CHECK: spaces
> preferred around that '+' (ctx:VxV)
> drivers/staging/rtl8188eu/core/rtw_recv.c:303: CHECK: spaces
> preferred around that '+' (ctx:VxV)
> drivers/staging/rtl8188eu/core/rtw_recv.c:304: CHECK: spaces
> preferred around that '+' (ctx:VxV)
> drivers/staging/rtl8188eu/core/rtw_recv.c:304: CHECK: spaces
> preferred around that '+' (ctx:VxV)
> drivers/staging/rtl8188eu/core/rtw_recv.c:305: CHECK: spaces
> preferred around that '+' (ctx:VxV)
> drivers/staging/rtl8188eu/core/rtw_recv.c:305: CHECK: spaces
> preferred around that '+' (ctx:VxV)
> drivers/staging/rtl8188eu/core/rtw_recv.c:499: CHECK: spaces
> preferred around that '&' (ctx:VxV)
> drivers/staging/rtl8188eu/core/rtw_recv.c:564: CHECK: spaces
> preferred around that '&' (ctx:VxV)
> drivers/staging/rtl8188eu/core/rtw_recv.c:567: CHECK: spaces
> preferred around that '&' (ctx:VxV)
> drivers/staging/rtl8188eu/core/rtw_recv.c:573: CHECK: spaces
> preferred around that '&' (ctx:VxV)
> drivers/staging/rtl8188eu/core/rtw_recv.c:577: CHECK: spaces
> preferred around that '&' (ctx:VxV)
> drivers/staging/rtl8188eu/core/rtw_recv.c:581: CHECK: spaces
> preferred around that '&' (ctx:VxV)
> drivers/staging/rtl8188eu/core/rtw_recv.c:586: CHECK: spaces
> preferred around that '&' (ctx:VxV)
> drivers/staging/rtl8188eu/core/rtw_recv.c:895: CHECK: spaces
> preferred around that '&' (ctx:VxV)
> drivers/staging/rtl8188eu/core/rtw_recv.c:899: CHECK: spaces
> preferred around that '&' (ctx:VxV)
> drivers/staging/rtl8188eu/core/rtw_recv.c:903: CHECK: spaces
> preferred around that '&' (ctx:VxV)
> drivers/staging/rtl8188eu/core/rtw_recv.c:908: CHECK: spaces
> preferred around that '&' (ctx:VxV)
> drivers/staging/rtl8188eu/core/rtw_recv.c:921: CHECK: spaces
> preferred around that '&' (ctx:VxV)
> drivers/staging/rtl8188eu/core/rtw_recv.c:921: CHECK: spaces
> preferred around that '&' (ctx:VxV)
> drivers/staging/rtl8188eu/core/rtw_recv.c:959: CHECK: spaces
> preferred around that '&' (ctx:VxV)
> drivers/staging/rtl8188eu/core/rtw_recv.c:1277: CHECK: spaces
> preferred around that '+' (ctx:VxV)
> drivers/staging/rtl8188eu/core/rtw_recv.c:1278: CHECK: spaces
> preferred around that '+' (ctx:VxV)
> drivers/staging/rtl8188eu/core/rtw_recv.c:1278: CHECK: spaces
> preferred around that '+' (ctx:VxV)
> drivers/staging/rtl8188eu/core/rtw_recv.c:1297: CHECK: spaces
> preferred around that '+' (ctx:VxV)
> drivers/staging/rtl8188eu/core/rtw_recv.c:1553: CHECK: spaces
> preferred around that '-' (ctx:VxV)
> drivers/staging/rtl8188eu/core/rtw_security.c:83: CHECK: spaces
> preferred around that '<<' (ctx:VxV)
> drivers/staging/rtl8188eu/core/rtw_security.c:83: CHECK: spaces
> preferred around that '&' (ctx:VxV)
> drivers/staging/rtl8188eu/core/rtw_security.c:83: CHECK: spaces
> preferred around that '<<' (ctx:VxV)
> drivers/staging/rtl8188eu/core/rtw_security.c:83: CHECK: spaces
> preferred around that '&' (ctx:VxV)
> drivers/staging/rtl8188eu/core/rtw_security.c:83: CHECK: spaces
> preferred around that '<<' (ctx:VxV)
> drivers/staging/rtl8188eu/core/rtw_security.c:83: CHECK: spaces
> preferred around that '&' (ctx:VxV)
> drivers/staging/rtl8188eu/core/rtw_security.c:84: CHECK: spaces
> preferred around that '<<' (ctx:VxV)
> drivers/staging/rtl8188eu/core/rtw_security.c:84: CHECK: spaces
> preferred around that '&' (ctx:VxV)
> drivers/staging/rtl8188eu/core/rtw_security.c:84: CHECK: spaces
> preferred around that '>>' (ctx:VxV)
> drivers/staging/rtl8188eu/core/rtw_security.c:84: CHECK: spaces
> preferred around that '&' (ctx:VxV)
> drivers/staging/rtl8188eu/core/rtw_security.c:84: CHECK: spaces
> preferred around that '>>' (ctx:VxV)
> drivers/staging/rtl8188eu/core/rtw_security.c:84: CHECK: spaces
> preferred around that '&' (ctx:VxV)
> drivers/staging/rtl8188eu/core/rtw_security.c:85: CHECK: spaces
> preferred around that '>>' (ctx:VxV)
> drivers/staging/rtl8188eu/core/rtw_security.c:85: CHECK: spaces
> preferred around that '&' (ctx:VxV)
> drivers/staging/rtl8188eu/core/rtw_security.c:85: CHECK: spaces
> preferred around that '>>' (ctx:VxV)
> drivers/staging/rtl8188eu/core/rtw_security.c:85: CHECK: spaces
> preferred around that '&' (ctx:VxV)
> drivers/staging/rtl8188eu/core/rtw_security.c:263: CHECK: spaces
> preferred around that '*' (ctx:VxV)
> drivers/staging/rtl8188eu/core/rtw_security.c:299: CHECK: spaces
> preferred around that '*' (ctx:VxV)
> drivers/staging/rtl8188eu/core/rtw_security.c:340: CHECK: spaces
> preferred around that '+' (ctx:VxV)
> drivers/staging/rtl8188eu/core/rtw_security.c:354: CHECK: spaces
> preferred around that '&' (ctx:VxV)
> drivers/staging/rtl8188eu/core/rtw_security.c:356: CHECK: spaces
> preferred around that '&' (ctx:VxV)
> drivers/staging/rtl8188eu/core/rtw_security.c:362: CHECK: spaces
> preferred around that '&' (ctx:VxV)
> drivers/staging/rtl8188eu/core/rtw_security.c:385: CHECK: spaces
> preferred around that '*' (ctx:VxV)
> drivers/staging/rtl8188eu/core/rtw_security.c:385: CHECK: spaces
> preferred around that '+' (ctx:VxV)
> drivers/staging/rtl8188eu/core/rtw_security.c:385: CHECK: spaces
> preferred around that '*' (ctx:VxV)
> drivers/staging/rtl8188eu/core/rtw_security.c:500: CHECK: spaces
> preferred around that '&' (ctx:VxV)
> drivers/staging/rtl8188eu/core/rtw_security.c:500: CHECK: spaces
> preferred around that '+' (ctx:VxV)
> drivers/staging/rtl8188eu/core/rtw_security.c:501: CHECK: spaces
> preferred around that '&' (ctx:VxV)
> drivers/staging/rtl8188eu/core/rtw_security.c:501: CHECK: spaces
> preferred around that '+' (ctx:VxV)
> drivers/staging/rtl8188eu/core/rtw_security.c:502: CHECK: spaces
> preferred around that '&' (ctx:VxV)
> drivers/staging/rtl8188eu/core/rtw_security.c:502: CHECK: spaces
> preferred around that '+' (ctx:VxV)
> drivers/staging/rtl8188eu/core/rtw_security.c:503: CHECK: spaces
> preferred around that '&' (ctx:VxV)
> drivers/staging/rtl8188eu/core/rtw_security.c:503: CHECK: spaces
> preferred around that '+' (ctx:VxV)
> drivers/staging/rtl8188eu/core/rtw_security.c:504: CHECK: spaces
> preferred around that '&' (ctx:VxV)
> drivers/staging/rtl8188eu/core/rtw_security.c:504: CHECK: spaces
> preferred around that '+' (ctx:VxV)
> drivers/staging/rtl8188eu/core/rtw_security.c:569: CHECK: spaces
> preferred around that '+' (ctx:VxV)
> drivers/staging/rtl8188eu/core/rtw_security.c:569: CHECK: spaces
> preferred around that '*' (ctx:VxV)
> drivers/staging/rtl8188eu/core/rtw_security.c:570: CHECK: spaces
> preferred around that '+' (ctx:VxV)
> drivers/staging/rtl8188eu/core/rtw_security.c:570: CHECK: spaces
> preferred around that '*' (ctx:VxV)
> drivers/staging/rtl8188eu/core/rtw_security.c:616: CHECK: spaces
> preferred around that '+' (ctx:VxV)
> drivers/staging/rtl8188eu/core/rtw_security.c:617: CHECK: spaces
> preferred around that '+' (ctx:VxV)
> drivers/staging/rtl8188eu/core/rtw_security.c:617: CHECK: spaces
> preferred around that '+' (ctx:VxV)
> drivers/staging/rtl8188eu/core/rtw_security.c:622: CHECK: spaces
> preferred around that '>>' (ctx:VxV)
> drivers/staging/rtl8188eu/core/rtw_security.c:626: CHECK: spaces
> preferred around that '+' (ctx:VxV)
> drivers/staging/rtl8188eu/core/rtw_security.c:627: CHECK: spaces
> preferred around that '-' (ctx:VxV)
> drivers/staging/rtl8188eu/core/rtw_security.c:627: CHECK: spaces
> preferred around that '-' (ctx:VxV)
> drivers/staging/rtl8188eu/core/rtw_security.c:627: CHECK: spaces
> preferred around that '-' (ctx:VxV)
> drivers/staging/rtl8188eu/core/rtw_security.c:635: CHECK: spaces
> preferred around that '+' (ctx:VxV)
> drivers/staging/rtl8188eu/core/rtw_security.c:637: CHECK: spaces
> preferred around that '-' (ctx:VxV)
> drivers/staging/rtl8188eu/core/rtw_security.c:637: CHECK: spaces
> preferred around that '-' (ctx:VxV)
> drivers/staging/rtl8188eu/core/rtw_security.c:637: CHECK: spaces
> preferred around that '-' (ctx:VxV)
> drivers/staging/rtl8188eu/core/rtw_security.c:641: CHECK: spaces
> preferred around that '+' (ctx:VxV)
> drivers/staging/rtl8188eu/core/rtw_security.c:692: CHECK: spaces
> preferred around that '+' (ctx:VxV)
> drivers/staging/rtl8188eu/core/rtw_security.c:693: CHECK: spaces
> preferred around that '+' (ctx:VxV)
> drivers/staging/rtl8188eu/core/rtw_security.c:693: CHECK: spaces
> preferred around that '+' (ctx:VxV)
> drivers/staging/rtl8188eu/core/rtw_security.c:694: CHECK: spaces
> preferred around that '-' (ctx:VxV)
> drivers/staging/rtl8188eu/core/rtw_security.c:694: CHECK: spaces
> preferred around that '-' (ctx:VxV)
> drivers/staging/rtl8188eu/core/rtw_security.c:699: CHECK: spaces
> preferred around that '>>' (ctx:VxV)
> drivers/staging/rtl8188eu/core/rtw_security.c:709: CHECK: spaces
> preferred around that '-' (ctx:VxV)
> drivers/staging/rtl8188eu/core/rtw_security.c:711: CHECK: spaces
> preferred around that '-' (ctx:VxV)
> drivers/staging/rtl8188eu/core/rtw_security.c:712: CHECK: spaces
> preferred around that '-' (ctx:VxV)
> drivers/staging/rtl8188eu/core/rtw_security.c:713: CHECK: spaces
> preferred around that '-' (ctx:VxV)
> drivers/staging/rtl8188eu/core/rtw_security.c:714: CHECK: spaces
> preferred around that '-' (ctx:VxV)
> drivers/staging/rtl8188eu/core/rtw_security.c:717: CHECK: spaces
> preferred around that '-' (ctx:VxV)
> drivers/staging/rtl8188eu/core/rtw_security.c:903: CHECK: spaces
> preferred around that '-' (ctx:VxV)
> drivers/staging/rtl8188eu/core/rtw_security.c:1028: CHECK: spaces
> preferred around that '+' (ctx:VxV)
> drivers/staging/rtl8188eu/core/rtw_security.c:1028: CHECK: spaces
> preferred around that '+' (ctx:VxV)
> drivers/staging/rtl8188eu/core/rtw_security.c:1038: CHECK: spaces
> preferred around that '+' (ctx:VxV)
> drivers/staging/rtl8188eu/core/rtw_security.c:1038: CHECK: spaces
> preferred around that '+' (ctx:VxV)
> drivers/staging/rtl8188eu/core/rtw_security.c:1131: CHECK: spaces
> preferred around that '+' (ctx:VxV)
> drivers/staging/rtl8188eu/core/rtw_security.c:1132: CHECK: spaces
> preferred around that '+' (ctx:VxV)
> drivers/staging/rtl8188eu/core/rtw_security.c:1133: CHECK: spaces
> preferred around that '+' (ctx:VxV)
> drivers/staging/rtl8188eu/core/rtw_security.c:1134: CHECK: spaces
> preferred around that '+' (ctx:VxV)
> drivers/staging/rtl8188eu/core/rtw_security.c:1135: CHECK: spaces
> preferred around that '+' (ctx:VxV)
> drivers/staging/rtl8188eu/core/rtw_security.c:1177: CHECK: spaces
> preferred around that '+' (ctx:VxV)
> drivers/staging/rtl8188eu/core/rtw_security.c:1181: CHECK: spaces
> preferred around that '+' (ctx:VxV)
> drivers/staging/rtl8188eu/core/rtw_security.c:1190: CHECK: spaces
> preferred around that '+' (ctx:VxV)
> drivers/staging/rtl8188eu/core/rtw_security.c:1195: CHECK: spaces
> preferred around that '+' (ctx:VxV)
> drivers/staging/rtl8188eu/core/rtw_security.c:1207: CHECK: spaces
> preferred around that '+' (ctx:VxV)
> drivers/staging/rtl8188eu/core/rtw_security.c:1207: CHECK: spaces
> preferred around that '+' (ctx:VxV)
> drivers/staging/rtl8188eu/core/rtw_security.c:1207: CHECK: spaces
> preferred around that '+' (ctx:VxV)
> drivers/staging/rtl8188eu/core/rtw_security.c:1257: CHECK: spaces
> preferred around that '+' (ctx:VxV)
> drivers/staging/rtl8188eu/core/rtw_security.c:1258: CHECK: spaces
> preferred around that '-' (ctx:VxV)
> drivers/staging/rtl8188eu/core/rtw_security.c:1258: CHECK: spaces
> preferred around that '-' (ctx:VxV)
> drivers/staging/rtl8188eu/core/rtw_security.c:1258: CHECK: spaces
> preferred around that '-' (ctx:VxV)
> drivers/staging/rtl8188eu/core/rtw_security.c:1262: CHECK: spaces
> preferred around that '-' (ctx:VxV)
> drivers/staging/rtl8188eu/core/rtw_security.c:1262: CHECK: spaces
> preferred around that '-' (ctx:VxV)
> drivers/staging/rtl8188eu/core/rtw_security.c:1262: CHECK: spaces
> preferred around that '-' (ctx:VxV)
> drivers/staging/rtl8188eu/core/rtw_sta_mgt.c:115: CHECK: spaces
> preferred around that '/' (ctx:VxV)
> drivers/staging/rtl8188eu/hal/hal_com.c:21: CHECK: spaces preferred
> around that '+' (ctx:VxV)
> drivers/staging/rtl8188eu/hal/hal_com.c:22: CHECK: spaces preferred
> around that '+' (ctx:VxV)
> drivers/staging/rtl8188eu/hal/hal_com.c:24: CHECK: spaces preferred
> around that '+' (ctx:VxV)
> drivers/staging/rtl8188eu/hal/hal_com.c:27: CHECK: spaces preferred
> around that '+' (ctx:VxV)
> drivers/staging/rtl8188eu/hal/hal_com.c:29: CHECK: spaces preferred
> around that '+' (ctx:VxV)
> drivers/staging/rtl8188eu/hal/hal_com.c:31: CHECK: spaces preferred
> around that '+' (ctx:VxV)
> drivers/staging/rtl8188eu/hal/hal_com.c:33: CHECK: spaces preferred
> around that '+' (ctx:VxV)
> drivers/staging/rtl8188eu/hal/hal_com.c:35: CHECK: spaces preferred
> around that '+' (ctx:VxV)
> drivers/staging/rtl8188eu/hal/hal_com.c:37: CHECK: spaces preferred
> around that '+' (ctx:VxV)
> drivers/staging/rtl8188eu/hal/hal_com.c:39: CHECK: spaces preferred
> around that '+' (ctx:VxV)
> drivers/staging/rtl8188eu/hal/hal_com.c:40: CHECK: spaces preferred
> around that '+' (ctx:VxV)
> drivers/staging/rtl8188eu/hal/odm.c:345: CHECK: spaces preferred
> around that '&' (ctx:VxV)
> drivers/staging/rtl8188eu/hal/odm.c:345: CHECK: spaces preferred
> around that '&' (ctx:VxV)
> drivers/staging/rtl8188eu/hal/odm.c:422: CHECK: spaces preferred
> around that '+' (ctx:VxV)
> drivers/staging/rtl8188eu/hal/odm.c:435: CHECK: spaces preferred
> around that '-' (ctx:VxV)
> drivers/staging/rtl8188eu/hal/odm.c:521: CHECK: spaces preferred
> around that '&' (ctx:VxV)
> drivers/staging/rtl8188eu/hal/odm.c:522: CHECK: spaces preferred
> around that '>>' (ctx:VxV)
> drivers/staging/rtl8188eu/hal/odm.c:524: CHECK: spaces preferred
> around that '&' (ctx:VxV)
> drivers/staging/rtl8188eu/hal/odm.c:525: CHECK: spaces preferred
> around that '>>' (ctx:VxV)
> drivers/staging/rtl8188eu/hal/odm.c:527: CHECK: spaces preferred
> around that '&' (ctx:VxV)
> drivers/staging/rtl8188eu/hal/odm.c:528: CHECK: spaces preferred
> around that '>>' (ctx:VxV)
> drivers/staging/rtl8188eu/hal/odm.c:530: CHECK: spaces preferred
> around that '&' (ctx:VxV)
> drivers/staging/rtl8188eu/hal/odm.c:537: CHECK: spaces preferred
> around that '&' (ctx:VxV)
> drivers/staging/rtl8188eu/hal/odm.c:538: CHECK: spaces preferred
> around that '>>' (ctx:VxV)
> drivers/staging/rtl8188eu/hal/odm.c:547: CHECK: spaces preferred
> around that '<<' (ctx:VxV)
> drivers/staging/rtl8188eu/hal/odm.c:550: CHECK: spaces preferred
> around that '&' (ctx:VxV)
> drivers/staging/rtl8188eu/hal/odm.c:550: CHECK: spaces preferred
> around that '<<' (ctx:VxV)
> drivers/staging/rtl8188eu/hal/odm.c:550: CHECK: spaces preferred
> around that '&' (ctx:VxV)
> drivers/staging/rtl8188eu/hal/odm.c:550: CHECK: spaces preferred
> around that '>>' (ctx:VxV)
> drivers/staging/rtl8188eu/hal/odm.c:586: CHECK: spaces preferred
> around that '|' (ctx:VxV)
> drivers/staging/rtl8188eu/hal/odm.c:633: CHECK: spaces preferred
> around that '&' (ctx:VxV)
> drivers/staging/rtl8188eu/hal/odm.c:633: CHECK: spaces preferred
> around that '>>' (ctx:VxV)
> drivers/staging/rtl8188eu/hal/odm.c:634: CHECK: spaces preferred
> around that '>>' (ctx:VxV)
> drivers/staging/rtl8188eu/hal/odm.c:635: CHECK: spaces preferred
> around that '&' (ctx:VxV)
> drivers/staging/rtl8188eu/hal/odm.c:635: CHECK: spaces preferred
> around that '>>' (ctx:VxV)
> drivers/staging/rtl8188eu/hal/odm.c:636: CHECK: spaces preferred
> around that '&' (ctx:VxV)
> drivers/staging/rtl8188eu/hal/odm.c:636: CHECK: spaces preferred
> around that '>>' (ctx:VxV)
> drivers/staging/rtl8188eu/hal/odm.c:721: CHECK: spaces preferred
> around that '|' (ctx:VxV)
> drivers/staging/rtl8188eu/hal/odm.c:727: CHECK: spaces preferred
> around that '|' (ctx:VxV)
> drivers/staging/rtl8188eu/hal/odm.c:735: CHECK: spaces preferred
> around that '|' (ctx:VxV)
> drivers/staging/rtl8188eu/hal/odm.c:735: CHECK: spaces preferred
> around that '|' (ctx:VxV)
> drivers/staging/rtl8188eu/hal/odm.c:736: CHECK: spaces preferred
> around that '|' (ctx:VxV)
> drivers/staging/rtl8188eu/hal/odm.c:736: CHECK: spaces preferred
> around that '|' (ctx:VxV)
> drivers/staging/rtl8188eu/hal/odm.c:736: CHECK: spaces preferred
> around that '|' (ctx:VxV)
> drivers/staging/rtl8188eu/hal/odm.c:914: CHECK: spaces preferred
> around that '<<' (ctx:VxV)
> drivers/staging/rtl8188eu/hal/odm_hwconfig.c:106: CHECK: spaces
> preferred around that '-' (ctx:VxV)
> drivers/staging/rtl8188eu/hal/odm_hwconfig.c:111: CHECK: spaces
> preferred around that '-' (ctx:VxV)
> drivers/staging/rtl8188eu/hal/odm_hwconfig.c:114: CHECK: spaces
> preferred around that '-' (ctx:VxV)
> drivers/staging/rtl8188eu/hal/odm_hwconfig.c:117: CHECK: spaces
> preferred around that '-' (ctx:VxV)
> drivers/staging/rtl8188eu/hal/odm_hwconfig.c:120: CHECK: spaces
> preferred around that '-' (ctx:VxV)
> drivers/staging/rtl8188eu/hal/odm_hwconfig.c:124: CHECK: spaces
> preferred around that '-' (ctx:VxV)
> drivers/staging/rtl8188eu/hal/odm_hwconfig.c:126: CHECK: spaces
> preferred around that '-' (ctx:VxV)
> drivers/staging/rtl8188eu/hal/odm_hwconfig.c:129: CHECK: spaces
> preferred around that '-' (ctx:VxV)
> drivers/staging/rtl8188eu/hal/odm_hwconfig.c:132: CHECK: spaces
> preferred around that '-' (ctx:VxV)
> drivers/staging/rtl8188eu/hal/odm_hwconfig.c:141: CHECK: spaces
> preferred around that '-' (ctx:VxV)
> drivers/staging/rtl8188eu/hal/odm_hwconfig.c:141: CHECK: spaces
> preferred around that '<<' (ctx:VxV)
> drivers/staging/rtl8188eu/hal/odm_hwconfig.c:141: CHECK: spaces
> preferred around that '-' (ctx:VxV)
> drivers/staging/rtl8188eu/hal/odm_hwconfig.c:141: CHECK: spaces
> preferred around that '>>' (ctx:VxV)
> drivers/staging/rtl8188eu/hal/odm_hwconfig.c:165: CHECK: spaces
> preferred around that '-' (ctx:VxV)
> drivers/staging/rtl8188eu/hal/odm_hwconfig.c:203: CHECK: spaces
> preferred around that '/' (ctx:VxV)
> drivers/staging/rtl8188eu/hal/odm_hwconfig.c:204: CHECK: spaces
> preferred around that '/' (ctx:VxV)
> drivers/staging/rtl8188eu/hal/odm_hwconfig.c:283: CHECK: spaces
> preferred around that '<<' (ctx:VxV)
> drivers/staging/rtl8188eu/hal/odm_hwconfig.c:284: CHECK: spaces
> preferred around that '<<' (ctx:VxV)
> drivers/staging/rtl8188eu/hal/odm_hwconfig.c:292: CHECK: spaces
> preferred around that '<<' (ctx:VxV)
> drivers/staging/rtl8188eu/hal/odm_hwconfig.c:293: CHECK: spaces
> preferred around that '<<' (ctx:VxV)
> drivers/staging/rtl8188eu/hal/odm_hwconfig.c:331: CHECK: spaces
> preferred around that '-' (ctx:VxV)
> drivers/staging/rtl8188eu/hal/odm_hwconfig.c:336: CHECK: spaces
> preferred around that '-' (ctx:VxV)
> drivers/staging/rtl8188eu/hal/odm_hwconfig.c:341: CHECK: spaces
> preferred around that '<<' (ctx:VxV)
> drivers/staging/rtl8188eu/hal/odm_hwconfig.c:352: CHECK: spaces
> preferred around that '-' (ctx:VxV)
> drivers/staging/rtl8188eu/hal/odm_hwconfig.c:357: CHECK: spaces
> preferred around that '-' (ctx:VxV)
> drivers/staging/rtl8188eu/hal/odm_hwconfig.c:361: CHECK: spaces
> preferred around that '<<' (ctx:VxV)
> drivers/staging/rtl8188eu/hal/odm_hwconfig.c:370: CHECK: spaces
> preferred around that '>>' (ctx:VxV)
> drivers/staging/rtl8188eu/hal/odm_hwconfig.c:374: CHECK: spaces
> preferred around that '-' (ctx:VxV)
> drivers/staging/rtl8188eu/hal/odm_hwconfig.c:374: CHECK: spaces
> preferred around that '>>' (ctx:VxV)
> drivers/staging/rtl8188eu/hal/odm_hwconfig.c:378: CHECK: spaces
> preferred around that '-' (ctx:VxV)
> drivers/staging/rtl8188eu/hal/odm_hwconfig.c:379: CHECK: spaces
> preferred around that '/' (ctx:VxV)
> drivers/staging/rtl8188eu/hal/phy.c:72: CHECK: spaces preferred
> around that '<<' (ctx:VxV)
> drivers/staging/rtl8188eu/hal/phy.c:75: CHECK: spaces preferred
> around that '&' (ctx:VxV)
> drivers/staging/rtl8188eu/hal/phy.c:105: CHECK: spaces preferred
> around that '<<' (ctx:VxV)
> drivers/staging/rtl8188eu/hal/phy.c:105: CHECK: spaces preferred
> around that '&' (ctx:VxV)
> drivers/staging/rtl8188eu/hal/phy.c:146: CHECK: space preferred
> before that '+' (ctx:VxE)
> drivers/staging/rtl8188eu/hal/phy.c:149: CHECK: space preferred
> before that '+' (ctx:VxE)
> drivers/staging/rtl8188eu/hal/phy.c:154: CHECK: space preferred
> before that '+' (ctx:VxE)
> drivers/staging/rtl8188eu/hal/phy.c:155: CHECK: space preferred
> before that '+' (ctx:VxE)
> drivers/staging/rtl8188eu/hal/phy.c:158: CHECK: space preferred
> before that '+' (ctx:VxE)
> drivers/staging/rtl8188eu/hal/phy.c:159: CHECK: space preferred
> before that '+' (ctx:VxE)
> drivers/staging/rtl8188eu/hal/phy.c:208: CHECK: spaces preferred
> around that '+' (ctx:VxV)
> drivers/staging/rtl8188eu/hal/phy.c:218: CHECK: spaces preferred
> around that '&' (ctx:VxV)
> drivers/staging/rtl8188eu/hal/phy.c:219: CHECK: spaces preferred
> around that '<<' (ctx:VxV)
> drivers/staging/rtl8188eu/hal/phy.c:220: CHECK: spaces preferred
> around that '+' (ctx:VxV)
> drivers/staging/rtl8188eu/hal/phy.c:239: CHECK: spaces preferred
> around that '>>' (ctx:VxV)
> drivers/staging/rtl8188eu/hal/phy.c:340: CHECK: spaces preferred
> around that '<<' (ctx:VxV)
> drivers/staging/rtl8188eu/hal/phy.c:340: CHECK: spaces preferred
> around that '<<' (ctx:VxV)
> drivers/staging/rtl8188eu/hal/phy.c:341: CHECK: spaces preferred
> around that '<<' (ctx:VxV)
> drivers/staging/rtl8188eu/hal/phy.c:392: CHECK: spaces preferred
> around that '&' (ctx:VxV)
> drivers/staging/rtl8188eu/hal/phy.c:394: CHECK: spaces preferred
> around that '&' (ctx:VxV)
> drivers/staging/rtl8188eu/hal/phy.c:475: CHECK: spaces preferred
> around that '-' (ctx:VxV)
> drivers/staging/rtl8188eu/hal/phy.c:479: CHECK: spaces preferred
> around that '-' (ctx:VxV)
> drivers/staging/rtl8188eu/hal/phy.c:480: CHECK: spaces preferred
> around that '-' (ctx:VxV)
> drivers/staging/rtl8188eu/hal/phy.c:485: CHECK: spaces preferred
> around that '-' (ctx:VxV)
> drivers/staging/rtl8188eu/hal/phy.c:486: CHECK: spaces preferred
> around that '-' (ctx:VxV)
> drivers/staging/rtl8188eu/hal/phy.c:551: CHECK: spaces preferred
> around that '>>' (ctx:VxV)
> drivers/staging/rtl8188eu/hal/phy.c:552: CHECK: spaces preferred
> around that '>>' (ctx:VxV)
> drivers/staging/rtl8188eu/hal/phy.c:603: CHECK: spaces preferred
> around that '>>' (ctx:VxV)
> drivers/staging/rtl8188eu/hal/phy.c:604: CHECK: spaces preferred
> around that '>>' (ctx:VxV)
> drivers/staging/rtl8188eu/hal/phy.c:609: CHECK: spaces preferred
> around that '&' (ctx:VxV)
> drivers/staging/rtl8188eu/hal/phy.c:609: CHECK: spaces preferred
> around that '&' (ctx:VxV)
> drivers/staging/rtl8188eu/hal/phy.c:651: CHECK: spaces preferred
> around that '>>' (ctx:VxV)
> drivers/staging/rtl8188eu/hal/phy.c:652: CHECK: spaces preferred
> around that '>>' (ctx:VxV)
> drivers/staging/rtl8188eu/hal/phy.c:680: CHECK: spaces preferred
> around that '>>' (ctx:VxV)
> drivers/staging/rtl8188eu/hal/phy.c:681: CHECK: spaces preferred
> around that '>>' (ctx:VxV)
> drivers/staging/rtl8188eu/hal/phy.c:687: CHECK: spaces preferred
> around that '>>' (ctx:VxV)
> drivers/staging/rtl8188eu/hal/phy.c:688: CHECK: spaces preferred
> around that '>>' (ctx:VxV)
> drivers/staging/rtl8188eu/hal/phy.c:714: CHECK: spaces preferred
> around that '>>' (ctx:VxV)
> drivers/staging/rtl8188eu/hal/phy.c:722: CHECK: spaces preferred
> around that '&' (ctx:VxV)
> drivers/staging/rtl8188eu/hal/phy.c:722: CHECK: spaces preferred
> around that '>>' (ctx:VxV)
> drivers/staging/rtl8188eu/hal/phy.c:724: CHECK: spaces preferred
> around that '&' (ctx:VxV)
> drivers/staging/rtl8188eu/hal/phy.c:726: CHECK: spaces preferred
> around that '>>' (ctx:VxV)
> drivers/staging/rtl8188eu/hal/phy.c:760: CHECK: spaces preferred
> around that '>>' (ctx:VxV)
> drivers/staging/rtl8188eu/hal/phy.c:769: CHECK: spaces preferred
> around that '&' (ctx:VxV)
> drivers/staging/rtl8188eu/hal/phy.c:769: CHECK: spaces preferred
> around that '>>' (ctx:VxV)
> drivers/staging/rtl8188eu/hal/phy.c:771: CHECK: spaces preferred
> around that '&' (ctx:VxV)
> drivers/staging/rtl8188eu/hal/phy.c:773: CHECK: spaces preferred
> around that '>>' (ctx:VxV)
> drivers/staging/rtl8188eu/hal/phy.c:854: CHECK: spaces preferred
> around that '&' (ctx:VxV)
> drivers/staging/rtl8188eu/hal/phy.c:856: CHECK: spaces preferred
> around that '&' (ctx:VxV)
> drivers/staging/rtl8188eu/hal/phy.c:905: CHECK: spaces preferred
> around that '+' (ctx:VxV)
> drivers/staging/rtl8188eu/hal/phy.c:906: CHECK: spaces preferred
> around that '/' (ctx:VxV)
> drivers/staging/rtl8188eu/hal/phy.c:907: CHECK: spaces preferred
> around that '+' (ctx:VxV)
> drivers/staging/rtl8188eu/hal/phy.c:908: CHECK: spaces preferred
> around that '/' (ctx:VxV)
> drivers/staging/rtl8188eu/hal/phy.c:910: CHECK: spaces preferred
> around that '<<' (ctx:VxV)
> drivers/staging/rtl8188eu/hal/phy.c:912: CHECK: spaces preferred
> around that '<<' (ctx:VxV)
> drivers/staging/rtl8188eu/hal/phy.c:918: CHECK: spaces preferred
> around that '/' (ctx:VxV)
> drivers/staging/rtl8188eu/hal/phy.c:920: CHECK: spaces preferred
> around that '*' (ctx:VxV)
> drivers/staging/rtl8188eu/hal/phy.c:920: CHECK: spaces preferred
> around that '+' (ctx:VxV)
> drivers/staging/rtl8188eu/hal/phy.c:920: CHECK: spaces preferred
> around that '*' (ctx:VxV)
> drivers/staging/rtl8188eu/hal/phy.c:920: CHECK: spaces preferred
> around that '-' (ctx:VxV)
> drivers/staging/rtl8188eu/hal/phy.c:1041: CHECK: spaces preferred
> around that '&' (ctx:VxV)
> drivers/staging/rtl8188eu/hal/phy.c:1041: CHECK: spaces preferred
> around that '>>' (ctx:VxV)
> drivers/staging/rtl8188eu/hal/phy.c:1043: CHECK: spaces preferred
> around that '&' (ctx:VxV)
> drivers/staging/rtl8188eu/hal/phy.c:1043: CHECK: spaces preferred
> around that '>>' (ctx:VxV)
> drivers/staging/rtl8188eu/hal/phy.c:1052: CHECK: spaces preferred
> around that '&' (ctx:VxV)
> drivers/staging/rtl8188eu/hal/phy.c:1052: CHECK: spaces preferred
> around that '>>' (ctx:VxV)
> drivers/staging/rtl8188eu/hal/phy.c:1054: CHECK: spaces preferred
> around that '&' (ctx:VxV)
> drivers/staging/rtl8188eu/hal/phy.c:1054: CHECK: spaces preferred
> around that '>>' (ctx:VxV)
> drivers/staging/rtl8188eu/hal/phy.c:1076: CHECK: spaces preferred
> around that '&' (ctx:VxV)
> drivers/staging/rtl8188eu/hal/phy.c:1076: CHECK: spaces preferred
> around that '>>' (ctx:VxV)
> drivers/staging/rtl8188eu/hal/phy.c:1078: CHECK: spaces preferred
> around that '&' (ctx:VxV)
> drivers/staging/rtl8188eu/hal/phy.c:1078: CHECK: spaces preferred
> around that '>>' (ctx:VxV)
> drivers/staging/rtl8188eu/hal/phy.c:1080: CHECK: spaces preferred
> around that '&' (ctx:VxV)
> drivers/staging/rtl8188eu/hal/phy.c:1080: CHECK: spaces preferred
> around that '>>' (ctx:VxV)
> drivers/staging/rtl8188eu/hal/phy.c:1082: CHECK: spaces preferred
> around that '&' (ctx:VxV)
> drivers/staging/rtl8188eu/hal/phy.c:1082: CHECK: spaces preferred
> around that '>>' (ctx:VxV)
> drivers/staging/rtl8188eu/hal/phy.c:1086: CHECK: spaces preferred
> around that '&' (ctx:VxV)
> drivers/staging/rtl8188eu/hal/phy.c:1086: CHECK: spaces preferred
> around that '>>' (ctx:VxV)
> drivers/staging/rtl8188eu/hal/phy.c:1088: CHECK: spaces preferred
> around that '&' (ctx:VxV)
> drivers/staging/rtl8188eu/hal/phy.c:1088: CHECK: spaces preferred
> around that '>>' (ctx:VxV)
> drivers/staging/rtl8188eu/hal/phy.c:1141: CHECK: spaces preferred
> around that '&' (ctx:VxV)
> drivers/staging/rtl8188eu/hal/phy.c:1142: CHECK: spaces preferred
> around that '&' (ctx:VxV)
> drivers/staging/rtl8188eu/hal/phy.c:1146: CHECK: spaces preferred
> around that '&' (ctx:VxV)
> drivers/staging/rtl8188eu/hal/phy.c:1160: CHECK: spaces preferred
> around that '&' (ctx:VxV)
> drivers/staging/rtl8188eu/hal/phy.c:1160: CHECK: spaces preferred
> around that '|' (ctx:VxV)
> drivers/staging/rtl8188eu/hal/phy.c:1165: CHECK: spaces preferred
> around that '&' (ctx:VxV)
> drivers/staging/rtl8188eu/hal/phy.c:1165: CHECK: spaces preferred
> around that '|' (ctx:VxV)
> drivers/staging/rtl8188eu/hal/phy.c:1173: CHECK: spaces preferred
> around that '|' (ctx:VxV)
> drivers/staging/rtl8188eu/hal/phy.c:1178: CHECK: spaces preferred
> around that '&' (ctx:VxV)
> drivers/staging/rtl8188eu/hal/pwrseqcmd.c:88: CHECK: spaces preferred
> around that '*' (ctx:VxV)
> drivers/staging/rtl8188eu/hal/rf.c:52: CHECK: spaces preferred around
> that '<<' (ctx:VxV)
> drivers/staging/rtl8188eu/hal/rf.c:53: CHECK: spaces preferred around
> that '<<' (ctx:VxV)
> drivers/staging/rtl8188eu/hal/rf.c:54: CHECK: spaces preferred around
> that '<<' (ctx:VxV)
> drivers/staging/rtl8188eu/hal/rf.c:66: CHECK: spaces preferred around
> that '<<' (ctx:VxV)
> drivers/staging/rtl8188eu/hal/rf.c:67: CHECK: spaces preferred around
> that '<<' (ctx:VxV)
> drivers/staging/rtl8188eu/hal/rf.c:68: CHECK: spaces preferred around
> that '<<' (ctx:VxV)
> drivers/staging/rtl8188eu/hal/rf.c:72: CHECK: spaces preferred around
> that '<<' (ctx:VxV)
> drivers/staging/rtl8188eu/hal/rf.c:76: CHECK: spaces preferred around
> that '<<' (ctx:VxV)
> drivers/staging/rtl8188eu/hal/rf.c:103: CHECK: spaces preferred
> around that '&' (ctx:VxV)
> drivers/staging/rtl8188eu/hal/rf.c:105: CHECK: spaces preferred
> around that '>>' (ctx:VxV)
> drivers/staging/rtl8188eu/hal/rf.c:109: CHECK: spaces preferred
> around that '>>' (ctx:VxV)
> drivers/staging/rtl8188eu/hal/rf.c:111: CHECK: spaces preferred
> around that '&' (ctx:VxV)
> drivers/staging/rtl8188eu/hal/rf.c:127: CHECK: spaces preferred
> around that '<<' (ctx:VxV)
> drivers/staging/rtl8188eu/hal/rf.c:127: CHECK: spaces preferred
> around that '<<' (ctx:VxV)
> drivers/staging/rtl8188eu/hal/rf.c:128: CHECK: spaces preferred
> around that '<<' (ctx:VxV)
> drivers/staging/rtl8188eu/hal/rf.c:129: CHECK: spaces preferred
> around that '+' (ctx:VxV)
> drivers/staging/rtl8188eu/hal/rf.c:137: CHECK: spaces preferred
> around that '<<' (ctx:VxV)
> drivers/staging/rtl8188eu/hal/rf.c:137: CHECK: spaces preferred
> around that '<<' (ctx:VxV)
> drivers/staging/rtl8188eu/hal/rf.c:138: CHECK: spaces preferred
> around that '<<' (ctx:VxV)
> drivers/staging/rtl8188eu/hal/rf.c:160: CHECK: spaces preferred
> around that '+' (ctx:VxV)
> drivers/staging/rtl8188eu/hal/rf.c:170: CHECK: spaces preferred
> around that '+' (ctx:VxV)
> drivers/staging/rtl8188eu/hal/rf.c:182: CHECK: spaces preferred
> around that '-' (ctx:VxV)
> drivers/staging/rtl8188eu/hal/rf.c:184: CHECK: spaces preferred
> around that '-' (ctx:VxV)
> drivers/staging/rtl8188eu/hal/rf.c:187: CHECK: spaces preferred
> around that '-' (ctx:VxV)
> drivers/staging/rtl8188eu/hal/rf.c:189: CHECK: spaces preferred
> around that '-' (ctx:VxV)
> drivers/staging/rtl8188eu/hal/rf.c:203: CHECK: spaces preferred
> around that '<<' (ctx:VxV)
> drivers/staging/rtl8188eu/hal/rf.c:204: CHECK: spaces preferred
> around that '<<' (ctx:VxV)
> drivers/staging/rtl8188eu/hal/rf.c:205: CHECK: spaces preferred
> around that '<<' (ctx:VxV)
> drivers/staging/rtl8188eu/hal/rf.c:224: CHECK: spaces preferred
> around that '+' (ctx:VxV)
> drivers/staging/rtl8188eu/hal/rf.c:243: CHECK: spaces preferred
> around that '<<' (ctx:VxV)
> drivers/staging/rtl8188eu/hal/rf.c:243: CHECK: spaces preferred
> around that '*' (ctx:VxV)
> drivers/staging/rtl8188eu/hal/rf.c:243: CHECK: spaces preferred
> around that '>>' (ctx:VxV)
> drivers/staging/rtl8188eu/hal/rf.c:243: CHECK: spaces preferred
> around that '*' (ctx:VxV)
> drivers/staging/rtl8188eu/hal/rf.c:247: CHECK: spaces preferred
> around that '<<' (ctx:VxV)
> drivers/staging/rtl8188eu/hal/rf.c:247: CHECK: spaces preferred
> around that '<<' (ctx:VxV)
> drivers/staging/rtl8188eu/hal/rf.c:248: CHECK: spaces preferred
> around that '<<' (ctx:VxV)
> drivers/staging/rtl8188eu/hal/rf_cfg.c:146: CHECK: spaces preferred
> around that '+' (ctx:VxV)
> drivers/staging/rtl8188eu/hal/rf_cfg.c:193: CHECK: spaces preferred
> around that '+' (ctx:VxV)
> drivers/staging/rtl8188eu/hal/rtl8188e_cmd.c:116: CHECK: spaces
> preferred around that '&' (ctx:VxV)
> drivers/staging/rtl8188eu/hal/rtl8188e_cmd.c:118: CHECK: spaces
> preferred around that '>>' (ctx:VxV)
> drivers/staging/rtl8188eu/hal/rtl8188e_cmd.c:124: CHECK: spaces
> preferred around that '<<' (ctx:VxV)
> drivers/staging/rtl8188eu/hal/rtl8188e_cmd.c:124: CHECK: spaces
> preferred around that '&' (ctx:VxV)
> drivers/staging/rtl8188eu/hal/rtl8188e_cmd.c:126: CHECK: spaces
> preferred around that '&' (ctx:VxV)
> drivers/staging/rtl8188eu/hal/rtl8188e_cmd.c:126: CHECK: spaces
> preferred around that '&' (ctx:VxV)
> drivers/staging/rtl8188eu/hal/rtl8188e_cmd.c:133: CHECK: spaces
> preferred around that '>>' (ctx:VxV)
> drivers/staging/rtl8188eu/hal/rtl8188e_cmd.c:175: CHECK: spaces
> preferred around that '<<' (ctx:VxV)
> drivers/staging/rtl8188eu/hal/rtl8188e_cmd.c:175: CHECK: spaces
> preferred around that '&' (ctx:VxV)
> drivers/staging/rtl8188eu/hal/rtl8188e_cmd.c:242: CHECK: spaces
> preferred around that '&' (ctx:VxV)
> drivers/staging/rtl8188eu/hal/rtl8188e_cmd.c:244: CHECK: spaces
> preferred around that '+' (ctx:VxV)
> drivers/staging/rtl8188eu/hal/rtl8188e_cmd.c:261: CHECK: spaces
> preferred around that '&' (ctx:VxV)
> drivers/staging/rtl8188eu/hal/rtl8188e_cmd.c:476: CHECK: spaces
> preferred around that '-' (ctx:VxV)
> drivers/staging/rtl8188eu/hal/rtl8188e_cmd.c:486: CHECK: spaces
> preferred around that '-' (ctx:VxV)
> drivers/staging/rtl8188eu/hal/rtl8188e_cmd.c:496: CHECK: spaces
> preferred around that '-' (ctx:VxV)
> drivers/staging/rtl8188eu/hal/rtl8188e_cmd.c:507: CHECK: spaces
> preferred around that '-' (ctx:VxV)
> drivers/staging/rtl8188eu/hal/rtl8188e_cmd.c:549: CHECK: spaces
> preferred around that '|' (ctx:VxV)
> drivers/staging/rtl8188eu/hal/rtl8188e_cmd.c:554: CHECK: spaces
> preferred around that '+' (ctx:VxV)
> drivers/staging/rtl8188eu/hal/rtl8188e_cmd.c:559: CHECK: spaces
> preferred around that '&' (ctx:VxV)
> drivers/staging/rtl8188eu/hal/rtl8188e_cmd.c:568: CHECK: spaces
> preferred around that '+' (ctx:VxV)
> drivers/staging/rtl8188eu/hal/rtl8188e_cmd.c:568: CHECK: spaces
> preferred around that '&' (ctx:VxV)
> drivers/staging/rtl8188eu/hal/rtl8188e_cmd.c:585: CHECK: spaces
> preferred around that '%' (ctx:VxV)
> drivers/staging/rtl8188eu/hal/rtl8188e_cmd.c:603: CHECK: spaces
> preferred around that '&' (ctx:VxV)
> drivers/staging/rtl8188eu/hal/rtl8188e_cmd.c:611: CHECK: spaces
> preferred around that '+' (ctx:VxV)
> drivers/staging/rtl8188eu/hal/rtl8188e_cmd.c:624: CHECK: spaces
> preferred around that '+' (ctx:VxV)
> drivers/staging/rtl8188eu/hal/rtl8188e_hal_init.c:25: CHECK: spaces
> preferred around that '|' (ctx:VxV)
> drivers/staging/rtl8188eu/hal/rtl8188e_hal_init.c:45: CHECK: spaces
> preferred around that '&' (ctx:VxV)
> drivers/staging/rtl8188eu/hal/rtl8188e_hal_init.c:47: CHECK: spaces
> preferred around that '|' (ctx:VxV)
> drivers/staging/rtl8188eu/hal/rtl8188e_hal_init.c:57: CHECK: spaces
> preferred around that '<<' (ctx:VxV)
> drivers/staging/rtl8188eu/hal/rtl8188e_hal_init.c:67: CHECK: spaces
> preferred around that '+' (ctx:VxV)
> drivers/staging/rtl8188eu/hal/rtl8188e_hal_init.c:95: CHECK: spaces
> preferred around that '+' (ctx:VxV)
> drivers/staging/rtl8188eu/hal/rtl8188e_hal_init.c:96: CHECK: spaces
> preferred around that '+' (ctx:VxV)
> drivers/staging/rtl8188eu/hal/rtl8188e_hal_init.c:96: CHECK: spaces
> preferred around that '&' (ctx:VxV)
> drivers/staging/rtl8188eu/hal/rtl8188e_hal_init.c:97: CHECK: spaces
> preferred around that '+' (ctx:VxV)
> drivers/staging/rtl8188eu/hal/rtl8188e_hal_init.c:97: CHECK: spaces
> preferred around that '|' (ctx:VxV)
> drivers/staging/rtl8188eu/hal/rtl8188e_hal_init.c:125: CHECK: spaces
> preferred around that '>>' (ctx:VxV)
> drivers/staging/rtl8188eu/hal/rtl8188e_hal_init.c:166: CHECK: spaces
> preferred around that '+' (ctx:VxV)
> drivers/staging/rtl8188eu/hal/rtl8188e_hal_init.c:166: CHECK: spaces
> preferred around that '+' (ctx:VxV)
> drivers/staging/rtl8188eu/hal/rtl8188e_hal_init.c:169: CHECK: spaces
> preferred around that '+' (ctx:VxV)
> drivers/staging/rtl8188eu/hal/rtl8188e_hal_init.c:169: CHECK: spaces
> preferred around that '+' (ctx:VxV)
> drivers/staging/rtl8188eu/hal/rtl8188e_hal_init.c:311: CHECK: spaces
> preferred around that '-' (ctx:VxV)
> drivers/staging/rtl8188eu/hal/rtl8188e_hal_init.c:322: CHECK: spaces
> preferred around that '&' (ctx:VxV)
> drivers/staging/rtl8188eu/hal/rtl8188e_hal_init.c:322: CHECK: spaces
> preferred around that '>>' (ctx:VxV)
> drivers/staging/rtl8188eu/hal/rtl8188e_hal_init.c:330: CHECK: spaces
> preferred around that '&' (ctx:VxV)
> drivers/staging/rtl8188eu/hal/rtl8188e_hal_init.c:340: CHECK: spaces
> preferred around that '&' (ctx:VxV)
> drivers/staging/rtl8188eu/hal/rtl8188e_hal_init.c:340: CHECK: spaces
> preferred around that '>>' (ctx:VxV)
> drivers/staging/rtl8188eu/hal/rtl8188e_hal_init.c:348: CHECK: spaces
> preferred around that '&' (ctx:VxV)
> drivers/staging/rtl8188eu/hal/rtl8188e_hal_init.c:357: CHECK: spaces
> preferred around that '&' (ctx:VxV)
> drivers/staging/rtl8188eu/hal/rtl8188e_hal_init.c:357: CHECK: spaces
> preferred around that '>>' (ctx:VxV)
> drivers/staging/rtl8188eu/hal/rtl8188e_hal_init.c:365: CHECK: spaces
> preferred around that '&' (ctx:VxV)
> drivers/staging/rtl8188eu/hal/rtl8188e_hal_init.c:453: CHECK: spaces
> preferred around that '&' (ctx:VxV)
> drivers/staging/rtl8188eu/hal/rtl8188e_hal_init.c:455: CHECK: spaces
> preferred around that '&' (ctx:VxV)
> drivers/staging/rtl8188eu/hal/rtl8188e_hal_init.c:535: CHECK: spaces
> preferred around that '&' (ctx:VxV)
> drivers/staging/rtl8188eu/hal/rtl8188e_hal_init.c:535: CHECK: spaces
> preferred around that '>>' (ctx:VxV)
> drivers/staging/rtl8188eu/hal/rtl8188e_hal_init.c:537: CHECK: spaces
> preferred around that '&' (ctx:VxV)
> drivers/staging/rtl8188eu/hal/rtl8188e_hal_init.c:537: CHECK: spaces
> preferred around that '>>' (ctx:VxV)
> drivers/staging/rtl8188eu/hal/rtl8188e_rxdesc.c:185: CHECK: spaces
> preferred around that '|' (ctx:VxV)
> drivers/staging/rtl8188eu/hal/rtl8188eu_xmit.c:61: CHECK: spaces
> preferred around that '+' (ctx:VxV)
> drivers/staging/rtl8188eu/hal/rtl8188eu_xmit.c:61: CHECK: spaces
> preferred around that '<<' (ctx:VxV)
> drivers/staging/rtl8188eu/hal/rtl8188eu_xmit.c:61: CHECK: spaces
> preferred around that '&' (ctx:VxV)
> drivers/staging/rtl8188eu/hal/rtl8188eu_xmit.c:63: CHECK: spaces
> preferred around that '&' (ctx:VxV)
> drivers/staging/rtl8188eu/hal/rtl8188eu_xmit.c:66: CHECK: spaces
> preferred around that '<<' (ctx:VxV)
> drivers/staging/rtl8188eu/hal/rtl8188eu_xmit.c:66: CHECK: spaces
> preferred around that '&' (ctx:VxV)
> drivers/staging/rtl8188eu/hal/rtl8188eu_xmit.c:94: CHECK: spaces
> preferred around that '<<' (ctx:VxV)
> drivers/staging/rtl8188eu/hal/rtl8188eu_xmit.c:94: CHECK: spaces
> preferred around that '&' (ctx:VxV)
> drivers/staging/rtl8188eu/hal/rtl8188eu_xmit.c:99: CHECK: spaces
> preferred around that '<<' (ctx:VxV)
> drivers/staging/rtl8188eu/hal/rtl8188eu_xmit.c:99: CHECK: spaces
> preferred around that '&' (ctx:VxV)
> drivers/staging/rtl8188eu/hal/rtl8188eu_xmit.c:103: CHECK: spaces
> preferred around that '<<' (ctx:VxV)
> drivers/staging/rtl8188eu/hal/rtl8188eu_xmit.c:103: CHECK: spaces
> preferred around that '&' (ctx:VxV)
> drivers/staging/rtl8188eu/hal/rtl8188eu_xmit.c:130: CHECK: spaces
> preferred around that '&' (ctx:VxV)
> drivers/staging/rtl8188eu/hal/rtl8188eu_xmit.c:147: CHECK: spaces
> preferred around that '&' (ctx:VxV)
> drivers/staging/rtl8188eu/hal/rtl8188eu_xmit.c:174: CHECK: spaces
> preferred around that '+' (ctx:VxV)
> drivers/staging/rtl8188eu/hal/rtl8188eu_xmit.c:266: CHECK: spaces
> preferred around that '&' (ctx:VxV)
> drivers/staging/rtl8188eu/hal/rtl8188eu_xmit.c:270: CHECK: spaces
> preferred around that '&' (ctx:VxV)
> drivers/staging/rtl8188eu/hal/rtl8188eu_xmit.c:281: CHECK: spaces
> preferred around that '<<' (ctx:VxV)
> drivers/staging/rtl8188eu/hal/rtl8188eu_xmit.c:281: CHECK: spaces
> preferred around that '&' (ctx:VxV)
> drivers/staging/rtl8188eu/hal/rtl8188eu_xmit.c:291: CHECK: spaces
> preferred around that '&' (ctx:VxV)
> drivers/staging/rtl8188eu/hal/rtl8188eu_xmit.c:304: CHECK: spaces
> preferred around that '<<' (ctx:VxV)
> drivers/staging/rtl8188eu/hal/rtl8188eu_xmit.c:304: CHECK: spaces
> preferred around that '&' (ctx:VxV)
> drivers/staging/rtl8188eu/hal/rtl8188eu_xmit.c:469: CHECK: spaces
> preferred around that '*' (ctx:VxV)
> drivers/staging/rtl8188eu/hal/rtl8188eu_xmit.c:520: CHECK: spaces
> preferred around that '*' (ctx:VxV)
> drivers/staging/rtl8188eu/include/hal8188e_rate_adaptive.h:31: CHECK:
> spaces preferred around that '+' (ctx:VxV)
> drivers/staging/rtl8188eu/include/hal8188e_rate_adaptive.h:33: CHECK:
> spaces preferred around that '+' (ctx:VxV)
> drivers/staging/rtl8188eu/include/hal8188e_rate_adaptive.h:38: CHECK:
> spaces preferred around that '+' (ctx:VxV)
> drivers/staging/rtl8188eu/include/hal8188e_rate_adaptive.h:40: CHECK:
> spaces preferred around that '+' (ctx:VxV)
> drivers/staging/rtl8188eu/include/hal8188e_rate_adaptive.h:42: CHECK:
> spaces preferred around that '+' (ctx:VxV)
> drivers/staging/rtl8188eu/include/hal8188e_rate_adaptive.h:44: CHECK:
> spaces preferred around that '+' (ctx:VxV)
> drivers/staging/rtl8188eu/include/hal8188e_rate_adaptive.h:44: CHECK:
> spaces preferred around that '+' (ctx:VxV)
> drivers/staging/rtl8188eu/include/hal8188e_rate_adaptive.h:46: CHECK:
> spaces preferred around that '+' (ctx:VxV)
> drivers/staging/rtl8188eu/include/hal8188e_rate_adaptive.h:46: CHECK:
> spaces preferred around that '+' (ctx:VxV)
> drivers/staging/rtl8188eu/include/hal8188e_rate_adaptive.h:48: CHECK:
> spaces preferred around that '+' (ctx:VxV)
> drivers/staging/rtl8188eu/include/hal8188e_rate_adaptive.h:48: CHECK:
> spaces preferred around that '+' (ctx:VxV)
> drivers/staging/rtl8188eu/include/hal_com.h:84: CHECK: spaces
> preferred around that '|' (ctx:VxV)
> drivers/staging/rtl8188eu/include/odm.h:247: CHECK: spaces preferred
> around that '+' (ctx:VxV)
> drivers/staging/rtl8188eu/include/odm.h:247: CHECK: spaces preferred
> around that '+' (ctx:VxV)
> drivers/staging/rtl8188eu/include/odm_types.h:18: CHECK: spaces
> preferred around that '+' (ctx:VxV)
> drivers/staging/rtl8188eu/include/odm_types.h:20: CHECK: spaces
> preferred around that '+' (ctx:VxV)
> drivers/staging/rtl8188eu/include/odm_types.h:22: CHECK: spaces
> preferred around that '+' (ctx:VxV)
> drivers/staging/rtl8188eu/include/osdep_service.h:85: CHECK: No space
> is necessary after a cast
> drivers/staging/rtl8188eu/include/rtl8188e_hal.h:49: CHECK: spaces
> preferred around that '>>' (ctx:VxV)
> drivers/staging/rtl8188eu/include/rtl8188e_hal.h:59: CHECK: spaces
> preferred around that '&' (ctx:VxV)
> drivers/staging/rtl8188eu/include/rtl8188e_hal.h:60: CHECK: spaces
> preferred around that '&' (ctx:VxV)
> drivers/staging/rtl8188eu/include/rtl8188e_hal.h:61: CHECK: spaces
> preferred around that '&' (ctx:VxV)
> drivers/staging/rtl8188eu/include/rtl8188e_hal.h:62: CHECK: spaces
> preferred around that '&' (ctx:VxV)
> drivers/staging/rtl8188eu/include/rtl8188e_hal.h:109: CHECK: spaces
> preferred around that '>>' (ctx:VxV)
> drivers/staging/rtl8188eu/include/rtl8188e_hal.h:109: CHECK: spaces
> preferred around that '&' (ctx:VxV)
> drivers/staging/rtl8188eu/include/rtl8188e_xmit.h:33: CHECK: spaces
> preferred around that '+' (ctx:VxV)
> drivers/staging/rtl8188eu/include/rtl8188e_xmit.h:35: CHECK: spaces
> preferred around that '+' (ctx:VxV)
> drivers/staging/rtl8188eu/include/rtl8188e_xmit.h:37: CHECK: spaces
> preferred around that '+' (ctx:VxV)
> drivers/staging/rtl8188eu/include/rtl8188e_xmit.h:104: CHECK: spaces
> preferred around that '>>' (ctx:VxV)
> drivers/staging/rtl8188eu/include/rtl8188e_xmit.h:142: CHECK: spaces
> preferred around that '<<' (ctx:VxV)
> drivers/staging/rtl8188eu/include/rtl8188e_xmit.h:144: CHECK: spaces
> preferred around that '+' (ctx:VxV)
> drivers/staging/rtl8188eu/include/rtl8188e_xmit.h:144: CHECK: spaces
> preferred around that '<<' (ctx:VxV)
> drivers/staging/rtl8188eu/include/rtw_cmd.h:118: CHECK: spaces
> preferred around that '+' (ctx:VxV)
> drivers/staging/rtl8188eu/include/rtw_efuse.h:47: CHECK: spaces
> preferred around that '-' (ctx:VxV)
> drivers/staging/rtl8188eu/include/rtw_pwrctrl.h:87: CHECK: spaces
> preferred around that '*' (ctx:VxV)
> drivers/staging/rtl8188eu/include/rtw_recv.h:17: CHECK: spaces
> preferred around that '<<' (ctx:VxV)
> drivers/staging/rtl8188eu/include/rtw_security.h:224: CHECK: spaces
> preferred around that '>>' (ctx:VxV)
> drivers/staging/rtl8188eu/include/rtw_security.h:224: CHECK: spaces
> preferred around that '-' (ctx:VxV)
> drivers/staging/rtl8188eu/include/rtw_security.h:225: CHECK: spaces
> preferred around that '-' (ctx:VxV)
> drivers/staging/rtl8188eu/include/rtw_security.h:281: CHECK: spaces
> preferred around that '&' (ctx:VxV)
> drivers/staging/rtl8188eu/include/rtw_security.h:282: CHECK: spaces
> preferred around that '-' (ctx:VxV)
> drivers/staging/rtl8188eu/include/rtw_security.h:282: CHECK: spaces
> preferred around that '&' (ctx:VxV)
> drivers/staging/rtl8188eu/include/rtw_security.h:286: CHECK: spaces
> preferred around that '&' (ctx:VxV)
> drivers/staging/rtl8188eu/include/rtw_security.h:286: CHECK: spaces
> preferred around that '>>' (ctx:VxV)
> drivers/staging/rtl8188eu/include/rtw_xmit.h:45: CHECK: spaces
> preferred around that '<<' (ctx:VxV)
> drivers/staging/rtl8188eu/include/rtw_xmit.h:46: CHECK: spaces
> preferred around that '+' (ctx:VxV)
> drivers/staging/rtl8188eu/include/rtw_xmit.h:55: CHECK: spaces
> preferred around that '<<' (ctx:VxV)
> drivers/staging/rtl8188eu/include/rtw_xmit.h:60: CHECK: spaces
> preferred around that '+' (ctx:VxV)
> drivers/staging/rtl8188eu/include/rtw_xmit.h:68: CHECK: spaces
> preferred around that '<<' (ctx:VxV)
> drivers/staging/rtl8188eu/include/rtw_xmit.h:73: CHECK: spaces
> preferred around that '+' (ctx:VxV)
> drivers/staging/rtl8188eu/include/wifi.h:38: CHECK: spaces preferred
> around that '|' (ctx:VxV)
> drivers/staging/rtl8188eu/include/wlan_bssdef.h:152: CHECK: spaces
> preferred around that '+' (ctx:VxV)
> drivers/staging/rtl8188eu/os_dep/ioctl_linux.c:123: CHECK: spaces
> preferred around that '-' (ctx:VxV)
> drivers/staging/rtl8188eu/os_dep/ioctl_linux.c:198: CHECK: spaces
> preferred around that '&' (ctx:VxV)
> drivers/staging/rtl8188eu/os_dep/ioctl_linux.c:207: CHECK: spaces
> preferred around that '&' (ctx:VxV)
> drivers/staging/rtl8188eu/os_dep/ioctl_linux.c:209: CHECK: spaces
> preferred around that '&' (ctx:VxV)
> drivers/staging/rtl8188eu/os_dep/ioctl_linux.c:214: CHECK: spaces
> preferred around that '*' (ctx:VxV)
> drivers/staging/rtl8188eu/os_dep/ioctl_linux.c:287: CHECK: spaces
> preferred around that '+' (ctx:VxV)
> drivers/staging/rtl8188eu/os_dep/ioctl_linux.c:287: CHECK: spaces
> preferred around that '+' (ctx:VxV)
> drivers/staging/rtl8188eu/os_dep/ioctl_linux.c:456: ERROR: space
> prohibited before that close parenthesis ')'
> drivers/staging/rtl8188eu/os_dep/ioctl_linux.c:515: CHECK: spaces
> preferred around that '+' (ctx:VxV)
> drivers/staging/rtl8188eu/os_dep/ioctl_linux.c:515: CHECK: spaces
> preferred around that '+' (ctx:VxV)
> drivers/staging/rtl8188eu/os_dep/ioctl_linux.c:515: CHECK: spaces
> preferred around that '+' (ctx:VxV)
> drivers/staging/rtl8188eu/os_dep/ioctl_linux.c:515: CHECK: spaces
> preferred around that '+' (ctx:VxV)
> drivers/staging/rtl8188eu/os_dep/ioctl_linux.c:515: CHECK: spaces
> preferred around that '+' (ctx:VxV)
> drivers/staging/rtl8188eu/os_dep/ioctl_linux.c:515: CHECK: spaces
> preferred around that '+' (ctx:VxV)
> drivers/staging/rtl8188eu/os_dep/ioctl_linux.c:515: CHECK: spaces
> preferred around that '+' (ctx:VxV)
> drivers/staging/rtl8188eu/os_dep/ioctl_linux.c:589: CHECK: spaces
> preferred around that '+' (ctx:VxV)
> drivers/staging/rtl8188eu/os_dep/ioctl_linux.c:597: CHECK: spaces
> preferred around that '+' (ctx:VxV)
> drivers/staging/rtl8188eu/os_dep/ioctl_linux.c:597: CHECK: spaces
> preferred around that '+' (ctx:VxV)
> drivers/staging/rtl8188eu/os_dep/ioctl_linux.c:600: CHECK: spaces
> preferred around that '+' (ctx:VxV)
> drivers/staging/rtl8188eu/os_dep/ioctl_linux.c:600: CHECK: spaces
> preferred around that '+' (ctx:VxV)
> drivers/staging/rtl8188eu/os_dep/ioctl_linux.c:631: CHECK: spaces
> preferred around that '-' (ctx:VxV)
> drivers/staging/rtl8188eu/os_dep/ioctl_linux.c:785: CHECK: spaces
> preferred around that '+' (ctx:VxV)
> drivers/staging/rtl8188eu/os_dep/ioctl_linux.c:1096: CHECK: spaces
> preferred around that '|' (ctx:VxV)
> drivers/staging/rtl8188eu/os_dep/ioctl_linux.c:1105: CHECK: spaces
> preferred around that '*' (ctx:VxV)
> drivers/staging/rtl8188eu/os_dep/ioctl_linux.c:1131: CHECK: spaces
> preferred around that '+' (ctx:VxV)
> drivers/staging/rtl8188eu/os_dep/ioctl_linux.c:1242: CHECK: spaces
> preferred around that '-' (ctx:VxV)
> drivers/staging/rtl8188eu/os_dep/ioctl_linux.c:1398: CHECK: spaces
> preferred around that '/' (ctx:VxV)
> drivers/staging/rtl8188eu/os_dep/ioctl_linux.c:1893: CHECK: spaces
> preferred around that '&' (ctx:VxV)
> drivers/staging/rtl8188eu/os_dep/ioctl_linux.c:1938: CHECK: spaces
> preferred around that '&' (ctx:VxV)
> drivers/staging/rtl8188eu/os_dep/ioctl_linux.c:2415: CHECK: spaces
> preferred around that '-' (ctx:VxV)
> drivers/staging/rtl8188eu/os_dep/ioctl_linux.c:2415: CHECK: spaces
> preferred around that '-' (ctx:VxV)
> drivers/staging/rtl8188eu/os_dep/ioctl_linux.c:2444: CHECK: spaces
> preferred around that '|' (ctx:VxV)
> drivers/staging/rtl8188eu/os_dep/ioctl_linux.c:2459: CHECK: spaces
> preferred around that '&' (ctx:VxV)
> drivers/staging/rtl8188eu/os_dep/ioctl_linux.c:2468: CHECK: spaces
> preferred around that '&' (ctx:VxV)
> drivers/staging/rtl8188eu/os_dep/ioctl_linux.c:2628: CHECK: spaces
> preferred around that '-' (ctx:VxV)
> drivers/staging/rtl8188eu/os_dep/ioctl_linux.c:2628: CHECK: spaces
> preferred around that '-' (ctx:VxV)
> drivers/staging/rtl8188eu/os_dep/ioctl_linux.c:2662: CHECK: spaces
> preferred around that '-' (ctx:VxV)
> drivers/staging/rtl8188eu/os_dep/ioctl_linux.c:2662: CHECK: spaces
> preferred around that '-' (ctx:VxV)
> drivers/staging/rtl8188eu/os_dep/ioctl_linux.c:2691: CHECK: spaces
> preferred around that '-' (ctx:VxV)
> drivers/staging/rtl8188eu/os_dep/ioctl_linux.c:2691: CHECK: spaces
> preferred around that '-' (ctx:VxV)
> drivers/staging/rtl8188eu/os_dep/ioctl_linux.c:3027: CHECK: spaces
> preferred around that '+' (ctx:VxV)
> 
> 
Thanks


_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
