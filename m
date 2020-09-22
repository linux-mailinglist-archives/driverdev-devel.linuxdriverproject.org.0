Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 42812274383
	for <lists+driverdev-devel@lfdr.de>; Tue, 22 Sep 2020 15:51:39 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 7821F872C7;
	Tue, 22 Sep 2020 13:51:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id RTq-7mHWar6D; Tue, 22 Sep 2020 13:51:37 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id DC43F87092;
	Tue, 22 Sep 2020 13:51:36 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 755B91BF2F3
 for <devel@linuxdriverproject.org>; Tue, 22 Sep 2020 13:51:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 71DA887092
 for <devel@linuxdriverproject.org>; Tue, 22 Sep 2020 13:51:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id TFIZzu9tZexe for <devel@linuxdriverproject.org>;
 Tue, 22 Sep 2020 13:51:34 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f65.google.com (mail-wm1-f65.google.com
 [209.85.128.65])
 by hemlock.osuosl.org (Postfix) with ESMTPS id C6FD7870A7
 for <devel@driverdev.osuosl.org>; Tue, 22 Sep 2020 13:51:33 +0000 (UTC)
Received: by mail-wm1-f65.google.com with SMTP id v12so1613028wmh.3
 for <devel@driverdev.osuosl.org>; Tue, 22 Sep 2020 06:51:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:date:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=Ysqz6GyyNFAHuc6XNq36xYUlncxXozuNxpnDdtcRHI4=;
 b=WXFdwlqUUNEI/1EwlxVKHGNQJgea/QOvczBrlAL3LVIZxU0EHzFZ3dFNp7as2Hjlyq
 Uw2VC09xn3mh92riN9pPqj9Rfq4BFz+FchDRoVilKepcdpTfzMsY+LJ5j4tdhkiQg+Tr
 uer1db60wLEbMcDlNJlEaad80Oi1Hql5rXHEadRAGPGGxgr5kQMYC4FsBUJiKXZeiK95
 iTM45RjqpguYkU+ZNatnajENvxS8xoUy75WPJL8DHkE98KkZ9gEtsu6UbpPbmhEiWrAZ
 Pp3KkhGa/4jS7fgVIP1wPUL9aBU6dK29/mpvPqLaouKaX69JzNYMibXSqzYqLs/raAuW
 KsLg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:date:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=Ysqz6GyyNFAHuc6XNq36xYUlncxXozuNxpnDdtcRHI4=;
 b=j7ynzQel3PYfH4kzeJK6hJ4DXBaHoiUYTUwjkCPZd1xMlBfuNtfiuc3BaZloiTqzfw
 J1oeHw6t4Ezh5iOwzrNHRldm93xONKpvHHqSZRJc3Xf4n6z5tkQYXHBPyj7h/31GEDxv
 NRfxTD8XdvllkmYV1f23TAP/T0usvw6xLhr6dXElKSrgNCPrTdAwKO4lacrvPfLsflGx
 KHEFPssPnIeh9I7dGdLGJ6XoKqovE4Vq2TMDUqYk6zCC7+chlc0o9LjHWSOtVxW/X8qa
 f19DyivUFjNXp+4ovWCbdyhjOJLmeuZqFpwTZ23oMoe8QbLm04EJXBygrbP9nfOiMxi0
 n0LA==
X-Gm-Message-State: AOAM5326nS2dz1RLOT2IYavSOhWPX97AhIMwFR+7b4HYTJSvgsqLSpH9
 WnJ6EZGDimdYovfo55KxXU0=
X-Google-Smtp-Source: ABdhPJyaXlYNr/My6wmvyG7+TvO3d2qoj25uGwR0xvS4xN6bjft3EN5lwy5xfsv2s+GJmPV/+Wub5Q==
X-Received: by 2002:a1c:7907:: with SMTP id l7mr1128137wme.89.1600782692118;
 Tue, 22 Sep 2020 06:51:32 -0700 (PDT)
Received: from lenovo-laptop ([176.12.107.132])
 by smtp.gmail.com with ESMTPSA id m23sm4452000wmi.19.2020.09.22.06.51.30
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 22 Sep 2020 06:51:31 -0700 (PDT)
From: Alex Dewar <alex.dewar90@gmail.com>
X-Google-Original-From: Alex Dewar <alex.dewar@gmx.co.uk>
Date: Tue, 22 Sep 2020 14:51:28 +0100
To: Dan Carpenter <dan.carpenter@oracle.com>
Subject: Re: [PATCH REBASE 0/3] atomisp: Rebased fixes
Message-ID: <20200922135128.f2yuf7cixb3hfwba@lenovo-laptop>
References: <21f18dc2-a1bc-0a37-0336-fc35170a40e9@gmail.com>
 <20200922090914.20702-1-alex.dewar90@gmail.com>
 <20200922112729.313d454d@coco.lan>
 <f14fac45-d713-a6ee-f0be-906a6d971b43@gmail.com>
 <20200922132727.GG4282@kadam>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200922132727.GG4282@kadam>
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
Cc: devel@driverdev.osuosl.org, linux-media@vger.kernel.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 Sakari Ailus <sakari.ailus@linux.intel.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Alex Dewar <alex.dewar90@gmail.com>, Alan Cox <alan@linux.intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

[snip]
> > That sounds more sensible. I've also just noticed that I introduced a bug in
> > the first patch when rebasing it :-/, so let's hold off on the whole series
> > and I'll do a proper tidy and resend after the next merge window.
> 
> Is the bug the memory leak if lm3554_platform_data_func() fails?
> 
> regards,
> dan carpenter
> 

>  
Nope. I put a "return ret" for the last check instead of "goto err_del_timer"...

The version of this code in linux-next does the correct "if (PTR_ERR(...))"
check after calling lm3554_platform_data_func(), but this patch doesn't
seem to have made its way into linux-media yet. All the more reason to
resend my patches after the merge window, I suppose.

Best,
Alex
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
