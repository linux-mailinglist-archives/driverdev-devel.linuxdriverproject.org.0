Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id B30D61986EE
	for <lists+driverdev-devel@lfdr.de>; Tue, 31 Mar 2020 00:04:04 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 35AAE214E6;
	Mon, 30 Mar 2020 22:04:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id g+wvxSDbVdr9; Mon, 30 Mar 2020 22:04:02 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 9BB7F20465;
	Mon, 30 Mar 2020 22:04:00 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 2FF3A1BF3C3
 for <devel@linuxdriverproject.org>; Mon, 30 Mar 2020 22:03:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 1D80920465
 for <devel@linuxdriverproject.org>; Mon, 30 Mar 2020 22:03:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id H1J76uczTWkz for <devel@linuxdriverproject.org>;
 Mon, 30 Mar 2020 22:03:57 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f194.google.com (mail-pf1-f194.google.com
 [209.85.210.194])
 by silver.osuosl.org (Postfix) with ESMTPS id 6F6E92044E
 for <devel@driverdev.osuosl.org>; Mon, 30 Mar 2020 22:03:57 +0000 (UTC)
Received: by mail-pf1-f194.google.com with SMTP id b72so9281793pfb.11
 for <devel@driverdev.osuosl.org>; Mon, 30 Mar 2020 15:03:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:subject:from:to:cc:date:in-reply-to:references
 :user-agent:mime-version:content-transfer-encoding;
 bh=Fn5bbEwDKA1CjrL2t4+buEZ5DMdOn8ZLIb0ux0e5B3Q=;
 b=QlDnJ+HXQj0YHxnX8aX313kM6rHoKORnaNm2WYXDMn1aeXXbnF8UNEQ4VowdZeG4zl
 uV2sLQkwXOtnNAwFLkHNHrGIdHbHg2WXKZ+OCxvcK6XGQ4p7XyOtNEZguQcao8eEbZik
 jzhJzwgxyju9KgyIAO6AGWgfZzTJEGj7PCStu/3VWR74BEj6493pWtlmOVLr3PXjMy6j
 EvPvcs8zuq5fFUGMmdyzRW3LnvxqECq4R5074NxZe/sQXvq3wyUHonW+iSMHkNnpBI2D
 MA52ER9NNMOOvvHw75Dyrr3HHU19n2Cm6kVIde2BUnl4kJPuV5rqVxtOQP/DKfiUAQTz
 Rlnw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
 :references:user-agent:mime-version:content-transfer-encoding;
 bh=Fn5bbEwDKA1CjrL2t4+buEZ5DMdOn8ZLIb0ux0e5B3Q=;
 b=Ea3uJML9V9LrQojfE+Un+wBVkjQX2r8h3Qwda6sebVfMReySMuJcBS+8/cdH/tjyj1
 XeGa4hagboU9LnuupD/BxvUOTgWAMJlyvNnCGAZ4Dvyvrkg42V4Pp16/O2KGQDAe8A/e
 +Xs4Dd7WEfbixAWLA7XJ/Q5rz3Q2axCZ0qOJLJ5dgszx4CfVwz1I8uyM5Zm4X/19ZqnA
 2k3TwIRX4xUW9KMqAjEjnyx45bq/M3HuIUcXBTZKV786s2S5F087FWcwu2ZhjQpctfO/
 3QTBDne6OWreqv8zdFh4s/Rr33praB6F7b5wLGf9vNieVZz1VF/PA3k2k0Qdufr6zgFh
 6VdA==
X-Gm-Message-State: AGi0PubVo4/0vjI40t740n5EDF53zR7prfO1yzUKMyC5jleV1q5HQ77q
 B496L8bkdrljv332S4d40cI=
X-Google-Smtp-Source: APiQypIZ7rugn26VNzMH9f1FGurreUtTRDwMeVEoQLstiLOtdeGMyyyqnQhROZmrQSttmeLztEHYWg==
X-Received: by 2002:a65:55c6:: with SMTP id k6mr1200130pgs.52.1585605836849;
 Mon, 30 Mar 2020 15:03:56 -0700 (PDT)
Received: from OptiPlexFedora ([47.144.161.84])
 by smtp.gmail.com with ESMTPSA id h4sm1230719pgg.67.2020.03.30.15.03.55
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 30 Mar 2020 15:03:56 -0700 (PDT)
Message-ID: <53befe00af657428b591200b31b5349a4a462eb1.camel@gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] staging: fbtft: Replace udelay with
 preferred usleep_range
From: "John B. Wyatt IV" <jbwyatt4@gmail.com>
To: Stefano Brivio <sbrivio@redhat.com>
Date: Mon, 30 Mar 2020 15:03:55 -0700
In-Reply-To: <20200330194043.56c79bb8@elisabeth>
References: <20200329092204.770405-1-jbwyatt4@gmail.com>
 <alpine.DEB.2.21.2003291127230.2990@hadrien>
 <2fccf96c3754e6319797a10856e438e023f734a7.camel@gmail.com>
 <alpine.DEB.2.21.2003291144460.2990@hadrien>
 <CAMS7mKBEhqFat8fWi=QiFwfLV9+skwi1hE-swg=XxU48zk=_tQ@mail.gmail.com>
 <alpine.DEB.2.21.2003291235590.2990@hadrien>
 <20200330194043.56c79bb8@elisabeth>
User-Agent: Evolution 3.34.4 (3.34.4-1.fc31) 
MIME-Version: 1.0
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
Cc: devel@driverdev.osuosl.org, linux-fbdev@vger.kernel.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, Julia Lawall <julia.lawall@inria.fr>,
 outreachy-kernel@googlegroups.com,
 Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>,
 Soumyajit Deb <debsoumyajit100@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Mon, 2020-03-30 at 19:40 +0200, Stefano Brivio wrote:
> On Sun, 29 Mar 2020 12:37:18 +0200 (CEST)
> Julia Lawall <julia.lawall@inria.fr> wrote:
> 
> > On Sun, 29 Mar 2020, Soumyajit Deb wrote:
> > 
> > > I had the same doubt the other day about the replacement of
> > > udelay() with
> > > usleep_range(). The corresponding range for the single argument
> > > value of
> > > udelay() is quite confusing as I couldn't decide the range. But
> > > as much as I
> > > noticed checkpatch.pl gives warning for replacing udelay() with
> > > usleep_range() by checking the argument value of udelay(). In the
> > > documentation, it is written udelay() should be used for a sleep
> > > time of at
> > > most 10 microseconds but between 10 microseconds and 20
> > > milliseconds,
> > > usleep_range() should be used. 
> > > I think the range is code specific and will depend on what range
> > > is
> > > acceptable and doesn't break the code.
> > >  Please correct me if I am wrong.  
> > 
> > The range depends on the associated hardware.
> 
> John, by the way, here you could have checked the datasheet of this
> LCD
> controller. It's a pair of those:
> 	https://www.sparkfun.com/datasheets/LCD/ks0108b.pdf
> 

No I have not. This datasheet is a little over my head honestly.

What would you recommend to get familiar with datasheets like this?

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
