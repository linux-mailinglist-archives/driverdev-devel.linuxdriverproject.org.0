Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id EE3E431F917
	for <lists+driverdev-devel@lfdr.de>; Fri, 19 Feb 2021 13:12:46 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id A8A5A87117;
	Fri, 19 Feb 2021 12:12:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id GN-F7ZTo4sHS; Fri, 19 Feb 2021 12:12:44 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 9740387079;
	Fri, 19 Feb 2021 12:12:43 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id DF91E1BF364
 for <devel@linuxdriverproject.org>; Fri, 19 Feb 2021 12:12:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id DBBCD87079
 for <devel@linuxdriverproject.org>; Fri, 19 Feb 2021 12:12:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id MEq971ElKPnO for <devel@linuxdriverproject.org>;
 Fri, 19 Feb 2021 12:12:40 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pj1-f42.google.com (mail-pj1-f42.google.com
 [209.85.216.42])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 3CBA58706C
 for <devel@driverdev.osuosl.org>; Fri, 19 Feb 2021 12:12:40 +0000 (UTC)
Received: by mail-pj1-f42.google.com with SMTP id my11so4210924pjb.1
 for <devel@driverdev.osuosl.org>; Fri, 19 Feb 2021 04:12:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=fr73k0oFNcOMq5EUpeQYfmWohZLzAZP/+I818Q2oXuY=;
 b=kbRqUBNjEh6WC4dMLAAMumlsH02hDzKSgaicJoO3BeUC1yL5Wuk9VNVh0ZCs0bIeJu
 fC3gb1qW3dMb8zF20fAgDn/O7tYQHfiU26QLvf11TiaIoehOFHLqSS5CLLZNsvgEnpz3
 uwbFspDdkfiws7cDA2/aV2Y+tzAe2qwmfQNLEH0ILgjHe4aesc/hZ5LDU555BoCht1hn
 rUWzICGzdc5PvRaCLrGigFvhOYreenaWiBk7lvlzYyQ31ZSV7GODRM8m9ZKGBoyx58cI
 L0aBuJ4VXEUQwZgopv+mVNUgBiPEB3heR9RTve/5wR5hDpUlXGRd2oxhn/Hh4yGN7UZE
 TyFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=fr73k0oFNcOMq5EUpeQYfmWohZLzAZP/+I818Q2oXuY=;
 b=WBhN3pobge54lEjYq7sBzpGiZzW+Ynlq2761/GKKwGJenmPgMXG1qNmGw2bICotquj
 +5HhnuZTShYwHj0tnhOxk2Fg6rxZVZdyvEpIP+iRvvZOk/xtXsgMWCAi4JNc1B8ck0Js
 vr8QB+wwO6ct33+pWl/2BPEX6drCt+/Ic6/5N9NuzqyzTYGVg3eZ+IjJlSMw0mNkT4r2
 INo8dpcawtRzFs1ZuhKBjl6GpuClhwgvSIrqmiSOxYvxpK0aIAUukG+yaoMmWMaMNuZV
 6CBLEFf9KSvRSEukhJfRLbbk7fzBu6xRnk3E3BTevA4rU850ball5sPJCgVWTtYp/q5N
 fvpw==
X-Gm-Message-State: AOAM530M40duIEAChkSVkAEgsogufaJ2JmyO5exqFgcaHwBwcemucERX
 nfwXfaABtr2DjJxVwyFRHn9k66NPrSney+5M
X-Google-Smtp-Source: ABdhPJxL4SZltxfc5BhDYGRd70PqUkr0oHOaHi8XUXUffDyYYhA+8Nn0boYhejfQNmZ/4Z6nb2SA5g==
X-Received: by 2002:a17:90a:1a0b:: with SMTP id
 11mr8708576pjk.58.1613736759769; 
 Fri, 19 Feb 2021 04:12:39 -0800 (PST)
Received: from gmail.com ([2401:4900:3847:831e:690e:964b:81e9:e810])
 by smtp.gmail.com with ESMTPSA id c29sm2608427pgb.58.2021.02.19.04.12.37
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 19 Feb 2021 04:12:39 -0800 (PST)
Date: Fri, 19 Feb 2021 17:42:33 +0530
From: Prakash Dubey <prakashdubey1999@gmail.com>
To: Dan Carpenter <dan.carpenter@oracle.com>
Subject: Re: [PATCH] staging: fwserial: Fix alignment of function parameters
Message-ID: <20210219121233.GA16568@gmail.com>
References: <20210218102851.GA20810@gmail.com> <YC9zNVWX7R9kD0Rq@kroah.com>
 <CALVjNJP=iXH+u2zUB93UZo+1+Ly0g23k5JtPXFbx=vaO+5-0Gw@mail.gmail.com>
 <YC+VX4NpOWX1z3+V@kroah.com> <20210219115221.GW2087@kadam>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210219115221.GW2087@kadam>
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

On Fri, Feb 19, 2021 at 02:52:21PM +0300, Dan Carpenter wrote:
> On Fri, Feb 19, 2021 at 11:39:27AM +0100, Greg KH wrote:
> > On Fri, Feb 19, 2021 at 03:25:38PM +0530, 17UCS047_Prakash Dubey wrote:
> > > I was unable to align it right below the opening parenthesis, just by using
> > > tabs. And when I did that with spaces, the checkpatch yelled at me for
> > > using spaces. Any suggestions how to do this without using spaces? I am
> > > using vim, I will try to find a workaround meanwhile.
> > 
> 
> Your comment hasn't made it to the list yet.  Sometimes there is a delay
> or maybe it was blocked for some reason (html email?).
> 
> You are allowed to use spaces but you can't have 8 consecutive spaces
> and spaces are not allowed before a tab character.  The way to align it
> is:
> 
> 		ret = wait_event_interruptible_timeout(port->wait_tx,
> 						       !test_bit(IN_TX, &port->flags),
> 						       10);
> 
> [tab x6][space x7]!test_bit(IN_TX, &port->flags)
> 
> regards,
> dan carpenter

Thank you Dan, I figured that out after a few failed attempts to align properly. 

I was replying through Gmail web client, as I am new to mutt. I am getting the hang of it.

-- 
Regards,
Prakash
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
