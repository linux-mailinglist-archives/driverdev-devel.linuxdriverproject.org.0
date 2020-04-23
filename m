Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 8EE4F1B618B
	for <lists+driverdev-devel@lfdr.de>; Thu, 23 Apr 2020 19:06:44 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 0DB0487ED9;
	Thu, 23 Apr 2020 17:06:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id xynE4Scva9rh; Thu, 23 Apr 2020 17:06:40 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 754C387ECA;
	Thu, 23 Apr 2020 17:06:39 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 0A84D1BF38D
 for <devel@linuxdriverproject.org>; Thu, 23 Apr 2020 17:06:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 07BDB84B23
 for <devel@linuxdriverproject.org>; Thu, 23 Apr 2020 17:06:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id LHFoSxHNv5dK for <devel@linuxdriverproject.org>;
 Thu, 23 Apr 2020 17:06:37 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mout.gmx.net (mout.gmx.net [212.227.15.15])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 9FBFA84C13
 for <devel@driverdev.osuosl.org>; Thu, 23 Apr 2020 17:06:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1587661582;
 bh=EFoet2sHsrazKCmeWq8vS35/INWJasHQ6ZT4FP4XYU4=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date;
 b=dnch9q0mkeSfLR4few9AuYLgos2XArTckfDtAuHpcBMDe2iweCUaYVCkvJj3o+vJv
 tWSDBaolaygXczlgr30SLanetzWIDHChi2n4BZuuUhcETQug7Wrv1G4m143fV05F9q
 lquS3NvLwBycEWuvPJsYNy4BLfYkOHO+oerTluPM=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from localhost.localdomain ([83.52.229.196]) by mail.gmx.com
 (mrgmx005 [212.227.17.184]) with ESMTPSA (Nemesis) id
 1MAfYw-1jL5jZ28bY-00B4pr; Thu, 23 Apr 2020 19:06:22 +0200
From: Oscar Carter <oscar.carter@gmx.com>
To: Forest Bond <forest@alittletooquiet.net>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH v2] staging: vt6656: Add formula to the vnt_rf_addpower
 function
Date: Thu, 23 Apr 2020 19:05:57 +0200
Message-Id: <20200423170557.10401-1-oscar.carter@gmx.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Provags-ID: V03:K1:s2AKSwgBK6pKD3g1eM4Bf+xszXJ9QKNoSOSezgVCvS4kM2XcSqJ
 nN68RR/IcoxzfUpdNl0RGPyQd1xyrgCsst4dfMwflujnurgogkYv+II1wxqDWDh3WUDIX5k
 TFLIyS28KY+PNZlsR/PjG/QkaZL3triFrK6Y7uT1h9Hdn9MLkZYiKACStZOVyvtMUVtYXCK
 b4+yfZczxdxWMa0NlCo6g==
