Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id A3343321D57
	for <lists+driverdev-devel@lfdr.de>; Mon, 22 Feb 2021 17:46:58 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 1561186216;
	Mon, 22 Feb 2021 16:46:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id HqSLxB734vR0; Mon, 22 Feb 2021 16:46:55 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 14FB085B81;
	Mon, 22 Feb 2021 16:46:54 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 2FF111BF342
 for <devel@linuxdriverproject.org>; Mon, 22 Feb 2021 16:46:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 2CB3385CFE
 for <devel@linuxdriverproject.org>; Mon, 22 Feb 2021 16:46:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Y2W2q2tEFYTp for <devel@linuxdriverproject.org>;
 Mon, 22 Feb 2021 16:46:50 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f175.google.com (mail-pf1-f175.google.com
 [209.85.210.175])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 27A4985B81
 for <devel@driverdev.osuosl.org>; Mon, 22 Feb 2021 16:46:50 +0000 (UTC)
Received: by mail-pf1-f175.google.com with SMTP id c11so6915764pfp.10
 for <devel@driverdev.osuosl.org>; Mon, 22 Feb 2021 08:46:50 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=0AVccQ8Xy3jeqFqQ4rJqiBX9Mc9QWkAQEVWTtLe4WME=;
 b=Tp9nZfUhExPjE6uttQq+7eQieffFTiIBL8hAw/VApFvbjPo20lE8FwwHlOthnhWM/W
 g9qe60bpcLJmLBVCUSN0DKms/57enf8x/En5vEAGOewgQNXzFOIP4U3zuwPNyPSEr5w/
 9Cm9UqQzsDsMIcLnPAuZcILRBZO15I9q8Csa2nQIWgnlIMXabHThIK93zdzaadS8qnPd
 IluwEwEaPfJGR2POMnCKWcI2UPuJZuGVfbUJX960jX2rOUy+Y7tXJuSHDE8mQn+BpvpX
 MkWVP4c7lJh9yEl+Oft93m38HVP8Yqa8w9mOtMVjxBROgIm3I8daaK3dKz5v99014R8E
 14Iw==
X-Gm-Message-State: AOAM532LQ3ClxmpNwHQU3aJntMm2zCRQdDSBqw93MUH83sGQzSs0JD9X
 UsIb14Pquz0rDnF+ZkwWLD4=
X-Google-Smtp-Source: ABdhPJwXMVPiYAE8E//i/iaaKfsyEfenPXBWx1Jl6C2fPLyjVywu2ttey2IORJN+jPoAyHEj3DVDSA==
X-Received: by 2002:a05:6a00:228d:b029:1ed:5a5f:527c with SMTP id
 f13-20020a056a00228db02901ed5a5f527cmr13846903pfe.35.1614012409720; 
 Mon, 22 Feb 2021 08:46:49 -0800 (PST)
Received: from karthik-strix-linux.karthek.com ([192.140.155.255])
 by smtp.gmail.com with ESMTPSA id z4sm18894990pgv.73.2021.02.22.08.46.47
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 22 Feb 2021 08:46:49 -0800 (PST)
Date: Mon, 22 Feb 2021 22:16:45 +0530
From: karthek <mail@karthek.com>
To: Dan Carpenter <dan.carpenter@oracle.com>
Subject: Re: [PATCH] staging: wlan-ng/p80211 : check userspacebuf size for
 sanity
Message-ID: <YDPf9Z+eIjcBu240@karthik-strix-linux.karthek.com>
References: <YDOnoLJzHYXMZBA/@karthik-strix-linux.karthek.com>
 <20210222132132.GU2222@kadam>
 <YDO0vtJyyGSSi44n@karthik-strix-linux.karthek.com>
 <20210222135937.GV2222@kadam>
 <YDPKL47kPVyRPRcC@karthik-strix-linux.karthek.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <YDPKL47kPVyRPRcC@karthik-strix-linux.karthek.com>
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

On Mon, Feb 22, 2021 at 08:43:51PM +0530, karthek wrote:
> On Mon, Feb 22, 2021 at 04:59:37PM +0300, Dan Carpenter wrote:
> > I have added the Driver Devel list to the CC list.  Adding linux-kernel
> > is sort of useless.  The correct people who are interested in this patch
> > are all on the Driver Devel list.
> > 
> > On Mon, Feb 22, 2021 at 07:12:22PM +0530, karthek wrote:
> > > On Mon, Feb 22, 2021 at 04:21:33PM +0300, Dan Carpenter wrote:
> > > > On Mon, Feb 22, 2021 at 06:16:24PM +0530, karthek wrote:
> > > > > currently p80211knetdev_do_ioctl() is testing user passed
> > > > > struct ifreq for sanity by checking for presence of a magic number,
> > > > > in addition to that also check size field, preventing buffer overflow
> > > > > before passing data to p80211req_dorequest() which casts it
> > > > > to *struct p80211msg
> > > > > 
> > > > > Signed-off-by: karthek <mail@karthek.com>
> > > > > ---
> > > > > is this correct?
> > > > > is it necessary to check for size in addition to magicnum?
> > > > > did i even understand the problem correctly?
> > > > > 
> > > > >  drivers/staging/wlan-ng/p80211netdev.c | 5 ++++-
> > > > >  1 file changed, 4 insertions(+), 1 deletion(-)
> > > > > 
> > > > > diff --git a/drivers/staging/wlan-ng/p80211netdev.c b/drivers/staging/wlan-ng/p80211netdev.c
> > > > > index 70570e8a5..c7b78d870 100644
> > > > > --- a/drivers/staging/wlan-ng/p80211netdev.c
> > > > > +++ b/drivers/staging/wlan-ng/p80211netdev.c
> > > > > @@ -568,7 +568,10 @@ static int p80211knetdev_do_ioctl(struct net_device *dev,
> > > > >  		result = -EINVAL;
> > > > >  		goto bail;
> > > > >  	}
> > > > > -
> > > > > +	if (req->len < sizeof(struct p80211msg)) {
> > > > > +		result = -EINVAL;
> > > > > +		goto bail;
> > > > > +	}
> > > > 
> > > > Please don't send private emails.  Always CC the list.
> > > sorry
> > > > 
> > > > That's only a partial solution.  You need to check in p80211req_handlemsg()
> > > > as well and probably other places.
> > > currently p80211req_handlemsg() is only referenced in p80211req_dorequest()
> > > can we check that there instead?
> > 
> > If I have to do all the work in finding the buffer overflows, then I
> > should write my own patch.  :/
> > 
> > Anyway the p80211knetdev_do_ioctl() function calls p80211req_dorequest()
> > which calls p80211req_handlemsg(wlandev, msg); and
> > wlandev->mlmerequest(wlandev, msg);.
> > 
> > We have already discussed the p80211req_handlemsg() function.  The
> > wlandev->mlmerequest() function is always just prism2sta_mlmerequest().
> > The prism2sta_mlmerequest() calls a bunch of functions and each of those
> > functions need to have a different limit check added to prevent memory
> > corruption.
other than this ioctl call codepath other codepaths leading to those
functions doesn't seem to get that msg(struct p80211req) from userspace
so may be they dont need that checking
anyway why do you think that is necessary?
> > 
> > Homework #1: Should we get rid of the wlandev->mlmerequest() pointer
> > and just call prism2sta_mlmerequest() directly?
> yeah
> > 
> > Homework #2: Another solution is to just delete all these custom IOCTLs.
> > I don't know what they do so I don't know if they are necessary or not.
> i wish i could
> > 
> > regards,
> > dan carpenter
> > 
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
