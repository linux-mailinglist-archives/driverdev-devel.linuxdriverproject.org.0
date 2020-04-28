Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id C00131BB915
	for <lists+driverdev-devel@lfdr.de>; Tue, 28 Apr 2020 10:46:49 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 49C812262B;
	Tue, 28 Apr 2020 08:46:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id xW4U4k-eOg2H; Tue, 28 Apr 2020 08:46:42 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id CC00D20354;
	Tue, 28 Apr 2020 08:46:41 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id C017D1BF312
 for <devel@linuxdriverproject.org>; Tue, 28 Apr 2020 08:46:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id BBC80203E2
 for <devel@linuxdriverproject.org>; Tue, 28 Apr 2020 08:46:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id g4MjxWFh8oi4 for <devel@linuxdriverproject.org>;
 Tue, 28 Apr 2020 08:46:38 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by silver.osuosl.org (Postfix) with ESMTPS id 32F9420354
 for <devel@driverdev.osuosl.org>; Tue, 28 Apr 2020 08:46:38 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 93038206B9;
 Tue, 28 Apr 2020 08:46:37 +0000 (UTC)
Date: Tue, 28 Apr 2020 10:46:35 +0200
From: Greg KH <greg@kroah.com>
To: Johannes Berg <johannes@sipsolutions.net>
Subject: Re: [PATCH 1/2] staging: rtl8723bs: remove mgmt_frame_register method
Message-ID: <20200428084635.GC996383@kroah.com>
References: <20200428101400.ae19d651ec38.Ieb15844bb5ab93b3d7931d6561f42e3316ef8251@changeid>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200428101400.ae19d651ec38.Ieb15844bb5ab93b3d7931d6561f42e3316ef8251@changeid>
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
Cc: devel@driverdev.osuosl.org, linux-wireless@vger.kernel.org,
 Sergey Matyukevich <geomatsi@gmail.com>,
 Johannes Berg <johannes.berg@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Tue, Apr 28, 2020 at 10:14:02AM +0200, Johannes Berg wrote:
> From: Johannes Berg <johannes.berg@intel.com>
> 
> This was changed in cfg80211, so having it broke things, but
> there's no need to adjust since it's an empty implementation.
> Just remove it.
> 
> Fixes: 6cd536fe62ef ("cfg80211: change internal management frame registration API")
> Signed-off-by: Johannes Berg <johannes.berg@intel.com>
> ---
>  .../staging/rtl8723bs/os_dep/ioctl_cfg80211.c | 24 -------------------
>  1 file changed, 24 deletions(-)

Acked-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
