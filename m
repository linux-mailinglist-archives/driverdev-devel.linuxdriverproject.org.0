Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D97139D06
	for <lists+driverdev-devel@lfdr.de>; Sat,  8 Jun 2019 13:02:09 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 4609287A77;
	Sat,  8 Jun 2019 11:02:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id QdHguu693G7G; Sat,  8 Jun 2019 11:02:07 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id D7B2B87866;
	Sat,  8 Jun 2019 11:02:06 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id D97D91BF47E
 for <devel@linuxdriverproject.org>; Sat,  8 Jun 2019 11:02:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id D554E2150F
 for <devel@linuxdriverproject.org>; Sat,  8 Jun 2019 11:02:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ZWdbkEyEqUFV for <devel@linuxdriverproject.org>;
 Sat,  8 Jun 2019 11:02:01 +0000 (UTC)
X-Greylist: delayed 00:05:18 by SQLgrey-1.7.6
Received: from pokefinder.org (sauhun.de [88.99.104.3])
 by silver.osuosl.org (Postfix) with ESMTP id D622020471
 for <devel@driverdev.osuosl.org>; Sat,  8 Jun 2019 11:02:00 +0000 (UTC)
Received: from localhost (p5486CBCC.dip0.t-ipconnect.de [84.134.203.204])
 by pokefinder.org (Postfix) with ESMTPSA id 6A1E43E476F;
 Sat,  8 Jun 2019 12:56:58 +0200 (CEST)
From: Wolfram Sang <wsa+renesas@sang-engineering.com>
To: linux-i2c@vger.kernel.org
Subject: [PATCH 33/34] staging: media: soc_camera: soc_mt9v022: simplify
 getting the adapter of a client
Date: Sat,  8 Jun 2019 12:56:12 +0200
Message-Id: <20190608105619.593-34-wsa+renesas@sang-engineering.com>
X-Mailer: git-send-email 2.19.1
In-Reply-To: <20190608105619.593-1-wsa+renesas@sang-engineering.com>
References: <20190608105619.593-1-wsa+renesas@sang-engineering.com>
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
Cc: devel@driverdev.osuosl.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-kernel@vger.kernel.org, Wolfram Sang <wsa+renesas@sang-engineering.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

We have a dedicated pointer for that, so use it. Much easier to read and
less computation involved.

Signed-off-by: Wolfram Sang <wsa+renesas@sang-engineering.com>
---

Please apply to your subsystem tree.

 drivers/staging/media/soc_camera/soc_mt9v022.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/media/soc_camera/soc_mt9v022.c b/drivers/staging/media/soc_camera/soc_mt9v022.c
index e7e0d3d29499..1739a618846d 100644
--- a/drivers/staging/media/soc_camera/soc_mt9v022.c
+++ b/drivers/staging/media/soc_camera/soc_mt9v022.c
@@ -883,7 +883,7 @@ static int mt9v022_probe(struct i2c_client *client,
 {
 	struct mt9v022 *mt9v022;
 	struct soc_camera_subdev_desc *ssdd = soc_camera_i2c_to_desc(client);
-	struct i2c_adapter *adapter = to_i2c_adapter(client->dev.parent);
+	struct i2c_adapter *adapter = client->adapter;
 	struct mt9v022_platform_data *pdata;
 	int ret;
 
-- 
2.19.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
