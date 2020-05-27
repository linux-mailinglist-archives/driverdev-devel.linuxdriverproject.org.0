Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id BDAA81E3C73
	for <lists+driverdev-devel@lfdr.de>; Wed, 27 May 2020 10:45:39 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 28747235AE;
	Wed, 27 May 2020 08:45:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id rNPot4bpjZb4; Wed, 27 May 2020 08:45:36 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 1AF422322B;
	Wed, 27 May 2020 08:45:35 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 243CC1BF844
 for <devel@linuxdriverproject.org>; Wed, 27 May 2020 08:45:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 2009387D6D
 for <devel@linuxdriverproject.org>; Wed, 27 May 2020 08:45:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id B+ZS6UVybpTS for <devel@linuxdriverproject.org>;
 Wed, 27 May 2020 08:45:31 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 4040E87D69
 for <devel@driverdev.osuosl.org>; Wed, 27 May 2020 08:45:31 +0000 (UTC)
Received: from coco.lan (ip5f5ad5c5.dynamic.kabel-deutschland.de
 [95.90.213.197])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 7BE9B206F1;
 Wed, 27 May 2020 08:45:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1590569131;
 bh=PrG/wfJu4GEzoVBNL3trG0nXymQ/KbtrGBqZcfWWGJM=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=BvL3nr0Ex/WOcfNQO+m9Hf/cDDlHB6UM5pSo9kdsQQ/tfXKsxQD5kzMpuLULjIggT
 UL70kpSxHZgA5Ql5+svLuJJTBouUiGKTB1hZI67qgzqBdjb5XxJYjifNBRd/fZpfxT
 AhSj2kgf6cum4OsW63T6q7scRbNv8XGLZA+GsDdI=
Date: Wed, 27 May 2020 10:45:25 +0200
From: Mauro Carvalho Chehab <mchehab@kernel.org>
To: Nathan Chancellor <natechancellor@gmail.com>
Subject: Re: [PATCH 0/7] media: atomisp: Address several clang warnings
Message-ID: <20200527104525.5e6cd93b@coco.lan>
In-Reply-To: <20200527071150.3381228-1-natechancellor@gmail.com>
References: <20200527071150.3381228-1-natechancellor@gmail.com>
X-Mailer: Claws Mail 3.17.5 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
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
Cc: devel@driverdev.osuosl.org, clang-built-linux@googlegroups.com,
 linux-kernel@vger.kernel.org, Sakari Ailus <sakari.ailus@linux.intel.com>,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Em Wed, 27 May 2020 00:11:43 -0700
Nathan Chancellor <natechancellor@gmail.com> escreveu:

> Hi all,
> 
> This series aims to clean up the code while addressing the majority of
> clang warnings in this driver, some found by the 0day bot and others
> found by me.
> 
> There are several enum conversion warnings that happen, which I do not
> really know how to solve without understanding how exactly this driver
> works. I would appreciate some guidance or a solution. Below are the
> warnings, sorry for not wrapping them but they would be hard to read
> otherwise.

... 
> ../drivers/staging/media/atomisp//pci/atomisp_compat_css20.h:117:22: note: expanded from macro 'CSS_ID'
> #define CSS_ID(val)     (IA_ ## val)
...

I actually wrote a patch getting rid of this ugly thing:

	https://git.linuxtv.org/mchehab/experimental.git/commit/?h=atomisp_v3&id=cf6a15543ace1e99364911c0b7a2f6b8f2f43021

This one was already submitted upstream (not merged yet), but there
are also lots of other patches on my working tree.

I'll try to apply your patch series on it, once I'll be able to
fix a bug with mmap support.

Thanks,
Mauro
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