X-UI-Out-Filterresults: notjunk:1;V03:K0:dYCPScnRMmA=:Tq0A2oVNVggqE3mrj40uLf
 6aHPsR1KuQSBgEU3kql6zw8l2TnpTfTqnG2bgdre+mXOf0iIebkWQbrgqE78+ao7YNzTRcScO
 +m2KxQCKYOaBfYiT/not5athP5TdKqmKJFjFWX7u2XFYK/lzEyy+vog4QSDsFv3Pggm+g+KfX
 PM0v9NnHYM1x1TS1uScM6m7FkoHiBLuZg13l23t+Cx5zgdEEZAq/UoEdAgRdYDiGaupia4m/R
 2xmjpPvc3LXXM5wNIStuVfii00GpjpSS6d2Ay520xFiIbSykP4oWk0MHWWJ9zgNOQDiLFJ8Z9
 /hdOHKQYhn0ZFDQSSVDLnapSZRwy81iHuw4rD34G6E+804W7IqRRWYu2LC8cBQEPCIjS4XKCT
 9SQeCN1DGQJIiFidtcHzCr2+FDhzztfyjGKX5syz/w2MeZkQD1Nr0tFlvsjwTDGz5FXu6V/gE
 dEfmu/HTr5C4VBThisBLpYiVQYTgajVviLYuh7TgAWJQoi31pDrBh118AqLrYQFs6LAsdOfHP
 szC96wCae0H+2SfEDH17hqnmE5PYZOzJi0/7QRAsAWTqT1WznHHY/4+yOhTkp+uQVwFe7HwDq
 uMikVJoloycxkBjjZJc7nZj500DqE94+qi8bPTgwr1icNl8P5eLMuvQukTMabGhduGsb6HID6
 1mGaW6LhIPR3lnVI8Io93KjI6XiG+OregTVipHuqBp1hhULvB2DxXZkZd2dyl771vOhmLhOkX
 xPJTofHPWqGf5jfzMxooNYGzaL53K6kYQEIPUmDNuQvi7Ma4Lpg03QzSMXg4SMu1cXcoKXFeb
 ilonWabYVg0kOKe1Z3TgZ+8FA760FBH87bb9MWQ6pSNbcXXC4zLB4lv7pk2DjFJyx4UENZLqF
 FTKI8LUr2+1qbbpsayDkoNncydLrNTFCBbqGng8dGN9sVWwrtYFBmZYPlgAhuFQnrfAQ1QboG
 fJrOUmU+xCU4yy/gqxBLPc6Rpt6uanBk1NOHclF5AEn8dYQ3NFGHiNUh1zKTipMak8lFWCFhF
 Oi6gDkty7g/WsVKp7I2mlopWrrGMJ2RNfmUZmGxiSbE7gQA/eEA3S3eqo7wk+JjD051LB2vDO
 hennND5Dp9Wu3pAuKdmPP0K2F/mPxXYCLupTBaaif+M92raZh6pzvDclC2WQfBowN4EZNUi0g
 r8+VAx8itx/ZmzX0kIzX8JnVIkNOIiYOXW/Xyy8NhZ0U6D05GpIWrP7OUrSNrMrSEug6Anx27
 7IR1n1U51bK6w0tYd
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
Cc: devel@driverdev.osuosl.org, Oscar Carter <oscar.carter@gmx.com>,
 Malcolm Priestley <tvboxspy@gmail.com>, linux-kernel@vger.kernel.org,
 Dan Carpenter <dan.carpenter@oracle.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Use a formula to calculate the return value of the vnt_rf_addpower
function instead of the "if" statement with literal values for every
case.

Signed-off-by: Oscar Carter <oscar.carter@gmx.com>
---
Changelog v1 -> v2
- Change the type of "base" variable from s32 to int as Dan Carpenter
  suggested.
- Remove the "--" postoperator and replace with (base - 1) as Dan
  Carpenter suggested. Also, as this expression has a minus before the
  parenthesis, remove it an apply the minus operator changing the sign of
  "base" and literal "1".

 drivers/staging/vt6656/rf.c | 20 +++-----------------
 1 file changed, 3 insertions(+), 17 deletions(-)

diff --git a/drivers/staging/vt6656/rf.c b/drivers/staging/vt6656/rf.c
index 06fa8867cfa3..612fd4a59f8a 100644
--- a/drivers/staging/vt6656/rf.c
+++ b/drivers/staging/vt6656/rf.c
@@ -538,28 +538,14 @@ int vnt_rf_write_embedded(struct vnt_private *priv, u32 data)

 static u8 vnt_rf_addpower(struct vnt_private *priv)
 {
+	int base;
 	s32 rssi = -priv->current_rssi;

 	if (!rssi)
 		return 7;

-	if (priv->rf_type == RF_VT3226D0) {
-		if (rssi < -70)
-			return 9;
-		else if (rssi < -65)
-			return 7;
-		else if (rssi < -60)
-			return 5;
-	} else {
-		if (rssi < -80)
-			return 9;
-		else if (rssi < -75)
-			return 7;
-		else if (rssi < -70)
-			return 5;
-	}
-
-	return 0;
+	base = (priv->rf_type == RF_VT3226D0) ? -60 : -70;
+	return (rssi < base) ? ((rssi - base + 1) / -5) * 2 + 5 : 0;
 }

 /* Set Tx power by power level and rate */
--
2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
