Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 695E065E83D
	for <lists+driverdev-devel@lfdr.de>; Thu,  5 Jan 2023 10:54:08 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id D8BD260DFE;
	Thu,  5 Jan 2023 09:54:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D8BD260DFE
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 7coFGFr8Lr1U; Thu,  5 Jan 2023 09:54:06 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9B6FA60D9D;
	Thu,  5 Jan 2023 09:54:05 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9B6FA60D9D
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 0F8A11BF3DC
 for <devel@linuxdriverproject.org>; Thu,  5 Jan 2023 09:54:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id EB73540232
 for <devel@linuxdriverproject.org>; Thu,  5 Jan 2023 09:54:02 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org EB73540232
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 3P1a8iU7yCqk for <devel@linuxdriverproject.org>;
 Thu,  5 Jan 2023 09:54:02 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 20AEA4021C
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 20AEA4021C
 for <devel@driverdev.osuosl.org>; Thu,  5 Jan 2023 09:54:01 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 0A60C61958;
 Thu,  5 Jan 2023 09:54:01 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DE69CC433D2;
 Thu,  5 Jan 2023 09:53:59 +0000 (UTC)
Date: Thu, 5 Jan 2023 10:53:57 +0100
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: SeongJae Park <sj@kernel.org>
Subject: Re: [driver-core:debugfs_lookup_fix] [mm/damon/dbgfs] ff25f87cfc:
 kernel_BUG_at_lib/list_debug.c
Message-ID: <Y7aeNRf3TyTufC8L@kroah.com>
References: <202301031611.c49a0c74-oliver.sang@intel.com>
 <20230104183539.1509-1-sj@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230104183539.1509-1-sj@kernel.org>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=linuxfoundation.org; 
 s=korg; t=1672912440;
 bh=FH2IdRVONYmJaCpZAfwCyvQ6r1cU3bykTJdrFIkIfbw=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=YnV5FLFl6ciYvICDm9NbRpvqmPxYg9RRS8ODqfaTxKFCTfAZNfo7G2CQX7gbaBvwO
 A3MHZ2vwr+HXExWDeMXWsnBoNnun3D5JeR6DwX9o80qiVznpZLUUGDN2v1e6AGHTaO
 K4Y5ouqJbmgj1+wVsRVjmnCxlfCF7N5PcIzDgFfM=
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (1024-bit key) header.d=linuxfoundation.org
 header.i=@linuxfoundation.org header.a=rsa-sha256 header.s=korg
 header.b=YnV5FLFl
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
Cc: devel@driverdev.osuosl.org, damon@lists.linux.dev, linux-mm@kvack.org,
 kernel test robot <oliver.sang@intel.com>, oe-lkp@lists.linux.dev,
 Andrew Morton <akpm@linux-foundation.org>, stable <stable@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Wed, Jan 04, 2023 at 06:35:39PM +0000, SeongJae Park wrote:
> Hello,
> 
> On Tue, 3 Jan 2023 21:16:09 +0800 kernel test robot <oliver.sang@intel.com> wrote:
> 
> > [-- Attachment #1: Type: text/plain, Size: 7528 bytes --]
> > 
> > 
> > Greeting,
> > 
> > FYI, we noticed kernel_BUG_at_lib/list_debug.c due to commit (built with gcc-11):
> 
> Thank you for the report!
> 
> > 
> > commit: ff25f87cfcfc34ebe652987f2a7beb184762785b ("mm/damon/dbgfs: fix memory leak when using debugfs_lookup()")
> > https://git.kernel.org/cgit/linux/kernel/git/gregkh/driver-core.git debugfs_lookup_fix
> 
> The commit is for fixing a memory leak due to missed dput() call.  The patch
> has posted originally by Greg and revised my I[1].  The revised version has
> merged in mainline during v6.0 stabilization period (1552fd3ef7db).
> 
> The problematic tree (driver-core/debugfs_lookup_fix) is based on v6.2-rc2, so
> the revised patch is already applied.  But the first version of the patch is
> applied again on the tree[2], probably by mistake, and caused double 'dput()'.
> 
> So I think the commit seems needs to be reverted.
> 
> If there is anything I missed or wrong, please let me know.
> 
> [1] https://lore.kernel.org/damon/20220902191149.112434-1-sj@kernel.org/
> [2] https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/driver-core.git/commit/?h=debugfs_lookup_fix&id=5167d3e8149e332204274910da1057e8f907d7d2

Yeah, this is my fault, sorry.  That branch/tree has not been looked at
carefully in a while, I need to refresh it properly and verify it all is
correct.  I'll drop this change as part of that work as well, sorry for
the noise.

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
