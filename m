Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 113101A521E
	for <lists+driverdev-devel@lfdr.de>; Sat, 11 Apr 2020 14:51:57 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 1EF76869CA;
	Sat, 11 Apr 2020 12:51:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id RMbfiLejFWGV; Sat, 11 Apr 2020 12:51:54 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 6DEF68698E;
	Sat, 11 Apr 2020 12:51:53 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 48C291BF5DE
 for <devel@linuxdriverproject.org>; Sat, 11 Apr 2020 12:51:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 439918697D
 for <devel@linuxdriverproject.org>; Sat, 11 Apr 2020 12:51:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id dw19A5LQADl3 for <devel@linuxdriverproject.org>;
 Sat, 11 Apr 2020 12:51:51 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mout.gmx.net (mout.gmx.net [212.227.15.15])
 by whitealder.osuosl.org (Postfix) with ESMTPS id B2D3885F37
 for <devel@driverdev.osuosl.org>; Sat, 11 Apr 2020 12:51:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1586609503;
 bh=nTa7HOtzBAyYvqCf5UKKR4MsPgngH6j/QGDhtC+XUJI=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date:In-Reply-To:References;
 b=acPUgjh22YDKWrgaAaaR7ytINdi8BGD9T0VWP/ctNa2B80Cu/av1QPrxceU1/pcdO
 Y9TSMdOnUGJqIgXJ+YKuPBqaz5jM0n2ZoaC8scJfjlFpwkjJZ2nY+zk06RkjaVGS3A
 K/+DUxcK9sp4p1QFhxv32pwPkRWpNEkWrMMbVdyI=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from localhost.localdomain ([83.52.229.196]) by mail.gmx.com
 (mrgmx004 [212.227.17.184]) with ESMTPSA (Nemesis) id
 1MXp5a-1jmYMN21ZE-00Y83K; Sat, 11 Apr 2020 14:51:43 +0200
From: Oscar Carter <oscar.carter@gmx.com>
To: Forest Bond <forest@alittletooquiet.net>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH 1/2] staging: vt6656: Remove duplicate code in vnt_vt3184_init
 function
Date: Sat, 11 Apr 2020 14:51:03 +0200
Message-Id: <20200411125104.9625-2-oscar.carter@gmx.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200411125104.9625-1-oscar.carter@gmx.com>
References: <20200411125104.9625-1-oscar.carter@gmx.com>
MIME-Version: 1.0
X-Provags-ID: V03:K1:uZExSfYV5udqcg6iGFAofrLuWYVWILFw9DwS3V2x5QdDJfb9GAm
 iaNORMSdwZTivGom5aF3GnudM/SpQj19UbX8pmpsrcbhUqYNc1J90n6ELdmglUMOh2qOl0B
 ZKwKyE8ckGRvi/WwUFX7Tx0gZglkba9F5JlixIv1j9Xt/XVkFXxfzsi545LJzDySebOSvjH
 NlROT6ly2jtTYI7SGIhqg==
X-UI-Out-Filterresults: notjunk:1;V03:K0:w49Ddo/k2FQ=:laOUdd0v8usfgjg41SkhPF
 YEiWoL9+QV/PX/bPDE//smI9hWcYT4jZmySDqM+8CPhw+u/maTQY5JL3yDCv395fKRsENYwJH
 ktLjXZAuDxgEpY+W7qw23xcHYPQ7NPYp8YrwBwEtTScH+0ILw0ppwEOd5UDPAfvuh9VO89jTi
 EmKidwqHw0r+RpWrkQdAzST4oxcto5xdy1NchI1Rro6ckN/IGH6j6sfi4Mzacb7z6sSjdHSaM
 h6Juu59t81zlUbpZyQ9Mjvr58BDu8tlrRynTLTjKUR/ULn1MJ3HW9wS3YmQaBUfUavGgFj5vF
 6Vb6aJFBgqX25ITSD7cMRGCPST4pW3kbOhAKUwaDF82HQKIcBppwWoOIaAwlEb7rFe2FpoWb1
 q2YB209UQkqU6rRLyQZIyl/fHHiqdISIDIB/jYrW4yQlumAOnQxT8iQ5en3p9Fu+DocKIlo4H
 Vf5hSOoDllnxHIev4Jr377mVFwIRyRiIA07JNQFRULAsRuSgT86v1HYModWSFBoyE5zA79BBo
 I6p9/IH6ZsfxoWbT35UizGwAnfAVoLB/XfFxb3Uywbrf5zyDTw/G3yZHYKppLg3BYx5dMI+dz
 NdR5ZfHkIFDws1BclycacMfgqyTcl5HAL5FgnOicnUfWb7W7U/clAv32Swj7E2Z5cWKZtYZ/F
 t4bJfxaHhuBChMdzaWgHc1m0AE6DJXLCMMCx/hx6c/1fKKOopcKHNlrdZ8WFgyBuglMjJcH7Z
 tvvIvFJgkh+yJbZAWKVRDT53vEWFjBTAvX4Qel0z9mmP9zPHKq5zmX+AzpGC2D3IOjPtzqMWV
 9snFAQKBi+8Rn7UbSo/Qd5JRbCySKBwItqD6QEpqz6cSkDPDDs+L0vdBsYsxADSI6e7pKxGkk
 mCiu2Kr92xSmICL3VWnb6fLTFcCXbWSoX1MoGFIpiFBotTW51csF82/1iIa5cqiL+5rU4OgN4
 4l5mV3q7AevryigqwV5a5xrC94sggYaj96zkVkIsQCf3dlqajZ0utWNElaO/NMpX7Fjrk/SRY
 wsS7mfWG274lGXPqqPU0zJnTQITtDREiKzVGz7fWhOqxbE2Yuo2tEKc0CuQQAUr8fWp1dk05Z
 KcDjfdDt4Yb0wguE6LKhOPzqynea9HHb1cYBV+DBQSB3jzRGovgfIEjLaMpKSR3g07CWIRz0G
 bkn8OMqqJ29wXVZ+7AGZPxImz75De7fm2Vz6Y7PZxtyLXSK7yA0Y8srtSXiqpC89A3eV0bpZA
 LfYOmq6dk7ypdOeZ0
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
 Malcolm Priestley <tvboxspy@gmail.com>, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Remove duplicate code in "if" statements because different branches are
