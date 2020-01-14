Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id AB15213AD84
	for <lists+driverdev-devel@lfdr.de>; Tue, 14 Jan 2020 16:22:15 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 4A7CF861A2;
	Tue, 14 Jan 2020 15:22:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id N1qKVvp4w9Nt; Tue, 14 Jan 2020 15:22:14 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 0F15C820C9;
	Tue, 14 Jan 2020 15:22:10 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 99BED1BF574
 for <devel@linuxdriverproject.org>; Tue, 14 Jan 2020 15:22:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 96E4C85081
 for <devel@linuxdriverproject.org>; Tue, 14 Jan 2020 15:22:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 3Zza_o_VWGyo for <devel@linuxdriverproject.org>;
 Tue, 14 Jan 2020 15:22:01 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 41F2C85008
 for <devel@driverdev.osuosl.org>; Tue, 14 Jan 2020 15:22:01 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 7BFC22072B;
 Tue, 14 Jan 2020 15:22:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1579015321;
 bh=FsuKKaA++OmWYtzIWBQZCFLq/3Fy/H3EQ5V+c+zgmTc=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=YCr1fOQnifCArkQEREQkjVb2C0nvw+BLfSt1eB+1MB/JHLRSsyZQQ9qn6n0AAUiAw
 9cc+ybzxOROorYnOOXIUfETwI7LMsa3QZuhKLByXb8huu+E5Kmxx9xP5U0M/9webeX
 9K2f2Ptg1BRM2JtyBkyYahuM4z/RvK03ot8rGcuQ=
Date: Tue, 14 Jan 2020 16:21:58 +0100
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Masahiro Yamada <masahiroy@kernel.org>
Subject: Re: [PATCH] staging: most: remove header include path to
 drivers/staging
Message-ID: <20200114152158.GA2041564@kroah.com>
References: <20200104161827.18960-1-masahiroy@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200104161827.18960-1-masahiroy@kernel.org>
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

On Sun, Jan 05, 2020 at 01:18:27AM +0900, Masahiro Yamada wrote:
> There is no need to add "ccflags-y += -I $(srctree)/drivers/staging"
> just for including <most/core.h>.
> 
> Use the #include "..." directive with the correct relative path.
> 
> Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>

This patch doesn't apply to my staging-next branch at all, what did you
make it against?  Perhaps if you rebase it against linux-next it can
work?

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
