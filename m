Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 10A0B7AAAE4
	for <lists+driverdev-devel@lfdr.de>; Fri, 22 Sep 2023 09:55:41 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id E2F79421D1;
	Fri, 22 Sep 2023 07:55:38 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E2F79421D1
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Owze41Kbui30; Fri, 22 Sep 2023 07:55:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 7F984421B7;
	Fri, 22 Sep 2023 07:55:37 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7F984421B7
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 452191BF33F
 for <devel@linuxdriverproject.org>; Fri, 22 Sep 2023 07:55:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 2AA26421D1
 for <devel@linuxdriverproject.org>; Fri, 22 Sep 2023 07:55:34 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2AA26421D1
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ExmrVY0_sBpc for <devel@linuxdriverproject.org>;
 Fri, 22 Sep 2023 07:55:33 +0000 (UTC)
X-Greylist: delayed 542 seconds by postgrey-1.37 at util1.osuosl.org;
 Fri, 22 Sep 2023 07:55:33 UTC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2A814421B7
Received: from mail.tanarotla.com (mail.tanarotla.com [79.137.80.196])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 2A814421B7
 for <devel@linuxdriverproject.org>; Fri, 22 Sep 2023 07:55:33 +0000 (UTC)
Received: by mail.tanarotla.com (Postfix, from userid 1002)
 id AC7A423EC0; Fri, 22 Sep 2023 07:46:13 +0000 (UTC)
Received: by mail.tanarotla.com for <devel@linuxdriverproject.org>;
 Fri, 22 Sep 2023 07:46:08 GMT
Message-ID: <20230922064500-0.1.1o.44p8.0.4m45i59dza@tanarotla.com>
Date: Fri, 22 Sep 2023 07:46:08 GMT
From: "Michael Beutler" <michael.beutler@tanarotla.com>
To: <devel@linuxdriverproject.org>
Subject: Overview of promotional materials
X-Mailer: mail.tanarotla.com
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=tanarotla.com; s=mail; t=1695368788;
 bh=dG1/RuidtThZwc0EXu7ymmjdzif0tXuL9ZgFzgzNvj0=;
 h=Date:From:To:Subject:From;
 b=scJty4XH9jViLmr3bIcKOBJFatr2R+n+f2p26bvkxHEb8/qx2FAsitzs2PYDI09pR
 AWFry2pwI+iMngjw5jDKEoJtgPvx6DitAlb6MbOBZLecHsw2NI62gGiySNGN7J9pAx
 4IgWg3HDytko3ZHqfZntDTUFlnrmfH+kn3OISsnJ9QHXNG0zrO8dfBVR4AmQzcZtii
 Z/8o/c1u9XprOF+97zBl9rCRpTNPttBLYSCYGcfMcDuIKKvIheiR6MY5PnnJFNsgD5
 5m8T8N7y66MzDFK29ph3nmkxPCBFOqiL9IhLp0tnD5+eSPcVegfg0IIf6oe7D9UUSu
 D+4fnT3JaKxnQ==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=tanarotla.com header.i=@tanarotla.com
 header.a=rsa-sha256 header.s=mail header.b=scJty4XH
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Good morning,

Have you ever considered a stronger product differentiation among your competitors?

Combining 40 years of international experience with the creativity of our team, we are creating a full range of Point Of Sales (POS) materials that directly impact your customers' purchasing decisions.

If you are interested in this topic, please reply, and we will get in touch with you.


Kind regards
Michael Beutler
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