almost the same.

Signed-off-by: Oscar Carter <oscar.carter@gmx.com>
---
 drivers/staging/vt6656/baseband.c | 52 +++++++------------------------
 1 file changed, 12 insertions(+), 40 deletions(-)

diff --git a/drivers/staging/vt6656/baseband.c b/drivers/staging/vt6656/baseband.c
index a19a563d8bcc..276210a7284e 100644
--- a/drivers/staging/vt6656/baseband.c
+++ b/drivers/staging/vt6656/baseband.c
@@ -366,23 +366,15 @@ int vnt_vt3184_init(struct vnt_private *priv)

 	dev_dbg(&priv->usb->dev, "RF Type %d\n", priv->rf_type);

-	if (priv->rf_type == RF_AL2230 ||
-	    priv->rf_type == RF_AL2230S) {
+	if ((priv->rf_type == RF_AL2230) ||
+	    (priv->rf_type == RF_AL2230S) ||
+	    (priv->rf_type == RF_AIROHA7230)) {
 		priv->bb_rx_conf = vnt_vt3184_al2230[10];
 		length = sizeof(vnt_vt3184_al2230);
 		addr = vnt_vt3184_al2230;

-		priv->bb_vga[0] = 0x1C;
-		priv->bb_vga[1] = 0x10;
-		priv->bb_vga[2] = 0x0;
-		priv->bb_vga[3] = 0x0;
-
-	} else if (priv->rf_type == RF_AIROHA7230) {
-		priv->bb_rx_conf = vnt_vt3184_al2230[10];
-		length = sizeof(vnt_vt3184_al2230);
-		addr = vnt_vt3184_al2230;
-
-		addr[0xd7] = 0x06;
+		if (priv->rf_type == RF_AIROHA7230)
+			addr[0xd7] = 0x06;

 		priv->bb_vga[0] = 0x1c;
 		priv->bb_vga[1] = 0x10;
@@ -390,22 +382,8 @@ int vnt_vt3184_init(struct vnt_private *priv)
 		priv->bb_vga[3] = 0x0;

 	} else if ((priv->rf_type == RF_VT3226) ||
-			(priv->rf_type == RF_VT3226D0)) {
-		priv->bb_rx_conf = vnt_vt3184_vt3226d0[10];
-		length = sizeof(vnt_vt3184_vt3226d0);
-		addr = vnt_vt3184_vt3226d0;
-
-		priv->bb_vga[0] = 0x20;
-		priv->bb_vga[1] = 0x10;
-		priv->bb_vga[2] = 0x0;
-		priv->bb_vga[3] = 0x0;
-
-		/* Fix VT3226 DFC system timing issue */
-		ret = vnt_mac_reg_bits_on(priv, MAC_REG_SOFTPWRCTL2,
-					  SOFTPWRCTL_RFLEOPT);
-		if (ret)
-			goto end;
-	} else if (priv->rf_type == RF_VT3342A0) {
+		   (priv->rf_type == RF_VT3226D0) ||
+		   (priv->rf_type == RF_VT3342A0)) {
 		priv->bb_rx_conf = vnt_vt3184_vt3226d0[10];
 		length = sizeof(vnt_vt3184_vt3226d0);
 		addr = vnt_vt3184_vt3226d0;
@@ -435,19 +413,13 @@ int vnt_vt3184_init(struct vnt_private *priv)
 	if (ret)
 		goto end;

-	if (priv->rf_type == RF_VT3226 ||
-	    priv->rf_type == RF_VT3342A0) {
-		ret = vnt_control_out_u8(priv, MESSAGE_REQUEST_MACREG,
-					 MAC_REG_ITRTMSET, 0x23);
-		if (ret)
-			goto end;
+	if ((priv->rf_type == RF_VT3226) ||
+	    (priv->rf_type == RF_VT3342A0) ||
+	    (priv->rf_type == RF_VT3226D0)) {
+		data = (priv->rf_type == RF_VT3226D0) ? 0x11 : 0x23;

-		ret = vnt_mac_reg_bits_on(priv, MAC_REG_PAPEDELAY, BIT(0));
-		if (ret)
-			goto end;
-	} else if (priv->rf_type == RF_VT3226D0) {
 		ret = vnt_control_out_u8(priv, MESSAGE_REQUEST_MACREG,
-					 MAC_REG_ITRTMSET, 0x11);
+					 MAC_REG_ITRTMSET, data);
 		if (ret)
 			goto end;

--
2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
