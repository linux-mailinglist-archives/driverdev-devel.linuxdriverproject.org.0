Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id DFD7E321AE8
	for <lists+driverdev-devel@lfdr.de>; Mon, 22 Feb 2021 16:14:10 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 31C10839BC;
	Mon, 22 Feb 2021 15:14:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id mGtns_sGk3gw; Mon, 22 Feb 2021 15:14:08 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id C80E3833CD;
	Mon, 22 Feb 2021 15:14:06 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id EB4B81BF3FE
 for <devel@linuxdriverproject.org>; Mon, 22 Feb 2021 15:13:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id E7B0F871DD
 for <devel@linuxdriverproject.org>; Mon, 22 Feb 2021 15:13:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id TztOVMBbS6Hr for <devel@linuxdriverproject.org>;
 Mon, 22 Feb 2021 15:13:56 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pj1-f52.google.com (mail-pj1-f52.google.com
 [209.85.216.52])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 4B932871D9
 for <devel@driverdev.osuosl.org>; Mon, 22 Feb 2021 15:13:56 +0000 (UTC)
Received: by mail-pj1-f52.google.com with SMTP id c19so8767757pjq.3
 for <devel@driverdev.osuosl.org>; Mon, 22 Feb 2021 07:13:56 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=sg3iIrkkDsgypdsbDNoge70vzTAFrCPegzLsFOlHOJg=;
 b=kXSjSQVZnkWbpRoTmm29lD51U7DB6a236rmbY9MN3zyGMjv/qrNd5WuP7T5S/2i1mI
 lQ4Lm8xuhP6bwI4LGxwctb0BTetFXmdskSd0w1QqF2Km73V6+3sERB2ZWdUT8ejxY+m1
 R23LWqWiH4O2zMIkZ0Uch1vJRvvjvtEHXP4niV73gO00MIhiJwNxV1oEKqdiFYB0iZW8
 79cxjGI/uTHKGXe4gHsxsXCLEzJSfl9+I3ygjxRJzPuaBbkmSOa5KM/ixmztPr+R8hCW
 KDvk2QXpRSDpwJwupouh2Szu9BTjwxnqGByvQYdxzZbHAGANgZRMM8j6HR8aFgZ8lJqG
 +VMA==
X-Gm-Message-State: AOAM530nXVBYJRD2mGPoID7T1C4bIpm9ud+pQ2Kl3JTJ0NF3fjaKojqA
 PhOAiNYb+ROMV9GziVdruxSRLXaA4lMwMq7c
X-Google-Smtp-Source: ABdhPJzy5v7UB0lwfUGmYizhvLtXQNvKKDOnN6VOd5KsBhRU/l6ZCxbtcGYdlwbeEfpEfcKmL45Xuw==
X-Received: by 2002:a17:902:744a:b029:e3:795d:b809 with SMTP id
 e10-20020a170902744ab02900e3795db809mr22856518plt.7.1614006835839; 
 Mon, 22 Feb 2021 07:13:55 -0800 (PST)
Received: from karthik-strix-linux.karthek.com ([192.140.155.255])
 by smtp.gmail.com with ESMTPSA id v4sm5460329pjo.32.2021.02.22.07.13.53
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 22 Feb 2021 07:13:55 -0800 (PST)
Date: Mon, 22 Feb 2021 20:43:51 +0530
From: karthek <mail@karthek.com>
To: Dan Carpenter <dan.carpenter@oracle.com>
Subject: Re: [PATCH] staging: wlan-ng/p80211 : check userspacebuf size for
 sanity
Message-ID: <YDPKL47kPVyRPRcC@karthik-strix-linux.karthek.com>
References: <YDOnoLJzHYXMZBA/@karthik-strix-linux.karthek.com>
 <20210222132132.GU2222@kadam>
 <YDO0vtJyyGSSi44n@karthik-strix-linux.karthek.com>
 <20210222135937.GV2222@kadam>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210222135937.GV2222@kadam>
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

On Mon, Feb 22, 2021 at 04:59:37PM +0300, Dan Carpenter wrote:
> I have added the Driver Devel list to the CC list.  Adding linux-kernel
> is sort of useless.  The correct people who are interested in this patch
> are all on the Driver Devel list.
> 
> On Mon, Feb 22, 2021 at 07:12:22PM +0530, karthek wrote:
> > On Mon, Feb 22, 2021 at 04:21:33PM +0300, Dan Carpenter wrote:
> > > On Mon, Feb 22, 2021 at 06:16:24PM +0530, karthek wrote:
> > > > currently p80211knetdev_do_ioctl() is testing user passed
> > > > struct ifreq for sanity by checking for presence of a magic number,
> > > > in addition to that also check size field, preventing buffer overflow
> > > > before passing data to p80211req_dorequest() which casts it
> > > > to *struct p80211msg
> > > > 
> > > > Signed-off-by: karthek <mail@karthek.com>
> > > > ---
> > > > is this correct?
> > > > is it necessary to check for size in addition to magicnum?
> > > > did i even understand the problem correctly?
> > > > 
> > > >  drivers/staging/wlan-ng/p80211netdev.c | 5 ++++-
> > > >  1 file changed, 4 insertions(+), 1 deletion(-)
> > > > 
> > > > diff --git a/drivers/staging/wlan-ng/p80211netdev.c b/drivers/staging/wlan-ng/p80211netdev.c
> > > > index 70570e8a5..c7b78d870 100644
> > > > --- a/drivers/staging/wlan-ng/p80211netdev.c
> > > > +++ b/drivers/staging/wlan-ng/p80211netdev.c
> > > > @@ -568,7 +568,10 @@ static int p80211knetdev_do_ioctl(struct net_device *dev,
> > > >  		result = -EINVAL;
> > > >  		goto bail;
> > > >  	}
> > > > -
> > > > +	if (req->len < sizeof(struct p80211msg)) {
> > > > +		result = -EINVAL;
> > > > +		goto bail;
> > > > +	}
> > > 
> > > Please don't send private emails.  Always CC the list.
> > sorry
> > > 
> > > That's only a partial solution.  You need to check in p80211req_handlemsg()
> > > as well and probably other places.
> > currently p80211req_handlemsg() is only referenced in p80211req_dorequest()
> > can we check that there instead?
> 
> If I have to do all the work in finding the buffer overflows, then I
> should write my own patch.  :/
> 
> Anyway the p80211knetdev_do_ioctl() function calls p80211req_dorequest()
> which calls p80211req_handlemsg(wlandev, msg); and
> wlandev->mlmerequest(wlandev, msg);.
> 
> We have already discussed the p80211req_handlemsg() function.  The
> wlandev->mlmerequest() function is always just prism2sta_mlmerequest().
> The prism2sta_mlmerequest() calls a bunch of functions and each of those
> functions need to have a different limit check added to prevent memory
> corruption.
> 
> Homework #1: Should we get rid of the wlandev->mlmerequest() pointer
> and just call prism2sta_mlmerequest() directly?
yeah
> 
> Homework #2: Another solution is to just delete all these custom IOCTLs.
> I don't know what they do so I don't know if they are necessary or not.
i wish i could
> 
> regards,
> dan carpenter
> 
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
