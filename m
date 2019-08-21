Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 63AE9986E7
	for <lists+driverdev-devel@lfdr.de>; Wed, 21 Aug 2019 23:57:03 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 1941786508;
	Wed, 21 Aug 2019 21:57:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id E0NMFAvIbAVV; Wed, 21 Aug 2019 21:57:01 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id DCC8186090;
	Wed, 21 Aug 2019 21:57:00 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 105201BF425
 for <devel@linuxdriverproject.org>; Wed, 21 Aug 2019 21:56:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 07735204E6
 for <devel@linuxdriverproject.org>; Wed, 21 Aug 2019 21:56:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id kYFEE2sNbuTC for <devel@linuxdriverproject.org>;
 Wed, 21 Aug 2019 21:56:58 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from sender-of-o52.zoho.com (sender-of-o52.zoho.com [135.84.80.217])
 by silver.osuosl.org (Postfix) with ESMTPS id 558AE204DA
 for <devel@driverdev.osuosl.org>; Wed, 21 Aug 2019 21:56:58 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; t=1566424615; cv=none; d=zoho.com; s=zohoarc; 
 b=UvpBdk+fuAuGtPQhKcAnsqebddmhEzTWNzoCg4Ic8cl6e2L7+YGANoTQNMWwCmMzWrZJgyh04Wj6ZfzBUVxSq8gjZ0zdeHlPC/sTMZ1+1UzfExmBLqez4F93lXClYOa23+DaqWLH1R6sPikcvUSWEHwJIOi9qGyUvoLLRpHVP/g=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zoho.com;
 s=zohoarc; t=1566424615;
 h=Content-Type:Cc:Date:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:To:ARC-Authentication-Results;
 bh=K6p3Ii3/R2/6F+qjk0FyJxibjg29ELjDMma7R5Romts=; 
 b=mvxN036wW0pVPX0RiDCv+VX/gb7OFxvHW+ZawQISxK3GEdiBWt5r8a2fHKJAiM4W2ruHQO+vLmNI/pj1DYqbNHayPERhwuMAahVsvLcsRX3wKzS24eUbkRcXElgBRqZuJhRvkXlouYutEOMEhh5DrCwBNr2qGKoMFAijQPRlt/Q=
ARC-Authentication-Results: i=1; mx.zoho.com; dkim=pass  header.i=brennan.io;
 spf=pass  smtp.mailfrom=stephen@brennan.io;
 dmarc=pass header.from=<stephen@brennan.io> header.from=<stephen@brennan.io>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1566424615; 
 s=selector01; d=brennan.io; i=stephen@brennan.io;
 h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:Content-Type:In-Reply-To;
 l=429; bh=K6p3Ii3/R2/6F+qjk0FyJxibjg29ELjDMma7R5Romts=;
 b=KFvuWT5sOYWq1qZBxbJIqHdZrR4jtVpruSPFTvjn6qSuQLkY0myd7aS/5EmGMD9E
 dI2aUzhcL4Kl04L0mdOmBoASU7c4rWffS8Dp66b1v1znZnS6lNT3h/jLYgVFxQlnv8Z
 2WQ1ZpSGBIoL2yS49rAv8/WxYbHdgWgzWUzC5aeU=
Received: from localhost (wsip-184-188-36-2.sd.sd.cox.net [184.188.36.2]) by
 mx.zohomail.com with SMTPS id 1566424614832454.3465790795368;
 Wed, 21 Aug 2019 14:56:54 -0700 (PDT)
Date: Wed, 21 Aug 2019 14:56:53 -0700
From: stephen@brennan.io
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: Re: Added Realtek rtl8192u driver to staging - static analysis report.
Message-ID: <20190821215653.GA8199@pride>
References: <cb1222a8-4c67-8fac-f1d9-755e97699caa@canonical.com>
 <20190821205531.GC17415@kroah.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190821205531.GC17415@kroah.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-ZohoMailClient: External
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
Cc: devel@driverdev.osuosl.org, Colin Ian King <colin.king@canonical.com>,
 Jerry Chuang <jerry-chuang@realtek.com>, linux-kernel@vger.kernel.org,
 John Whitmore <johnfwhitmore@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

> > Either way, it's not clear to me and I think the code needs cleaning 
> > up.
> > Any ideas?
> 
> 10+ year old code, yeah!!!
> 
> Just guess, who knows, no one seems to care :(

I'm at least interested in helping with cleaning the code and learning 
about the driver, maybe fixing up logical errors like this at some point.  
But I have had some trouble finding the hardware to test on. Maybe that's 
part of the issue?

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
