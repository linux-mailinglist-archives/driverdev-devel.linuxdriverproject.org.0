Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id EF4A0323C5D
	for <lists+driverdev-devel@lfdr.de>; Wed, 24 Feb 2021 13:54:51 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8CDA583D3A;
	Wed, 24 Feb 2021 12:54:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id nx90KDppqMrL; Wed, 24 Feb 2021 12:54:49 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 17D0E83D33;
	Wed, 24 Feb 2021 12:54:48 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 65CEF1BF5A7
 for <devel@linuxdriverproject.org>; Wed, 24 Feb 2021 12:54:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 5502A60712
 for <devel@linuxdriverproject.org>; Wed, 24 Feb 2021 12:54:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=kernel.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id lULIVZOuJ1sR for <devel@linuxdriverproject.org>;
 Wed, 24 Feb 2021 12:54:37 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 9BC1360067
 for <devel@driverdev.osuosl.org>; Wed, 24 Feb 2021 12:54:37 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 3DC9C64F86;
 Wed, 24 Feb 2021 12:54:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1614171277;
 bh=g9d5o9CMSORlYs0gjGK9mmhQhciTilxiXlvuspDOZhE=;
 h=From:To:Cc:Subject:Date:From;
 b=I0tqgeU7DQ7WHUivY72+2lYetfdsy5uTzbxjcTEBWB0QctPb3zry+EXGPcKoW7reg
 ccH8IGT98bv6ELpxuKt970r5KBQmctTNnFazRLNzZDVI9i06siE8BwV9xb0/MraQ+2
 UvYrD4ijOKphqK/7RpIxIhGQiVfxm8S3A/sNFQLmD1sWmSPYYei8nz17Ho/Zr6t9Vx
 Iy9qqf5qg//Ay2B28vG4u3NQ7bOAt2Ll+fdUFK+2Ab8wOnCAinKBifDw1QMueo0YIQ
 G1BnfGo6ah7HLthnuZKOQK+FJ/u1vUy5PFG8uueKzJDRK2HM/LG5yyYoFrUpYKQ4UY
 N4Ud8o+SATsjQ==
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 4.19 01/26] staging: fwserial: Fix error handling in
 fwserial_create
Date: Wed, 24 Feb 2021 07:54:09 -0500
Message-Id: <20210224125435.483539-1-sashal@kernel.org>
X-Mailer: git-send-email 2.27.0
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
 Dinghao Liu <dinghao.liu@zju.edu.cn>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

From: Dinghao Liu <dinghao.liu@zju.edu.cn>

[ Upstream commit f31559af97a0eabd467e4719253675b7dccb8a46 ]

When fw_core_add_address_handler() fails, we need to destroy
the port by tty_port_destroy(). Also we need to unregister
the address handler by fw_core_remove_address_handler() on
failure.

Signed-off-by: Dinghao Liu <dinghao.liu@zju.edu.cn>
Link: https://lore.kernel.org/r/20201221122437.10274-1-dinghao.liu@zju.edu.cn
Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/staging/fwserial/fwserial.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/staging/fwserial/fwserial.c b/drivers/staging/fwserial/fwserial.c
index fa0dd425b4549..cd062628a46b0 100644
--- a/drivers/staging/fwserial/fwserial.c
+++ b/drivers/staging/fwserial/fwserial.c
@@ -2219,6 +2219,7 @@ static int fwserial_create(struct fw_unit *unit)
 		err = fw_core_add_address_handler(&port->rx_handler,
 						  &fw_high_memory_region);
 		if (err) {
+			tty_port_destroy(&port->port);
 			kfree(port);
 			goto free_ports;
 		}
@@ -2301,6 +2302,7 @@ static int fwserial_create(struct fw_unit *unit)
 
 free_ports:
 	for (--i; i >= 0; --i) {
+		fw_core_remove_address_handler(&serial->ports[i]->rx_handler);
 		tty_port_destroy(&serial->ports[i]->port);
 		kfree(serial->ports[i]);
 	}
-- 
2.27.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
