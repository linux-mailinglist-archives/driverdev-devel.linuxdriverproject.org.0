Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 69AB3DE4D7
	for <lists+driverdev-devel@lfdr.de>; Mon, 21 Oct 2019 08:53:07 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id A757787A56;
	Mon, 21 Oct 2019 06:53:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ccJvihWSGR6h; Mon, 21 Oct 2019 06:53:05 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 85A99879FC;
	Mon, 21 Oct 2019 06:53:04 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id A414A1BF369
 for <devel@linuxdriverproject.org>; Mon, 21 Oct 2019 06:52:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id A12C086460
 for <devel@linuxdriverproject.org>; Mon, 21 Oct 2019 06:52:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id qTzEVahaUcxL for <devel@linuxdriverproject.org>;
 Mon, 21 Oct 2019 06:52:58 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail2-relais-roc.national.inria.fr
 (mail2-relais-roc.national.inria.fr [192.134.164.83])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 2640386404
 for <devel@driverdev.osuosl.org>; Mon, 21 Oct 2019 06:52:57 +0000 (UTC)
X-IronPort-AV: E=Sophos;i="5.67,322,1566856800"; d="scan'208";a="407139933"
Received: from ip-121.net-89-2-166.rev.numericable.fr (HELO hadrien)
 ([89.2.166.121])
 by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 21 Oct 2019 08:52:55 +0200
Date: Mon, 21 Oct 2019 08:52:55 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Joe Perches <joe@perches.com>
Subject: Re: [PATCH v1 1/5] staging: wfx: fix warnings of no space is necessary
In-Reply-To: <6e6bc92cac0858fe5bd37b28f688d3da043f4bef.camel@perches.com>
Message-ID: <alpine.DEB.2.21.1910210850080.2959@hadrien>
References: <20191019140719.2542-1-jbi.octave@gmail.com>
 <20191019140719.2542-2-jbi.octave@gmail.com> <20191019142443.GH24678@kadam>
 <alpine.LFD.2.21.1910191603520.6740@ninjahub.org>
 <20191019180514.GI24678@kadam>
 <336960fdf88dbed69dd3ed2689a5fb1d2892ace8.camel@perches.com>
 <20191020191759.GJ24678@kadam>
 <6e6bc92cac0858fe5bd37b28f688d3da043f4bef.camel@perches.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
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
Cc: devel@driverdev.osuosl.org, Jules Irenge <jbi.octave@gmail.com>,
 gregkh@linuxfoundation.org, linux-kernel@vger.kernel.org,
 outreachy-kernel@googlegroups.com, Dan Carpenter <dan.carpenter@oracle.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

> btw2:
>
> I really dislike all the code inconsistencies and
> unnecessary code duplication with miscellaneous changes
> in the rtl staging drivers....
>
> Horrid stuff.

I'm not sure what you mean by "miscellaneous changes".  Do you mean that
all issues should be fixed for one file before moving on to another one?

Or that there are code clones, and all of the clones should be updated at
the same time?

julia
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
