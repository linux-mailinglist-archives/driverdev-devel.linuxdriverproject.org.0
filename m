Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id E98811D1ECE
	for <lists+driverdev-devel@lfdr.de>; Wed, 13 May 2020 21:16:02 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id A75AF876BB;
	Wed, 13 May 2020 19:16:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 3pjFVlU7kKsP; Wed, 13 May 2020 19:16:01 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id E930A87645;
	Wed, 13 May 2020 19:15:59 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 607A71BF321
 for <devel@linuxdriverproject.org>; Wed, 13 May 2020 19:15:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 5D4BC88512
 for <devel@linuxdriverproject.org>; Wed, 13 May 2020 19:15:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id BCkCK0LMMtS3 for <devel@linuxdriverproject.org>;
 Wed, 13 May 2020 19:15:57 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kocurkovo.cz (mail.kocurkovo.cz [185.8.236.170])
 by whitealder.osuosl.org (Postfix) with ESMTPS id E9E51884D9
 for <devel@driverdev.osuosl.org>; Wed, 13 May 2020 19:15:56 +0000 (UTC)
Received: by mail.kocurkovo.cz (Postfix, from userid 1000)
 id B580514A2; Wed, 13 May 2020 21:15:52 +0200 (CEST)
DKIM-Filter: OpenDKIM Filter v2.11.0 mail.kocurkovo.cz B580514A2
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kocurkovo.cz;
 s=mail; t=1589397352;
 bh=osBZwaS/V/U2ht3ZNx2/3ZIGbRNWDA7p//Wi6GqI7Eo=;
 h=From:To:Cc:Subject:Date:From;
 b=wLrqAV70b/n3WvWQeOMjpsQvBoBYI7r7zqgJkkJMY2063NZWFMmoHvJIvp2eppjh5
 kjM/DwWAJGOMscJbk98Wr8ZReBSl7oCNjWTmaNJKvmSZ0eoUJxdC92Vd9BCqv8xfwY
 UtnbUT+BrrOzcLYeJ+/EutFq7Xf9JD84n0MWSlXk=
From: Matej Dujava <mdujava@kocurkovo.cz>
To: Forest Bond <forest@alittletooquiet.net>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, devel@driverdev.osuosl.org
Subject: [PATCH v3 0/2] staging: vt6656: vt6655: cleaning Makefile
Date: Wed, 13 May 2020 21:15:49 +0200
Message-Id: <1589397351-24655-1-git-send-email-mdujava@kocurkovo.cz>
X-Mailer: git-send-email 1.8.3.1
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
Cc: linux-kernel@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

This patchset will remove unused definitions of C Macros, reorder variable
definition in Makefiles and increase indentation to match visual block.

Macros are removed from vt665x/Makefile and vt6655/device_main.c.

Indentation is fixed in vt6655/Makefile.

Order of variable declaration is changed in vt6656/Makefile.

---
v1: Initial patch
v2: This patch was split from original bigger patch
v3: Added more info about what and why it's removed

Matej Dujava (2):
  staging: vt6656: vt6655: removing unused macros definition Makefiles
  staging: vt6655: vt6656: change order of makefile variable definitions

 drivers/staging/vt6655/Makefile      | 27 ++++++++++++---------------
 drivers/staging/vt6655/device_main.c |  1 -
 drivers/staging/vt6656/Makefile      |  7 ++-----
 3 files changed, 14 insertions(+), 21 deletions(-)

-- 
2.26.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
