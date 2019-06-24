Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id B83A651C33
	for <lists+driverdev-devel@lfdr.de>; Mon, 24 Jun 2019 22:21:56 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 2378985A00;
	Mon, 24 Jun 2019 20:21:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id q8VUDE9IWGx1; Mon, 24 Jun 2019 20:21:54 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id E6811852F6;
	Mon, 24 Jun 2019 20:21:53 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 64D481BF3E6
 for <devel@linuxdriverproject.org>; Mon, 24 Jun 2019 20:21:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 61CCA86864
 for <devel@linuxdriverproject.org>; Mon, 24 Jun 2019 20:21:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id X6nrCVJWsNEe for <devel@linuxdriverproject.org>;
 Mon, 24 Jun 2019 20:21:51 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id E8BAA865B8
 for <devel@driverdev.osuosl.org>; Mon, 24 Jun 2019 20:21:51 +0000 (UTC)
Received: from localhost (unknown [167.220.24.221])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 6755E20645;
 Mon, 24 Jun 2019 20:21:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1561407711;
 bh=/rV1TlvYuXOK2sFci2/p6W21rW/APz4/kUsj3EobUV4=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=2VPaEOiYLx/B1U7xl+3URPJW/PCnea+Hoo4lmR8kq/6n244//CX5FcosNOr1Dj3oq
 kZ/WOwKR+mt0aTbDmzXkGDY61uNn7Pw8n0E1ZmPY1FmKSwRlrgS69rOqWLgsC9nNQT
 I7qwRnBg2lc/TFX9Q7IzCpvfO5IQUktLdI8ucdSE=
Date: Mon, 24 Jun 2019 16:21:50 -0400
From: Sasha Levin <sashal@kernel.org>
To: Ajay Kaher <akaher@vmware.com>
Subject: Re: [PATCH v4 0/3] [v4.9.y] coredump: fix race condition between
 mmget_not_zero()/get_task_mm() and core dumping
Message-ID: <20190624202150.GC3881@sasha-vm>
References: <1561410186-3919-1-git-send-email-akaher@vmware.com>
 <1561410186-3919-4-git-send-email-akaher@vmware.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1561410186-3919-4-git-send-email-akaher@vmware.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
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
Cc: mhocko@suse.com, peterx@redhat.com, matanb@mellanox.com, linux-mm@kvack.org,
 amakhalov@vmware.com, sean.hefty@intel.com, srivatsab@vmware.com,
 aarcange@redhat.com, linux-rdma@vger.kernel.org, rppt@linux.ibm.com,
 dledford@redhat.com, jgg@mellanox.com, riandrews@android.com,
 hal.rosenstock@gmail.com, devel@driverdev.osuosl.org, jannh@google.com,
 leonro@mellanox.com, jglisse@redhat.com, viro@zeniv.linux.org.uk,
 yishaih@mellanox.com, oleg@redhat.com, stable@vger.kernel.org,
 linux-kernel@vger.kernel.org, arve@android.com, linux-fsdevel@vger.kernel.org,
 akpm@linux-foundation.org, mike.kravetz@oracle.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Tue, Jun 25, 2019 at 02:33:06AM +0530, Ajay Kaher wrote:
>coredump: fix race condition between mmget_not_zero()/get_task_mm()
>and core dumping
>
>[PATCH v4 1/3]:
>Backporting of commit 04f5866e41fb70690e28397487d8bd8eea7d712a upstream.
>
>[PATCH v4 2/3]:
>Extension of commit 04f5866e41fb to fix the race condition between
>get_task_mm() and core dumping for IB->mlx4 and IB->mlx5 drivers.
>
>[PATCH v4 3/3]
>Backporting of commit 59ea6d06cfa9247b586a695c21f94afa7183af74 upstream.
>
>[diff from v3]:
>- added [PATCH v4 3/3]

Why do all the patches have the same subject line?

I guess it's correct for the first one, but can you explain what's up
with #2 and #3?

If the second one isn't upstream, please explain in detail why not and
how 4.9 differs from upstream so that it requires a custom backport.

The third one just looks like a different patch altogether with a wrong
subject line?

--
Thanks,
Sasha
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
