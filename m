Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A6CC6AF8D
	for <lists+driverdev-devel@lfdr.de>; Tue, 16 Jul 2019 21:05:48 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id D526121FF6;
	Tue, 16 Jul 2019 19:05:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 6Z2RpUQOLAm7; Tue, 16 Jul 2019 19:05:45 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 4A553204BC;
	Tue, 16 Jul 2019 19:05:43 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 6A7161BF360
 for <devel@linuxdriverproject.org>; Tue, 16 Jul 2019 19:05:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 67BFB861C9
 for <devel@linuxdriverproject.org>; Tue, 16 Jul 2019 19:05:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 0msD51o5b1Rp for <devel@linuxdriverproject.org>;
 Tue, 16 Jul 2019 19:05:39 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id D2DB2846F4
 for <devel@driverdev.osuosl.org>; Tue, 16 Jul 2019 19:05:39 +0000 (UTC)
Received: from localhost (unknown [113.157.217.50])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 3C06520665;
 Tue, 16 Jul 2019 19:05:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1563303939;
 bh=TgjUlqsOjqmls7o3ZGcNwqugpL8lOWDoxKh4+NDsWZE=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=x9575Ri6iEiG3/mTh8Z/JQzK6dGPtMS1u9WuEZobAgR7Vnaou1Tz53Vyy9mGdAurh
 HOu2MMDkr15pUdlMDZQjVc05kRaEWCGr6lpFxtplvJqLmcKOR+t2qfWTqZiYYOi6l1
 SE9N9B9iNQAzEuHAzHon6QgwjAIHiVYNk7fcIaKo=
Date: Wed, 17 Jul 2019 04:05:37 +0900
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: kbuild test robot <lkp@intel.com>
Subject: Re: [staging:staging-testing 1/41]
 drivers/staging/isdn/hysdn/hysdn_defs.h:227:1: warning: "/*" within comment
Message-ID: <20190716190537.GC20227@kroah.com>
References: <201907162040.kxKbofMG%lkp@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <201907162040.kxKbofMG%lkp@intel.com>
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
Cc: devel@driverdev.osuosl.org, Valerio Genovese <valerio.click@gmail.com>,
 kbuild-all@01.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Tue, Jul 16, 2019 at 08:54:52PM +0800, kbuild test robot wrote:
> tree:   https://kernel.googlesource.com/pub/scm/linux/kernel/git/gregkh/staging.git staging-testing
> head:   a8ee5f6cf86f02b87a0a27abff63ea933cca0bab
> commit: b15e62615afd9ea7caf03126ad5d944fc5f5e371 [1/41] staging: isdn: hysdn: fix symbol 'hysdn_proc_entry' was not declared.

Ugh, I thought this was just isdn being crummy code, but your patch is
incorrect.  I'm going to drop it now from the tree.  Please resend after
properly test-building your new version.

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
