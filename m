Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id B5313221AD7
	for <lists+driverdev-devel@lfdr.de>; Thu, 16 Jul 2020 05:30:55 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id D9B3088E72;
	Thu, 16 Jul 2020 03:30:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id rf4-DZXV-CUB; Thu, 16 Jul 2020 03:30:53 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id C1E1E88E49;
	Thu, 16 Jul 2020 03:30:52 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 930821BF973
 for <devel@linuxdriverproject.org>; Thu, 16 Jul 2020 03:30:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 8FD1088E49
 for <devel@linuxdriverproject.org>; Thu, 16 Jul 2020 03:30:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ICTyE0M_RtOd for <devel@linuxdriverproject.org>;
 Thu, 16 Jul 2020 03:30:50 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 2BCB688E5B
 for <devel@driverdev.osuosl.org>; Thu, 16 Jul 2020 03:30:50 +0000 (UTC)
Received: from sol.localdomain (c-107-3-166-239.hsd1.ca.comcast.net
 [107.3.166.239])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 9433220663;
 Thu, 16 Jul 2020 03:30:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1594870250;
 bh=ikmPWI8MAxfltvRswHekPbDid18TOw8D1FrTV++qoHM=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=ftG/dT0uCBDXZCXsbDz6ZLWmgFVO5Hfu9oCpJ2P2Hj7t/8PO1Ihi5lbTIw/yHzMhN
 Cx7YZn51zJpKNDe8bRLO52+Ejg07its1yEMp+il9Z4IInXDhsqoPlOQVrN1Slv3jfX
 u5zEiFR3ssQIcAWgDq8v4Kj4oD4wtwQMDxncESco=
Date: Wed, 15 Jul 2020 20:30:48 -0700
From: Eric Biggers <ebiggers@kernel.org>
To: Suren Baghdasaryan <surenb@google.com>
Subject: Re: [PATCH 1/1] staging: android: ashmem: Fix lockdep warning for
 write operation
Message-ID: <20200716033048.GG1167@sol.localdomain>
References: <20200716024527.4009170-1-surenb@google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200716024527.4009170-1-surenb@google.com>
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
Cc: devel@driverdev.osuosl.org, hdanton@sina.com, kernel-team@android.com,
 tkjos@android.com, linux-mm@kvack.org, gregkh@linuxfoundation.org,
 linux-kernel@vger.kernel.org, mhocko@kernel.org, hridya@google.com,
 arve@android.com, joel@joelfernandes.org, maco@android.com,
 christian@brauner.io
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Wed, Jul 15, 2020 at 07:45:27PM -0700, Suren Baghdasaryan wrote:
> syzbot report [1] describes a deadlock when write operation against an
> ashmem fd executed at the time when ashmem is shrinking its cache results
> in the following lock sequence:
> 
> Possible unsafe locking scenario:
> 
>         CPU0                    CPU1
>         ----                    ----
>    lock(fs_reclaim);
>                                 lock(&sb->s_type->i_mutex_key#13);
>                                 lock(fs_reclaim);
>    lock(&sb->s_type->i_mutex_key#13);
> 
> kswapd takes fs_reclaim and then inode_lock while generic_perform_write
> takes inode_lock and then fs_reclaim. However ashmem does not support
> writing into backing shmem with a write syscall. The only way to change
> its content is to mmap it and operate on mapped memory. Therefore the race
> that lockdep is warning about is not valid. Resolve this by introducing a
> separate lockdep class for the backing shmem inodes.
> 
> [1]: https://lkml.kernel.org/lkml/0000000000000b5f9d059aa2037f@google.com/
> 
> Signed-off-by: Suren Baghdasaryan <surenb@google.com>

Please add proper tags:

Reported-by: syzbot+7a0d9d0b26efefe61780@syzkaller.appspotmail.com
Fixes: ...
Cc: stable@vger.kernel.org


The Reported-by tag to use was given in the original syzbot report.

- Eric
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
