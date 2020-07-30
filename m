Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 0105C23335E
	for <lists+driverdev-devel@lfdr.de>; Thu, 30 Jul 2020 15:48:19 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 9A32F87829;
	Thu, 30 Jul 2020 13:48:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
X-Amavis-Alert: BAD HEADER SECTION, Header field occurs more than once: "To"
	occurs 3 times
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id QJuUMxBMHeP7; Thu, 30 Jul 2020 13:48:17 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 7BA3887F92;
	Thu, 30 Jul 2020 13:48:14 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 325CA1BF47D
 for <devel@linuxdriverproject.org>; Thu, 30 Jul 2020 13:48:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 2CB6987F8E
 for <devel@linuxdriverproject.org>; Thu, 30 Jul 2020 13:48:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
X-Amavis-Alert: BAD HEADER SECTION, Header field occurs more than once: "To"
 occurs 3 times
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id e61msRLb++Gy for <devel@linuxdriverproject.org>;
 Thu, 30 Jul 2020 13:48:11 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 8CBCE87F81
 for <devel@driverdev.osuosl.org>; Thu, 30 Jul 2020 13:48:11 +0000 (UTC)
Received: from localhost (unknown [70.37.104.77])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 39D1621744;
 Thu, 30 Jul 2020 13:48:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1596116891;
 bh=0kikEbDUa3zExFt1IkWDJPeAJvE9LXEN/m7Ii0rJrs4=;
 h=Date:From:To:To:To:Cc:Cc:Cc:Subject:In-Reply-To:References:From;
 b=tjRcle+EOf6BBHSl06uPu5RwE2q2RuB+6HF5KYnOPfToGy0r63WxcpcZLYYQhgDLB
 a7Ywq0M1Th9cY/t4k5ikZ3gSwluIkz874nc+qZK3BkJVr55ZQeYFKpfUkmp2QfKLdQ
 QDU+SEfeATKG40R+BfYlCmGxK+B2UQJOYv2d1ArU=
Date: Thu, 30 Jul 2020 13:48:10 +0000
From: Sasha Levin <sashal@kernel.org>
To: Sasha Levin <sashal@kernel.org>
To: Jann Horn <jannh@google.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: Re: [PATCH v2] binder: Prevent context manager from incrementing ref 0
In-Reply-To: <20200727120424.1627555-1-jannh@google.com>
References: <20200727120424.1627555-1-jannh@google.com>
Message-Id: <20200730134811.39D1621744@mail.kernel.org>
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
Cc: devel@driverdev.osuosl.org, Mattias Nissler <mnissler@google.com>,
 stable@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi

[This is an automated email]

This commit has been processed because it contains a "Fixes:" tag
fixing commit: 457b9a6f09f0 ("Staging: android: add binder driver").

The bot has tested the following trees: v5.7.11, v5.4.54, v4.19.135, v4.14.190, v4.9.231, v4.4.231.

v5.7.11: Build OK!
v5.4.54: Build OK!
v4.19.135: Build OK!
v4.14.190: Build OK!
v4.9.231: Failed to apply! Possible dependencies:
    14db31814a9a ("binder: Deal with contexts in debugfs")
    19c987241ca1 ("binder: separate out binder_alloc functions")
    1b77e9dcc3da ("ANDROID: binder: remove proc waitqueue")
    342e5c90b601 ("binder: Support multiple context managers")
    408c68b17aea ("ANDROID: binder: push new transactions to waiting threads.")
    4bfac80af3a6 ("binder: Add extra size to allocator")
    512cf465ee01 ("binder: fix use-after-free in binder_transaction()")
    7980240b6d63 ("binder: Add support for scatter-gather")
    9630fe8839ba ("binder: introduce locking helper functions")
    a056af42032e ("binder: Refactor binder_transact()")
    ac4812c5ffbb ("binder: Support multiple /dev instances")
    def95c73567d ("binder: Add support for file-descriptor arrays")
    fdfb4a99b6ab ("binder: separate binder allocator structure from binder proc")
    feba3900cabb ("binder: Split flat_binder_object")

v4.4.231: Failed to apply! Possible dependencies:
    14db31814a9a ("binder: Deal with contexts in debugfs")
    19c987241ca1 ("binder: separate out binder_alloc functions")
    1b77e9dcc3da ("ANDROID: binder: remove proc waitqueue")
    212265e5ad72 ("android: binder: More offset validation")
    342e5c90b601 ("binder: Support multiple context managers")
    408c68b17aea ("ANDROID: binder: push new transactions to waiting threads.")
    4bfac80af3a6 ("binder: Add extra size to allocator")
    512cf465ee01 ("binder: fix use-after-free in binder_transaction()")
    7980240b6d63 ("binder: Add support for scatter-gather")
    83050a4e2197 ("android: drivers: Avoid debugfs race in binder")
    9630fe8839ba ("binder: introduce locking helper functions")
    a056af42032e ("binder: Refactor binder_transact()")
    a906d6931f3c ("android: binder: Sanity check at binder ioctl")
    ac4812c5ffbb ("binder: Support multiple /dev instances")
    def95c73567d ("binder: Add support for file-descriptor arrays")
    feba3900cabb ("binder: Split flat_binder_object")


NOTE: The patch will not be queued to stable trees until it is upstream.

How should we proceed with this patch?

-- 
Thanks
Sasha
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
