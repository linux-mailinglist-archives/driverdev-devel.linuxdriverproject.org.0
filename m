Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id A35F6DD8CD
	for <lists+driverdev-devel@lfdr.de>; Sat, 19 Oct 2019 15:36:29 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 7B1932156C;
	Sat, 19 Oct 2019 13:36:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
X-Amavis-Alert: BAD HEADER SECTION, Header field occurs more than once: "To"
	occurs 3 times
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 2Eyc6wFzJbBP; Sat, 19 Oct 2019 13:36:27 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 545B021551;
	Sat, 19 Oct 2019 13:36:26 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 6EA431BF342
 for <devel@linuxdriverproject.org>; Sat, 19 Oct 2019 13:36:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 6900087D5E
 for <devel@linuxdriverproject.org>; Sat, 19 Oct 2019 13:36:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
X-Amavis-Alert: BAD HEADER SECTION, Header field occurs more than once: "To"
 occurs 3 times
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id jvFyvEFJahex for <devel@linuxdriverproject.org>;
 Sat, 19 Oct 2019 13:36:23 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 52AC787D57
 for <devel@driverdev.osuosl.org>; Sat, 19 Oct 2019 13:36:23 +0000 (UTC)
Received: from localhost (unknown [40.117.208.15])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id E7D3920663;
 Sat, 19 Oct 2019 13:36:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1571492183;
 bh=iffhq13rdIj/1C9BeUN6hia1T4MXFAr+Q2cWfWWBAeg=;
 h=Date:From:To:To:To:Cc:Cc:Cc:Subject:In-Reply-To:References:From;
 b=esn2z/dsaLwKs5o5PYtV/3Glev802q8N9IUtXM6jdbCp4XcCXkhajS44ADIOw7EfA
 SUcoQaQLiO/1EIekP5JjyYvj5OswDWDOzPKBpT2NZZ1Qa/Age+Fnx6VomWRWGPrOTe
 nyB5iKiAqXhqfy809hVFQPE1SMqfYKy9WArJEs+w=
Date: Sat, 19 Oct 2019 13:36:22 +0000
From: Sasha Levin <sashal@kernel.org>
To: Sasha Levin <sashal@kernel.org>
To: Jann Horn <jannh@google.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
Subject: Re: [PATCH 3/3] binder: Handle start==NULL in
 binder_update_page_range()
In-Reply-To: <20191018205631.248274-3-jannh@google.com>
References: <20191018205631.248274-3-jannh@google.com>
Message-Id: <20191019133622.E7D3920663@mail.kernel.org>
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
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
 stable@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi,

[This is an automated email]

This commit has been processed because it contains a "Fixes:" tag,
fixing commit: 457b9a6f09f01 Staging: android: add binder driver.

The bot has tested the following trees: v5.3.6, v4.19.79, v4.14.149, v4.9.196, v4.4.196.

v5.3.6: Build OK!
v4.19.79: Build OK!
v4.14.149: Build OK!
v4.9.196: Failed to apply! Possible dependencies:
    0594f58dbd954 ("userfaultfd: non-cooperative: avoid MADV_DONTNEED race condition")
    05ce77249d506 ("userfaultfd: non-cooperative: add madvise() event for MADV_DONTNEED request")
    0c972a05cde66 ("binder: move binder_alloc to separate file")
    19c987241ca12 ("binder: separate out binder_alloc functions")
    342e5c90b6013 ("binder: Support multiple context managers")
    72f87654c6969 ("userfaultfd: non-cooperative: add mremap() event")
    7980240b6d63e ("binder: Add support for scatter-gather")
    893e26e61d04e ("userfaultfd: non-cooperative: Add fork() event")
    9cd75c3cd4c3d ("userfaultfd: non-cooperative: add ability to report non-PF events from uffd descriptor")
    a056af42032e5 ("binder: Refactor binder_transact()")
    def95c73567df ("binder: Add support for file-descriptor arrays")
    ecf1385d72f04 ("mm: drop unused argument of zap_page_range()")
    fdfb4a99b6ab8 ("binder: separate binder allocator structure from binder proc")
    feba3900cabb8 ("binder: Split flat_binder_object")

v4.4.196: Failed to apply! Possible dependencies:
    0c972a05cde66 ("binder: move binder_alloc to separate file")
    19c987241ca12 ("binder: separate out binder_alloc functions")
    1e133ab296f3f ("s390/mm: split arch/s390/mm/pgtable.c")
    212265e5ad726 ("android: binder: More offset validation")
    342e5c90b6013 ("binder: Support multiple context managers")
    3c2c126a675bd ("s390/mm: remove unnecessary indirection with pgste_update_all")
    7980240b6d63e ("binder: Add support for scatter-gather")
    a056af42032e5 ("binder: Refactor binder_transact()")
    a906d6931f3cc ("android: binder: Sanity check at binder ioctl")
    def95c73567df ("binder: Add support for file-descriptor arrays")
    ebde765c0e85f ("s390/mm: uninline ptep_xxx functions from pgtable.h")
    ecf1385d72f04 ("mm: drop unused argument of zap_page_range()")
    fdfb4a99b6ab8 ("binder: separate binder allocator structure from binder proc")
    feba3900cabb8 ("binder: Split flat_binder_object")


NOTE: The patch will not be queued to stable trees until it is upstream.

How should we proceed with this patch?

-- 
Thanks,
Sasha
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
