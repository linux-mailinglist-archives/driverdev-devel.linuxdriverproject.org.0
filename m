Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id C5D9C323F4B
	for <lists+driverdev-devel@lfdr.de>; Wed, 24 Feb 2021 15:57:02 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id BAE9E83D1D;
	Wed, 24 Feb 2021 14:57:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id i54ScD745lEb; Wed, 24 Feb 2021 14:56:59 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id E054083C96;
	Wed, 24 Feb 2021 14:56:58 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id BE41C1BF5DE
 for <devel@linuxdriverproject.org>; Wed, 24 Feb 2021 14:56:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id AAD8643105
 for <devel@linuxdriverproject.org>; Wed, 24 Feb 2021 14:56:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id adYG57xeiDQI for <devel@linuxdriverproject.org>;
 Wed, 24 Feb 2021 14:56:47 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail-pg1-f182.google.com (mail-pg1-f182.google.com
 [209.85.215.182])
 by smtp2.osuosl.org (Postfix) with ESMTPS id E69A0430F1
 for <devel@driverdev.osuosl.org>; Wed, 24 Feb 2021 14:56:47 +0000 (UTC)
Received: by mail-pg1-f182.google.com with SMTP id o10so1610631pgg.4
 for <devel@driverdev.osuosl.org>; Wed, 24 Feb 2021 06:56:47 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=bKPiyJ0oXcZow6tjLvovRuhWn+Nhriu5rOTfNOpoLVM=;
 b=TLxI1yhEhYN0CaqNYHj2VzouTEpA/L8+e2ErEm+8PiCfKSEJbIWuBSActm+QxF6GMD
 igMYhtFo+91FYBf/zbYFhIAWpHv118mr3/MYZjWTIPQUtI2E2HYqArUdsXyuL8li+D0S
 kCCQuEYrFerqtpDPwjLupWYfnnjrf4iI/JVZw0n/bUO84Zxg3NBV+zLCl94qu7N4iA9i
 G09Oh38LYZm8WsBppCAk1ZPGpawsQKidSLl+1fiOJRa7nplE7TeTZExUaX0cSiru/xQy
 r0PmELo7A5tZ4nPiu57aVVdTvQ5w/Y2TVpSzsq8qObNZc4oFWNzI5M/h0T5aZfjxUIE8
 eY/A==
X-Gm-Message-State: AOAM533r6lzr3P/mF7BQeMyoExclAJg1hTXa1UvnvsmhgRoANIjIez/h
 1H2GPbCq6ZiVd0WpqBn2y74=
X-Google-Smtp-Source: ABdhPJw1d7yDbFCH9iKhCfc2auIZEa5gE3bKfYMd18c+j7qXgPcCJlQAfNeov0CVUDjfEhPRAr/HHw==
X-Received: by 2002:a63:e20b:: with SMTP id q11mr29593852pgh.396.1614178607413; 
 Wed, 24 Feb 2021 06:56:47 -0800 (PST)
Received: from karthik-strix-linux.karthek.com ([192.140.155.226])
 by smtp.gmail.com with ESMTPSA id e130sm3244742pfh.189.2021.02.24.06.56.43
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 24 Feb 2021 06:56:46 -0800 (PST)
Date: Wed, 24 Feb 2021 20:26:41 +0530
From: karthek <mail@karthek.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Lee Jones <lee.jones@linaro.org>, Jakub Kicinski <kuba@kernel.org>,
 Arnd Bergmann <arnd@arndb.de>, Johannes Berg <johannes@sipsolutions.net>
Subject: Re: [PATCH 0/2] fix sparse warnings
Message-ID: <YDZpKcXLkiueequk@karthik-strix-linux.karthek.com>
References: <cover.1613921277.git.mail@karthek.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <cover.1613921277.git.mail@karthek.com>
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
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Sun, Feb 21, 2021 at 09:00:48PM +0530, karthik alapati wrote:
> the following patches fixes two  byte-order issues
> and fixes these sparse warnings
> 
> 
> drivers/staging//wimax/i2400m/op-rfkill.c:89:25: warning: incorrect type in assignment (different base types)
> drivers/staging//wimax/i2400m/op-rfkill.c:89:25:    expected restricted __le16 [usertype] length
> drivers/staging//wimax/i2400m/op-rfkill.c:89:25:    got unsigned long
> .
> drivers/staging//wimax/i2400m/fw.c:514:27: warning: restricted __le32 degrades to integer
> 
> 
> karthik alapati (2):
>   staging: wimax/i2400m: fix byte-order issue
>   staging: wimax/i2400m: convert __le32 type to host byte-order
> 
>  drivers/staging/wimax/i2400m/fw.c        | 2 +-
>  drivers/staging/wimax/i2400m/op-rfkill.c | 2 +-
>  2 files changed, 2 insertions(+), 2 deletions(-)
> 
> -- 
> 2.30.1
> 
ping?
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
