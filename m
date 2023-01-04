Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 0639F65DC3A
	for <lists+driverdev-devel@lfdr.de>; Wed,  4 Jan 2023 19:35:55 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 55B2D60DFF;
	Wed,  4 Jan 2023 18:35:53 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 55B2D60DFF
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id nm8epOl019Ow; Wed,  4 Jan 2023 18:35:52 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 202E160DC2;
	Wed,  4 Jan 2023 18:35:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 202E160DC2
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 7C66B1BF3BB
 for <devel@linuxdriverproject.org>; Wed,  4 Jan 2023 18:35:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 5752D405C0
 for <devel@linuxdriverproject.org>; Wed,  4 Jan 2023 18:35:48 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 5752D405C0
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id cTSXcsDhH0iW for <devel@linuxdriverproject.org>;
 Wed,  4 Jan 2023 18:35:47 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 28C75400E2
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 28C75400E2
 for <devel@driverdev.osuosl.org>; Wed,  4 Jan 2023 18:35:47 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 1D0CD617D8;
 Wed,  4 Jan 2023 18:35:46 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BDA33C433F0;
 Wed,  4 Jan 2023 18:35:44 +0000 (UTC)
From: SeongJae Park <sj@kernel.org>
To: kernel test robot <oliver.sang@intel.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: Re: [driver-core:debugfs_lookup_fix] [mm/damon/dbgfs] ff25f87cfc:
 kernel_BUG_at_lib/list_debug.c
Date: Wed,  4 Jan 2023 18:35:39 +0000
Message-Id: <20230104183539.1509-1-sj@kernel.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <202301031611.c49a0c74-oliver.sang@intel.com>
References: 
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1672857345;
 bh=GHoH25BDojkBu8zk+In6e6fb+FOzetOV9W36hZoxaC4=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=gvsvtpHt0gDjsnijtLvAuSIUYHj8CxhsusxzYQ5zbTGgLLUvS65MT5K7aknJ4OZjK
 FQdoQBkVjqrfGt/j4wJuNLE1u19IdyPXtdO9cwIiv7qURj9kBiHT/3bkUDIgVflH2t
 Hfpx7MFzFL0kO7Zf3jUnkVj7yCXjKKpNsXTN4WecmFfDBS6O6qnAMtZpGSAyNl3hh5
 24ktlzd3m8AhYnFNj1mpZOyIJxMtOo5ifLsYSrIHLqnQJYNI1fPso+aejLeaKX9XUr
 QXTi/t9SzRJsv/m0m8rgMbe7EkWPKmhGUjarzvxAKXkBcxCqEFUnkZduw/bMh0y0ZF
 ddSMtbhpzff/A==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=gvsvtpHt
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
Cc: devel@driverdev.osuosl.org, SeongJae Park <sj@kernel.org>,
 damon@lists.linux.dev, linux-mm@kvack.org, oe-lkp@lists.linux.dev,
 Andrew Morton <akpm@linux-foundation.org>, stable <stable@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hello,

On Tue, 3 Jan 2023 21:16:09 +0800 kernel test robot <oliver.sang@intel.com> wrote:

> [-- Attachment #1: Type: text/plain, Size: 7528 bytes --]
> 
> 
> Greeting,
> 
> FYI, we noticed kernel_BUG_at_lib/list_debug.c due to commit (built with gcc-11):

Thank you for the report!

> 
> commit: ff25f87cfcfc34ebe652987f2a7beb184762785b ("mm/damon/dbgfs: fix memory leak when using debugfs_lookup()")
> https://git.kernel.org/cgit/linux/kernel/git/gregkh/driver-core.git debugfs_lookup_fix

The commit is for fixing a memory leak due to missed dput() call.  The patch
has posted originally by Greg and revised my I[1].  The revised version has
merged in mainline during v6.0 stabilization period (1552fd3ef7db).

The problematic tree (driver-core/debugfs_lookup_fix) is based on v6.2-rc2, so
the revised patch is already applied.  But the first version of the patch is
applied again on the tree[2], probably by mistake, and caused double 'dput()'.

So I think the commit seems needs to be reverted.

If there is anything I missed or wrong, please let me know.

[1] https://lore.kernel.org/damon/20220902191149.112434-1-sj@kernel.org/
[2] https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/driver-core.git/commit/?h=debugfs_lookup_fix&id=5167d3e8149e332204274910da1057e8f907d7d2


Thanks,
SJ
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
