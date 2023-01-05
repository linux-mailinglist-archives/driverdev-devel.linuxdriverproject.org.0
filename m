Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id EBCD165F179
	for <lists+driverdev-devel@lfdr.de>; Thu,  5 Jan 2023 17:54:34 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6CDE660A6C;
	Thu,  5 Jan 2023 16:54:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6CDE660A6C
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id RD6wSQro6_C3; Thu,  5 Jan 2023 16:54:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 19EC7607F4;
	Thu,  5 Jan 2023 16:54:32 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 19EC7607F4
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id ACF4A1BF31E
 for <devel@linuxdriverproject.org>; Thu,  5 Jan 2023 16:54:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 872844091E
 for <devel@linuxdriverproject.org>; Thu,  5 Jan 2023 16:54:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 872844091E
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id C7XtW7g9RaYT for <devel@linuxdriverproject.org>;
 Thu,  5 Jan 2023 16:54:27 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5D4264091B
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 5D4264091B
 for <devel@driverdev.osuosl.org>; Thu,  5 Jan 2023 16:54:27 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 4526761B8D;
 Thu,  5 Jan 2023 16:54:26 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E97B1C433D2;
 Thu,  5 Jan 2023 16:54:24 +0000 (UTC)
From: SeongJae Park <sj@kernel.org>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: Re: [driver-core:debugfs_lookup_fix] [mm/damon/dbgfs] ff25f87cfc:
 kernel_BUG_at_lib/list_debug.c
Date: Thu,  5 Jan 2023 16:54:23 +0000
Message-Id: <20230105165423.3221-1-sj@kernel.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <Y7aeNRf3TyTufC8L@kroah.com>
References: 
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1672937665;
 bh=n2kMHDliaAZWCMeqSunat1mUVNB+pE0uEb3Yf7pq5UY=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=ueRSNc0HAV9M3m/AOphjY+CVwANJuketclXLKQ7wfqTHXQ20tcNRf8N6PmgoPqizq
 49G6ZE2C9QbaVTz/ZqxxGBI+wRh4Z9MVPGo4gw56dkEALok/7RWrRYca3R3pjZWZBV
 HNKI8Yvzr9wfiIfX2KN5xIHyslq9uvfG7zqTX9lCeo9+VE2Zvt9vHllCOVIATkpV2I
 Bi9tnwyg6ygv9rntn6HbDB1pbzuxRxZFC3I6fyKJezZa1SitXvJC/unlyMGdaXa6Ba
 OyV4TVir3bQNyv/oayJN3rCQ9x9CoyUfXMiuIQ1ElElyqM6quNL7RNKTvnlj1TxwYY
 QvTZBoPLcRYEg==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=ueRSNc0H
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
 damon@lists.linux.dev, linux-mm@kvack.org,
 kernel test robot <oliver.sang@intel.com>, oe-lkp@lists.linux.dev,
 Andrew Morton <akpm@linux-foundation.org>, stable <stable@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Thu, 5 Jan 2023 10:53:57 +0100 Greg Kroah-Hartman <gregkh@linuxfoundation.org> wrote:

> On Wed, Jan 04, 2023 at 06:35:39PM +0000, SeongJae Park wrote:
> > Hello,
> > 
> > On Tue, 3 Jan 2023 21:16:09 +0800 kernel test robot <oliver.sang@intel.com> wrote:
> > 
> > > [-- Attachment #1: Type: text/plain, Size: 7528 bytes --]
> > > 
> > > 
> > > Greeting,
> > > 
> > > FYI, we noticed kernel_BUG_at_lib/list_debug.c due to commit (built with gcc-11):
> > 
> > Thank you for the report!
> > 
> > > 
> > > commit: ff25f87cfcfc34ebe652987f2a7beb184762785b ("mm/damon/dbgfs: fix memory leak when using debugfs_lookup()")
> > > https://git.kernel.org/cgit/linux/kernel/git/gregkh/driver-core.git debugfs_lookup_fix
> > 
> > The commit is for fixing a memory leak due to missed dput() call.  The patch
> > has posted originally by Greg and revised my I[1].  The revised version has
> > merged in mainline during v6.0 stabilization period (1552fd3ef7db).
> > 
> > The problematic tree (driver-core/debugfs_lookup_fix) is based on v6.2-rc2, so
> > the revised patch is already applied.  But the first version of the patch is
> > applied again on the tree[2], probably by mistake, and caused double 'dput()'.
> > 
> > So I think the commit seems needs to be reverted.
> > 
> > If there is anything I missed or wrong, please let me know.
> > 
> > [1] https://lore.kernel.org/damon/20220902191149.112434-1-sj@kernel.org/
> > [2] https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/driver-core.git/commit/?h=debugfs_lookup_fix&id=5167d3e8149e332204274910da1057e8f907d7d2
> 
> Yeah, this is my fault, sorry.  That branch/tree has not been looked at
> carefully in a while, I need to refresh it properly and verify it all is
> correct.  I'll drop this change as part of that work as well, sorry for
> the noise.

No problem, I'm glad to help! :)


Thanks,
SJ

> 
> greg k-h
> 
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
