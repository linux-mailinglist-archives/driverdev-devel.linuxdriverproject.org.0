Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F9922991BE
	for <lists+driverdev-devel@lfdr.de>; Mon, 26 Oct 2020 17:02:56 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id E47EB867D1;
	Mon, 26 Oct 2020 16:02:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id MWQ9uccmxKGg; Mon, 26 Oct 2020 16:02:54 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 800AE866A3;
	Mon, 26 Oct 2020 16:02:53 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 7EADA1BF40E
 for <devel@linuxdriverproject.org>; Mon, 26 Oct 2020 16:02:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 7B9C085DF5
 for <devel@linuxdriverproject.org>; Mon, 26 Oct 2020 16:02:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id IU4ZkDIrfeqX for <devel@linuxdriverproject.org>;
 Mon, 26 Oct 2020 16:02:50 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 6CD9685D6F
 for <devel@driverdev.osuosl.org>; Mon, 26 Oct 2020 16:02:50 +0000 (UTC)
Received: from localhost.localdomain (unknown [192.30.34.233])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id BF89222265;
 Mon, 26 Oct 2020 16:02:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1603728170;
 bh=/ep5fRQ3cXsDaglk7g3bLJ2D08WYwFuAAN0xUQbcjo0=;
 h=From:To:Cc:Subject:Date:From;
 b=BTfvdDFKrwTYELUJZSZBsQIfvx4s0TDaVG/4ZrmmwKB5sMr/Z8JXz09mTECaMAGTn
 VRloV8txZkHw6HZRgRkqex/1B22gU7NcZZQdQgROonzDNoPxnwzyNQ7Ch8MpwvVjI1
 sCDXITzHfQzmFMwaJa3z++yuz5B/NSRHlgfv33Xk=
From: Arnd Bergmann <arnd@kernel.org>
To: =?UTF-8?q?J=C3=A9r=C3=B4me=20Pouiller?= <jerome.pouiller@silabs.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Nathan Chancellor <natechancellor@gmail.com>,
 Nick Desaulniers <ndesaulniers@google.com>
Subject: [PATCH] staging: wfx: avoid uninitialized variable use
Date: Mon, 26 Oct 2020 17:02:22 +0100
Message-Id: <20201026160243.3705030-1-arnd@kernel.org>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
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
Cc: devel@driverdev.osuosl.org, clang-built-linux@googlegroups.com,
 Dan Carpenter <dan.carpenter@oracle.com>, Arnd Bergmann <arnd@arndb.de>,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

From: Arnd Bergmann <arnd@arndb.de>

Move the added check of the 'band' variable after the
initialization. Pointed out by clang with

drivers/staging/wfx/data_tx.c:34:19: warning: variable 'band' is uninitialized when used here [-Wuninitialized]
        if (rate->idx >= band->n_bitrates) {

Fixes: 868fd970e187 ("staging: wfx: improve robustness of wfx_get_hw_rate()")
Signed-off-by: Arnd Bergmann <arnd@arndb.de>
---
 drivers/staging/wfx/data_tx.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/wfx/data_tx.c b/drivers/staging/wfx/data_tx.c
index 41f6a604a697..36b36ef39d05 100644
--- a/drivers/staging/wfx/data_tx.c
+++ b/drivers/staging/wfx/data_tx.c
@@ -31,13 +31,13 @@ static int wfx_get_hw_rate(struct wfx_dev *wdev,
 		}
 		return rate->idx + 14;
 	}
+	// WFx only support 2GHz, else band information should be retrieved
+	// from ieee80211_tx_info
+	band = wdev->hw->wiphy->bands[NL80211_BAND_2GHZ];
 	if (rate->idx >= band->n_bitrates) {
 		WARN(1, "wrong rate->idx value: %d", rate->idx);
 		return -1;
 	}
-	// WFx only support 2GHz, else band information should be retrieved
-	// from ieee80211_tx_info
-	band = wdev->hw->wiphy->bands[NL80211_BAND_2GHZ];
 	return band->bitrates[rate->idx].hw_value;
 }
 
-- 
2.27.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
