Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 778AC1A27F7
	for <lists+driverdev-devel@lfdr.de>; Wed,  8 Apr 2020 19:30:07 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 857A88800F;
	Wed,  8 Apr 2020 17:30:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id OSDYLa3tq42a; Wed,  8 Apr 2020 17:30:04 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 8FF9187E95;
	Wed,  8 Apr 2020 17:30:01 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 6BB8A1BF228
 for <devel@linuxdriverproject.org>; Wed,  8 Apr 2020 17:29:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 65D2E20484
 for <devel@linuxdriverproject.org>; Wed,  8 Apr 2020 17:29:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id TdIaNFZcy1+P for <devel@linuxdriverproject.org>;
 Wed,  8 Apr 2020 17:29:57 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from bombadil.infradead.org (bombadil.infradead.org
 [198.137.202.133])
 by silver.osuosl.org (Postfix) with ESMTPS id 69F55203E7
 for <devel@driverdev.osuosl.org>; Wed,  8 Apr 2020 17:29:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20170209; h=Content-Transfer-Encoding:
 Content-Type:MIME-Version:Date:Message-ID:Subject:From:Cc:To:Sender:Reply-To:
 Content-ID:Content-Description:In-Reply-To:References;
 bh=AIkLRB9tu9cJ1QlOgikaPxAEDOuOfsDdcUkPvhqx0SM=; b=hyeDAxIEzdJhFkIc48CSeTBtMl
 M3LpwqPXHD096Ch/f7BZnLN3lXAIJ2c0ZAySyCKjMt7HIrSfQhJSiz7ud8lcnouY+Dj5YfyY6Fzu0
 sk8mOdiHPwtLJ2i9fXz8kFAZQ55elCJbCgZu4/zIspouXkOyz82SKPcLDQyYuIOIhBudIFhrAI0KF
 gT4BKnwMH2tx1UZSeVDrcRzXLalzLuxh/chK9zyWfaFMR7Wm2UfSbyjD+Ebdh4bAegWvHefspg2tE
 at3mBAUBlZhh//ikFp7Z1ROs18fSOyfZiecGBTjbIGzVbEr4MLvAMLm8wKwkofg9tupC1TXSwQsj2
 DTSffYeA==;
Received: from [2601:1c0:6280:3f0::19c2]
 by bombadil.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMEWQ-0006om-Hi; Wed, 08 Apr 2020 17:29:54 +0000
To: LKML <linux-kernel@vger.kernel.org>,
 "linux-doc@vger.kernel.org" <linux-doc@vger.kernel.org>,
 "devel@driverdev.osuosl.org" <devel@driverdev.osuosl.org>
From: Randy Dunlap <rdunlap@infradead.org>
Subject: [PATCH] Documentation: android: binderfs: add 'stats' mount option
Message-ID: <baa0aa81-007d-af46-16a5-91fead0bd1b9@infradead.org>
Date: Wed, 8 Apr 2020 10:29:50 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
Content-Language: en-US
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
Cc: Jonathan Corbet <corbet@lwn.net>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 "linux-doc@vger.kernel.org" <linux-doc@vger.kernel.org>,
 Hridya Valsaraju <hridya@google.com>,
 Christian Brauner <christian.brauner@ubuntu.com>,
 Christian Brauner <christian@brauner.io>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

From: Randy Dunlap <rdunlap@infradead.org>

Add documentation of the binderfs 'stats' mount option.

Description taken from the commit message.

Fixes: f00834518ed3 ("binder: add a mount option to show global stats")
Signed-off-by: Randy Dunlap <rdunlap@infradead.org>
Cc: Hridya Valsaraju <hridya@google.com>
Cc: Christian Brauner <christian.brauner@ubuntu.com>
Cc: Christian Brauner <christian@brauner.io>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: devel@driverdev.osuosl.org
---
 Documentation/admin-guide/binderfs.rst |    6 ++++++
 1 file changed, 6 insertions(+)

--- linux-next-20200408.orig/Documentation/admin-guide/binderfs.rst
+++ linux-next-20200408/Documentation/admin-guide/binderfs.rst
@@ -33,6 +33,12 @@ max
   a per-instance limit. If ``max=<count>`` is set then only ``<count>`` number
   of binder devices can be allocated in this binderfs instance.
 
+stats
+  Using ``stats=global`` enables global binder statistics.
+  ``stats=global`` is only available for a binderfs instance mounted in the
+  initial user namespace. An attempt to use the option to mount a binderfs
+  instance in another user namespace will return a permission error.
+
 Allocating binder Devices
 -------------------------
 

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
