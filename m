Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BCA432ED92
	for <lists+driverdev-devel@lfdr.de>; Fri,  5 Mar 2021 16:00:33 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 553FC8454F;
	Fri,  5 Mar 2021 15:00:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id xtYrh5-xckmG; Fri,  5 Mar 2021 15:00:30 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id A37B5844DE;
	Fri,  5 Mar 2021 15:00:29 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 148E61BF2B5
 for <devel@linuxdriverproject.org>; Fri,  5 Mar 2021 15:00:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 0379D6F5A8
 for <devel@linuxdriverproject.org>; Fri,  5 Mar 2021 15:00:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id DigJQlG6bDk0 for <devel@linuxdriverproject.org>;
 Fri,  5 Mar 2021 15:00:19 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-wm1-x333.google.com (mail-wm1-x333.google.com
 [IPv6:2a00:1450:4864:20::333])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 4A22B6F4A6
 for <devel@driverdev.osuosl.org>; Fri,  5 Mar 2021 15:00:19 +0000 (UTC)
Received: by mail-wm1-x333.google.com with SMTP id l22so1717790wme.1
 for <devel@driverdev.osuosl.org>; Fri, 05 Mar 2021 07:00:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=Y2H8czy4HWKYT33LVWK4xxuIgGxYNVC0YsC4IjH3YU4=;
 b=tFNvcKaWr3p2qbdNI7ESZo/lZdwe60EhEb+qVwy5rhd2H1dXWtHXKZ5nWBywJyF82N
 rlspaSoX7C8ftpLNYjtIzyK46LgPQ98/NQYLrYsQtXqftLjgnH1tWNeR3JxKgFkT9rMa
 RPLG+wRmoBf43XiSY1MJVE7PiPrb4r5txz59dX4TRSmUwBsWPeaJn5B2bfcczvsLAp1t
 bIyOtpzv2ReTKFTBUumuraxsDKdOzxud0mQWnEAq5fvLjuF/gJP+dxrCEHK2PmmzzF6H
 uk0waWBNocs4c8AWScey4js0JRP631Az8GzxGtyxGPJzHZAtSADDz2JR3TjUZXu6D7nY
 Jq8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=Y2H8czy4HWKYT33LVWK4xxuIgGxYNVC0YsC4IjH3YU4=;
 b=VrvBPtU449yQ2Wd/NPp0+Ti7L7ImkyLXddRl/iTnyXPI75tIOhvkwFdk4j/j/q5xjV
 VBqBEwMg9anDnHq7fE7wx0srRUnrXOkv3vW9QilRcqCPWvTDXXwI+9XD7R6Ei89IvVSI
 YaWHLgqVqM0IysJJPlo2MCOpL8suBnloy1ty5GS798GJ0OUIgYjWIQxnpwiiaBCiB+u9
 LRZjbenAcYV8m95cjebt9Alg6t8bijkJC5fyqBcXXScWHPsXK8icMP6GFjsoOb6bR59M
 DqSl30dbDVl7idvSiI2hjNvXASn4gaH71j5eu9SzGUPLAW3/Ie7a3W6fzxJFuhzbGIUy
 JGjg==
X-Gm-Message-State: AOAM532H+qLGW29QucRSC3wNIzzdVTjaAcDg2PieNhwFGWDymul0GrFh
 unrP3O2gebjVg4PZKbpTHJg=
X-Google-Smtp-Source: ABdhPJxntrDeo/Jx3XF//2yFpFLbmkKQx5cmQmD6DeUjjBs7BlfgKVpNN4GQdpGoHA+h0NuLyHboLw==
X-Received: by 2002:a05:600c:1405:: with SMTP id
 g5mr9157287wmi.140.1614956417493; 
 Fri, 05 Mar 2021 07:00:17 -0800 (PST)
Received: from ubuntudesktop (205.158.32.217.dyn.plus.net. [217.32.158.205])
 by smtp.gmail.com with ESMTPSA id j20sm4489167wmp.30.2021.03.05.07.00.16
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 05 Mar 2021 07:00:16 -0800 (PST)
Date: Fri, 5 Mar 2021 15:00:14 +0000
From: Lee <leegib@gmail.com>
To: Dan Carpenter <dan.carpenter@oracle.com>
Subject: Re: [PATCH] staging: rtl8192e: Fix possible buffer overflow in
 _rtl92e_wx_set_scan
Message-ID: <20210305150014.GA627584@ubuntudesktop>
References: <20210226114829.316980-1-leegib@gmail.com>
 <20210226134333.GA2087@kadam> <20210226140526.GG2222@kadam>
 <20210301132535.GR2087@kadam> <20210305082228.GG2222@kadam>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210305082228.GG2222@kadam>
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
Cc: devel@driverdev.osuosl.org, gregkh@linuxfoundation.org,
 linux-wireless@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>


Hi Dan,

Do you think any of these could be potential issues:

driver/staging/

rtl8192e/rtllib_rx.c:2442
wlan-ng/cfg80211.c:316
rtl8723bs/os_dep/ioctl_cfg80211.c:1591
rtl8723bs/os_dep/ioctl_cfg80211.c:2738

and if so, findable via Smatch?

Regards,
Lee


On Fri, Mar 05, 2021 at 11:22:28AM +0300, Dan Carpenter wrote:
> Actually, I looked through a bunch of these and they're mostly false
> positives outside of staging.  I guess there are a few ways the ->ssid
> can be changed.  Via netlink, from the network or from the an ioctl.
> 
> I still have a couple questions, but so far as I can see it's mostly the
> ioctl which has problems.
> 
> I really want Smatch to be able to figure the netlink stuff...  That
> should be doable.
> 
> regards,
> dan carpenter
> 
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
