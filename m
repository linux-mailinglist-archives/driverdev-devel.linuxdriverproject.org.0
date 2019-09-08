Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4AC94ACECB
	for <lists+driverdev-devel@lfdr.de>; Sun,  8 Sep 2019 15:05:21 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id C0C808700D;
	Sun,  8 Sep 2019 13:05:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id OuJTcgwUNxUq; Sun,  8 Sep 2019 13:05:18 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 9994086F5C;
	Sun,  8 Sep 2019 13:05:17 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 7F85C1BF40F
 for <devel@linuxdriverproject.org>; Sun,  8 Sep 2019 13:05:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 7D3D4203F7
 for <devel@linuxdriverproject.org>; Sun,  8 Sep 2019 13:05:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id fThu8TorrEBk for <devel@linuxdriverproject.org>;
 Sun,  8 Sep 2019 13:05:14 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by silver.osuosl.org (Postfix) with ESMTPS id CEBAB20358
 for <devel@driverdev.osuosl.org>; Sun,  8 Sep 2019 13:05:14 +0000 (UTC)
Received: from localhost (unknown [62.28.240.114])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 2DACA2081B;
 Sun,  8 Sep 2019 13:05:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1567947914;
 bh=f/USdf+Qmmrhtr9v2Ye1PhWv3pSQE+Nih/ikf2MxXZY=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=hgrRWimuE+GnXFwSTufD2W9Ief5Mtj+E6ytsR5zwiVwABvRj/wSmbLVc/5glV7WSL
 0ErUvG/E8lts7YenUpaTMjZfgfyXsf9oGqjcQekuNdihrG4a/k+vHYmVSs4ipP9OQc
 Buk3RaUuSGdEh8wgFCWV5ceNGJDEbcxbGwFPee4Q=
Date: Sun, 8 Sep 2019 14:05:12 +0100
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Valentin Vidic <vvidic@valentin-vidic.from.hr>
Subject: Re: [PATCH 2/2 v2] staging: exfat: cleanup casts
Message-ID: <20190908130512.GA9290@kroah.com>
References: <564f4da0f0a9cf9eb91ee46bf10531ea04a37750.camel@perches.com>
 <20190907214541.13764-1-vvidic@valentin-vidic.from.hr>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190907214541.13764-1-vvidic@valentin-vidic.from.hr>
User-Agent: Mutt/1.12.1 (2019-06-15)
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
Cc: Joe Perches <joe@perches.com>, devel@driverdev.osuosl.org,
 Valdis Kletnieks <valdis.kletnieks@vt.edu>, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Sat, Sep 07, 2019 at 09:45:41PM +0000, Valentin Vidic wrote:
> Use constants and fix checkpatch.pl warnings:
> 
>   CHECK: No space is necessary after a cast

This really should be two different patches, one for the constant
changes, and one for the space issues.  Can you break this up and resend
the whole series?

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
