Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F41EB5BB3
	for <lists+driverdev-devel@lfdr.de>; Wed, 18 Sep 2019 08:15:03 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 5D38E2107F;
	Wed, 18 Sep 2019 06:15:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id tC3EDHCp9dea; Wed, 18 Sep 2019 06:15:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 95454203CC;
	Wed, 18 Sep 2019 06:14:58 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id B4D661BF5F6
 for <devel@linuxdriverproject.org>; Wed, 18 Sep 2019 06:14:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id AD5EC203BB
 for <devel@linuxdriverproject.org>; Wed, 18 Sep 2019 06:14:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id yNPczAAEwR0j for <devel@linuxdriverproject.org>;
 Wed, 18 Sep 2019 06:14:56 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f193.google.com (mail-pg1-f193.google.com
 [209.85.215.193])
 by silver.osuosl.org (Postfix) with ESMTPS id 42B292039C
 for <devel@driverdev.osuosl.org>; Wed, 18 Sep 2019 06:14:56 +0000 (UTC)
Received: by mail-pg1-f193.google.com with SMTP id c17so3373240pgg.4
 for <devel@driverdev.osuosl.org>; Tue, 17 Sep 2019 23:14:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=/VLD4T4j6CkFnw+yLOSt4lxWLxJlglbtXkL6PJrDavs=;
 b=DH4Z8wwFPfwMMvrzBvq7aENKUnQTudeD8psgUXMgs8wQbs/3KHt2oQ30ar5PknDbkK
 1Ejs0D3Q5wT+WPpbySeeiCUzvmrlt8k7QMHVu9wxfmw79u6nQBKmsZj9m6bmYYe/9wvi
 BAmQ5sr5esPjfMTGdzbJ+WPOkv6mqJQJfyd1o9D0o+YxgnIEJJKMSmu/T+d0iBdPck+D
 tl4x3u450xj1o0fwmTqEPgq10UFjPQD4IqY43epcbGGAW0fMHANWD7WKOk97uOAFHxyQ
 vBDxi5bZX5pbCZN3ViBmuMYQikDsFXT3gNqsM8IfZPsCWFrcF8tKcNRo5eqiwF2zvlKy
 He0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=/VLD4T4j6CkFnw+yLOSt4lxWLxJlglbtXkL6PJrDavs=;
 b=j1LMZW9AatSj3PMdoHPJcysgC0BuqpHmVpKFS9w2fcpOYg0emZr+N/og7g+SyfmxA7
 3pv89pg+UcBkbjC8UVe8Th74Lnx7Q0T5NOZ4n10X243vpo/Le7UhGveH9MiEQ02mGdJv
 ju6JukUajUNIVEeWkJjuUunackjHdl+QSJd9/2sOZ6qwPJWj7CtzqCWYeP/SiLjJzC7X
 5MkGZHYsq4gYOr9noQ1jV65fWC+GvJ6INAElCfoDAPi01AK23aasq2f8T/4UTizfV9Hr
 BzxJ20piF66Jr5argMKIClnUJRK6AfQF9ZWNlHGL4gbRf5lkG/0hIGw6PjxwIiybw99Z
 L3zw==
X-Gm-Message-State: APjAAAVrCdCXvToUcTHzxPI4Vo6VvZi35DVjWIS9CCXJyyWRSPb9EYY7
 yNZ4YaFNJdtLpsv7MHMzJEo=
X-Google-Smtp-Source: APXvYqwfsvwJhZB79moBclIo4UaUxsph4fJCrX8oQCQXsE0B5QQJdahsPtdE8Lon4onl9hUMl2lXPA==
X-Received: by 2002:a63:2a87:: with SMTP id q129mr2485393pgq.101.1568787295612; 
 Tue, 17 Sep 2019 23:14:55 -0700 (PDT)
Received: from aliasgar ([219.65.62.52])
 by smtp.gmail.com with ESMTPSA id f14sm7424905pfq.187.2019.09.17.23.14.53
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 17 Sep 2019 23:14:54 -0700 (PDT)
Date: Wed, 18 Sep 2019 11:44:50 +0530
From: ABC XYZ <aliasgar.surti500@gmail.com>
To: Dan Carpenter <dan.carpenter@oracle.com>
Subject: Re: [PATCH] drivers:staging:rtl8723bs: Removed unneeded variables
Message-ID: <20190918061450.GB8416@aliasgar>
References: <1568730691-954-1-git-send-email-aliasgar.surti500@gmail.com>
 <20190917144432.GB2959@kadam>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190917144432.GB2959@kadam>
User-Agent: Mutt/1.5.24 (2015-08-30)
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
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Tue, Sep 17, 2019 at 05:44:32PM +0300, Dan Carpenter wrote:
> On Tue, Sep 17, 2019 at 08:01:31PM +0530, Aliasgar Surti wrote:
> > From: Aliasgar Surti <aliasgar.surti500@gmail.com>
> > 
> > coccicheck reported warning for unneeded variable used.
> > 
> > This patch removes the unneeded variables.
> > 
> > Signed-off-by: Aliasgar Surti <aliasgar.surti500@gmail.com>
> > ---
> >  drivers/staging/rtl8723bs/os_dep/ioctl_linux.c | 15 +++++----------
> >  1 file changed, 5 insertions(+), 10 deletions(-)
> > 
> > diff --git a/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c b/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c
> > index d1b199e..fa3ffc3 100644
> > --- a/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c
> > +++ b/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c
> > @@ -2428,8 +2428,7 @@ static  int rtw_drvext_hdl(struct net_device *dev, struct iw_request_info *info,
> >  static int rtw_mp_ioctl_hdl(struct net_device *dev, struct iw_request_info *info,
> >  						union iwreq_data *wrqu, char *extra)
> >  {
> > -	int ret = 0;
> > -	return ret;
> > +	return 0;
> >  }
> 
> Just get rid of the whole function.  Replace the pointer in the function
> array with a NULL.
Okay, I will get rid of unneeded functions and replace them with NULL in
function array.

Thanks,
Aliasgar
> 
> regards,
> dan carpenter
> 
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
