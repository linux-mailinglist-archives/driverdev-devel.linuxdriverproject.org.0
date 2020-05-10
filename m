Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 7841A1CCA1D
	for <lists+driverdev-devel@lfdr.de>; Sun, 10 May 2020 12:13:47 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id EECB986519;
	Sun, 10 May 2020 10:13:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id lZJw-mTnDmif; Sun, 10 May 2020 10:13:45 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 5158786529;
	Sun, 10 May 2020 10:13:44 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 67B211BF3EC
 for <devel@linuxdriverproject.org>; Sun, 10 May 2020 10:13:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 5D6892039B
 for <devel@linuxdriverproject.org>; Sun, 10 May 2020 10:13:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id n4rU4luY7BHs for <devel@linuxdriverproject.org>;
 Sun, 10 May 2020 10:13:40 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kocurkovo.cz (mail.kocurkovo.cz [185.8.236.170])
 by silver.osuosl.org (Postfix) with ESMTPS id D7D912035D
 for <devel@driverdev.osuosl.org>; Sun, 10 May 2020 10:13:39 +0000 (UTC)
Received: by mail.kocurkovo.cz (Postfix, from userid 1000)
 id 4BB873EC5; Sun, 10 May 2020 12:13:36 +0200 (CEST)
DKIM-Filter: OpenDKIM Filter v2.11.0 mail.kocurkovo.cz 4BB873EC5
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kocurkovo.cz;
 s=mail; t=1589105616;
 bh=E0i6v1PLlG/Dpi68kRCTMA5zGexAmRdwWxCOCY2+Z6k=;
 h=From:To:Cc:Subject:Date:From;
 b=uJSNVAOsVrUbMTQN6cY0sZqEwH3GH+7nEhUHe6wSEuoXRgHZFDq0lpqOZsSVpQbCp
 ss9pFyUuFBOwCI3u5dznvHAX6dmZrRahZusFP1SNlBMs/jIEha6kzSDxt44xt+qFFY
 lBWTDK6wg7w8Rb/3sLOL/UMz/k5ugwmtlBL8chVw=
From: Matej Dujava <mdujava@kocurkovo.cz>
To: Forest Bond <forest@alittletooquiet.net>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, devel@driverdev.osuosl.org
Subject: [PATCH v2 0/2] staging: vt6656: vt6655: cleaning Makefile
Date: Sun, 10 May 2020 12:13:33 +0200
Message-Id: <1589105615-22271-1-git-send-email-mdujava@kocurkovo.cz>
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

This patchset will remove unused definitions of C Macros, reorder variable definition and increase indentation to match visual block.

---
v2: spliting original patch to 2 separate patches

Matej Dujava (2):
  staging: vt6656: vt6655: clean Makefiles
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
