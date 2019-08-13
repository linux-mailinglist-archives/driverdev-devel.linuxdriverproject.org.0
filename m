Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D66D8B91A
	for <lists+driverdev-devel@lfdr.de>; Tue, 13 Aug 2019 14:48:47 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 088A38769B;
	Tue, 13 Aug 2019 12:48:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id WROAn8ESkgMb; Tue, 13 Aug 2019 12:48:45 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id C591E87677;
	Tue, 13 Aug 2019 12:48:44 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 6CB0E1BF418
 for <devel@linuxdriverproject.org>; Tue, 13 Aug 2019 12:48:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 694BD864EC
 for <devel@linuxdriverproject.org>; Tue, 13 Aug 2019 12:48:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id hOrMjvHxaw_i for <devel@linuxdriverproject.org>;
 Tue, 13 Aug 2019 12:48:42 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from youngberry.canonical.com (youngberry.canonical.com
 [91.189.89.112])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id D53EE864D6
 for <devel@driverdev.osuosl.org>; Tue, 13 Aug 2019 12:48:41 +0000 (UTC)
Received: from 1.general.cking.uk.vpn ([10.172.193.212] helo=localhost)
 by youngberry.canonical.com with esmtpsa (TLS1.0:RSA_AES_256_CBC_SHA1:32)
 (Exim 4.76) (envelope-from <colin.king@canonical.com>)
 id 1hxWEB-0002SX-1v; Tue, 13 Aug 2019 12:48:39 +0000
From: Colin King <colin.king@canonical.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Vatsala Narang <vatsalanarang@gmail.com>, devel@driverdev.osuosl.org
Subject: [PATCH] staging: rtl8723bs: remove redundant assignment to ret
Date: Tue, 13 Aug 2019 13:48:38 +0100
Message-Id: <20190813124838.1317-1-colin.king@canonical.com>
X-Mailer: git-send-email 2.20.1
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
Cc: kernel-janitors@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

From: Colin Ian King <colin.king@canonical.com>

Variable ret is initialized to a value that is never read and it is
re-assigned later. The initialization is redundant and can be removed.

Addresses-Coverity: ("Unused value")
Signed-off-by: Colin Ian King <colin.king@canonical.com>
---
 drivers/staging/rtl8723bs/core/rtw_io.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8723bs/core/rtw_io.c b/drivers/staging/rtl8723bs/core/rtw_io.c
index a92bc19b196a..57168578663a 100644
--- a/drivers/staging/rtl8723bs/core/rtw_io.c
+++ b/drivers/staging/rtl8723bs/core/rtw_io.c
@@ -142,7 +142,7 @@ u32 _rtw_write_port(struct adapter *adapter, u32 addr, u32 cnt, u8 *pmem)
 	u32 (*_write_port)(struct intf_hdl *pintfhdl, u32 addr, u32 cnt, u8 *pmem);
 	struct io_priv *pio_priv = &adapter->iopriv;
 	struct	intf_hdl		*pintfhdl = &(pio_priv->intf);
-	u32 ret = _SUCCESS;
+	u32 ret;
 
 	_write_port = pintfhdl->io_ops._write_port;
 
-- 
2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
