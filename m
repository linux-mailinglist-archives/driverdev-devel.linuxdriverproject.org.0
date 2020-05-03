Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B27F1C2DCE
	for <lists+driverdev-devel@lfdr.de>; Sun,  3 May 2020 17:58:34 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 648768760E;
	Sun,  3 May 2020 15:43:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 5i8o6YcZ-nBZ; Sun,  3 May 2020 15:43:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 633E587582;
	Sun,  3 May 2020 15:43:20 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id AE0461BF578
 for <devel@linuxdriverproject.org>; Sun,  3 May 2020 15:43:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id A85FC87587
 for <devel@linuxdriverproject.org>; Sun,  3 May 2020 15:43:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id SYCKS-tSmGD2 for <devel@linuxdriverproject.org>;
 Sun,  3 May 2020 15:43:17 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kocurkovo.cz (mail.kocurkovo.cz [185.8.236.170])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 3B0E887582
 for <devel@driverdev.osuosl.org>; Sun,  3 May 2020 15:43:17 +0000 (UTC)
Received: by mail.kocurkovo.cz (Postfix, from userid 1000)
 id 4B75D950; Sun,  3 May 2020 17:43:13 +0200 (CEST)
DKIM-Filter: OpenDKIM Filter v2.11.0 mail.kocurkovo.cz 4B75D950
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kocurkovo.cz;
 s=mail; t=1588520593;
 bh=uYLY76daBgLejEJsam0HqY4XMyeNCKXdpr7JrpWamos=;
 h=From:To:Cc:Subject:Date:From;
 b=B7wDTNX7GvU1V8oj5ESYni99nDHUJE7YOOOCnIQgm4KL1XKDnzoZmmNsAlOtNdhx8
 IISMxyjX9trdwb7a3QIZXVTE235OxvutfIY2HHlXrQU1MSZo2Gg8ZXgP/eMd972Zf+
 30eAtrVPOzVPPQJAJ9ntVebdLz/kZpb1ZQyEbAN8=
From: Matej Dujava <mdujava@kocurkovo.cz>
To: Forest Bond <forest@alittletooquiet.net>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Subject: [PATCH v2 0/2] Early return in s_uGetTxRsvTime
Date: Sun,  3 May 2020 17:42:48 +0200
Message-Id: <1588520570-14388-1-git-send-email-mdujava@kocurkovo.cz>
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
Cc: "Frank A. Cancio Bello" <frank@generalsoftwareinc.com>,
 Stefano Brivio <sbrivio@redhat.com>, Briana Oursler <briana.oursler@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

This patch set will fix checkpatch LONG_LINE warnings and will save us
one call of bb_get_frame_time in case od !bNeedAck.

Change history:
v2: Implemented advice of ternary operator from Joe Perches <joe@perches.com>

Matej Dujava (2):
  staging: vt6655: return early if not bNeedAck
  staging: vt6655: fix LONG_LINE warning

 drivers/staging/vt6655/rxtx.c | 19 ++++++++++++-------
 1 file changed, 12 insertions(+), 7 deletions(-)

--
2.26.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
