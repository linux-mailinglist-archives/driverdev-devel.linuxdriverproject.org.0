Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 94E3F3241AB
	for <lists+driverdev-devel@lfdr.de>; Wed, 24 Feb 2021 17:12:31 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 089CD4EC91;
	Wed, 24 Feb 2021 16:12:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id QIurY9PsYn1c; Wed, 24 Feb 2021 16:12:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 08B184EC96;
	Wed, 24 Feb 2021 16:12:27 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id E85C61BF418
 for <devel@linuxdriverproject.org>; Wed, 24 Feb 2021 16:12:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id D7F7A606D8
 for <devel@linuxdriverproject.org>; Wed, 24 Feb 2021 16:12:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id A9PzakmINg1r for <devel@linuxdriverproject.org>;
 Wed, 24 Feb 2021 16:12:16 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail-pl1-f173.google.com (mail-pl1-f173.google.com
 [209.85.214.173])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 461836073D
 for <devel@driverdev.osuosl.org>; Wed, 24 Feb 2021 16:12:16 +0000 (UTC)
Received: by mail-pl1-f173.google.com with SMTP id d11so1465161plo.8
 for <devel@driverdev.osuosl.org>; Wed, 24 Feb 2021 08:12:16 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=znf/l1mfnTdzj1tAFt88yp752BGUtEl4XP2IYuaKZTs=;
 b=OHSNgK98VD/x9FUdn1+H8qKxJUf7X7wAQtZxl8yJGwnr0GJrBhiwo8HM4g7IvZBz5+
 z2+tvcVFsdEvhS7oNEUoWY+DnzYz1OMgA0p3+ccY3yxBvfDDgnNHLScOSJnR9zSpm6zw
 fTwmutWr3Vv/l01cv8RcK80ydtqoPKSop2BIkVXQ3KdwsS0wB6aqS5k3fI4jqV7Tpxb5
 Cx8s+CRsxvk7T4J7oRRx1tQy37xBD1jhiwXWFFRQRnZzxMF/rdhAJ83b7e7WjoCBXd4n
 qDt/cFR2Cw6bnStQiGEEenFL6yOEjHfbMNzqtf3yPxCbMN7E9rK2GSfpNsWa4etw5j5f
 eNgw==
X-Gm-Message-State: AOAM531iRSsg07ueP+ZA0EaAyupQGMBFOxaBRLKdWLm6rr1wXyVFEOnO
 jdRChCKtWHJ5I3gmirCYhAI=
X-Google-Smtp-Source: ABdhPJx7IyGUAxjYTwnBqxStyxBOZONa0stTnIZV7U902QoSKg/lRFiLi65R1YP3dVCKVTuuxaEj/g==
X-Received: by 2002:a17:90a:d149:: with SMTP id
 t9mr5083231pjw.43.1614183135770; 
 Wed, 24 Feb 2021 08:12:15 -0800 (PST)
Received: from karthik-strix-linux.karthek.com ([192.140.155.67])
 by smtp.gmail.com with ESMTPSA id y8sm3542994pfe.36.2021.02.24.08.12.12
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 24 Feb 2021 08:12:15 -0800 (PST)
Date: Wed, 24 Feb 2021 21:42:09 +0530
From: karthek <mail@karthek.com>
To: Dan Carpenter <dan.carpenter@oracle.com>
Subject: Re: [PATCH 0/2] fix sparse warnings
Message-ID: <YDZ62RMHotsPrF+R@karthik-strix-linux.karthek.com>
References: <cover.1613921277.git.mail@karthek.com>
 <YDZpKcXLkiueequk@karthik-strix-linux.karthek.com>
 <20210224150648.GT2087@kadam>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210224150648.GT2087@kadam>
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
Cc: devel@driverdev.osuosl.org, Arnd Bergmann <arnd@arndb.de>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 Jakub Kicinski <kuba@kernel.org>, Johannes Berg <johannes@sipsolutions.net>,
 Lee Jones <lee.jones@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Wed, Feb 24, 2021 at 06:06:48PM +0300, Dan Carpenter wrote:
> On Wed, Feb 24, 2021 at 08:26:41PM +0530, karthek wrote:
> > On Sun, Feb 21, 2021 at 09:00:48PM +0530, karthik alapati wrote:
> > > the following patches fixes two  byte-order issues
> > > and fixes these sparse warnings
> > > 
> > > 
> > > drivers/staging//wimax/i2400m/op-rfkill.c:89:25: warning: incorrect type in assignment (different base types)
> > > drivers/staging//wimax/i2400m/op-rfkill.c:89:25:    expected restricted __le16 [usertype] length
> > > drivers/staging//wimax/i2400m/op-rfkill.c:89:25:    got unsigned long
> > > .
> > > drivers/staging//wimax/i2400m/fw.c:514:27: warning: restricted __le32 degrades to integer
> > > 
> > > 
> > > karthik alapati (2):
> > >   staging: wimax/i2400m: fix byte-order issue
> > >   staging: wimax/i2400m: convert __le32 type to host byte-order
> > > 
> > >  drivers/staging/wimax/i2400m/fw.c        | 2 +-
> > >  drivers/staging/wimax/i2400m/op-rfkill.c | 2 +-
> > >  2 files changed, 2 insertions(+), 2 deletions(-)
> > > 
> > > -- 
> > > 2.30.1
> > > 
> > ping?
> 
> The merge window is open so no one is merging these types of fixes now.
> Wait until -rc1 is out, and then give the maintainer two weeks to look
> at your patch and get back to you.
> 
> regards,
> dan carpenter
>
thanks dan, Got it.
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
