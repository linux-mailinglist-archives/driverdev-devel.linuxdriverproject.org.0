Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id DA9D0DD1EC
	for <lists+driverdev-devel@lfdr.de>; Sat, 19 Oct 2019 00:07:20 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id E739388800;
	Fri, 18 Oct 2019 22:07:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 9H2RdBBT5I2b; Fri, 18 Oct 2019 22:07:17 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id B81CC8710D;
	Fri, 18 Oct 2019 22:07:16 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 64A5A1BF5F4
 for <devel@linuxdriverproject.org>; Fri, 18 Oct 2019 22:07:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 621C486D27
 for <devel@linuxdriverproject.org>; Fri, 18 Oct 2019 22:07:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Ms4CjajPNpk4 for <devel@linuxdriverproject.org>;
 Fri, 18 Oct 2019 22:06:59 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id EFD4286C9E
 for <devel@driverdev.osuosl.org>; Fri, 18 Oct 2019 22:06:59 +0000 (UTC)
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 2C8B5222D2;
 Fri, 18 Oct 2019 22:06:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1571436419;
 bh=fMBUQEOmoxly6xWm/iIwvO3nP3iN5L5jNyhwQBwg8xI=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=nvcZuLtoQqeYlfg8I1EDXqPxPBbLMjYo0mXixoj3dP4yAotVM9d9vb40xJP4Lsq17
 H9cHSdi/KqGu9dVhcJMrpet/Q6en8D7d1/D8dGf6kIEAcDIRA7Jt7LWhyjrwsIuVsR
 yoEgqzakOkuseCHkBG4w7dyvBXi/rlNAytTO20QE=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 4.19 062/100] staging: rtl8188eu: fix null dereference
 when kzalloc fails
Date: Fri, 18 Oct 2019 18:04:47 -0400
Message-Id: <20191018220525.9042-62-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191018220525.9042-1-sashal@kernel.org>
References: <20191018220525.9042-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
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
Cc: Sasha Levin <sashal@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, devel@driverdev.osuosl.org,
 Connor Kuehl <connor.kuehl@canonical.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

From: Connor Kuehl <connor.kuehl@canonical.com>

[ Upstream commit 955c1532a34305f2f780b47f0c40cc7c65500810 ]

If kzalloc() returns NULL, the error path doesn't stop the flow of
control from entering rtw_hal_read_chip_version() which dereferences the
null pointer. Fix this by adding a 'goto' to the error path to more
gracefully handle the issue and avoid proceeding with initialization
steps that we're no longer prepared to handle.

Also update the debug message to be more consistent with the other debug
messages in this function.

Addresses-Coverity: ("Dereference after null check")

Signed-off-by: Connor Kuehl <connor.kuehl@canonical.com>
Link: https://lore.kernel.org/r/20190927214415.899-1-connor.kuehl@canonical.com
Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/staging/rtl8188eu/os_dep/usb_intf.c | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/rtl8188eu/os_dep/usb_intf.c b/drivers/staging/rtl8188eu/os_dep/usb_intf.c
index dfee6985efa61..8ef7b44b6abc1 100644
--- a/drivers/staging/rtl8188eu/os_dep/usb_intf.c
+++ b/drivers/staging/rtl8188eu/os_dep/usb_intf.c
@@ -348,8 +348,10 @@ static struct adapter *rtw_usb_if1_init(struct dvobj_priv *dvobj,
 	}
 
 	padapter->HalData = kzalloc(sizeof(struct hal_data_8188e), GFP_KERNEL);
-	if (!padapter->HalData)
-		DBG_88E("cant not alloc memory for HAL DATA\n");
+	if (!padapter->HalData) {
+		DBG_88E("Failed to allocate memory for HAL data\n");
+		goto free_adapter;
+	}
 
 	/* step read_chip_version */
 	rtw_hal_read_chip_version(padapter);
-- 
2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
