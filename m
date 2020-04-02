Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 2CB8B19C906
	for <lists+driverdev-devel@lfdr.de>; Thu,  2 Apr 2020 20:47:52 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 46AF788371;
	Thu,  2 Apr 2020 18:47:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id JSMFxNQEofyO; Thu,  2 Apr 2020 18:47:49 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id C6F6D8835B;
	Thu,  2 Apr 2020 18:47:48 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 776011BF3E9
 for <devel@linuxdriverproject.org>; Thu,  2 Apr 2020 18:47:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 73B1887527
 for <devel@linuxdriverproject.org>; Thu,  2 Apr 2020 18:47:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 91GtxMAzt6ir for <devel@linuxdriverproject.org>;
 Thu,  2 Apr 2020 18:47:45 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mout.kundenserver.de (mout.kundenserver.de [212.227.126.135])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id CF45287513
 for <devel@driverdev.osuosl.org>; Thu,  2 Apr 2020 18:47:44 +0000 (UTC)
Received: from mail.cetitecgmbh.com ([87.190.42.90]) by
 mrelayeu.kundenserver.de (mreue010 [212.227.15.167]) with ESMTPSA (Nemesis)
 id 1MD9nd-1jT7Il2vYH-009CFq for <devel@driverdev.osuosl.org>; Thu, 02 Apr
 2020 20:47:42 +0200
Received: from pflvmailgateway.corp.cetitec.com (unknown [127.0.0.1])
 by mail.cetitecgmbh.com (Postfix) with ESMTP id 50013650525
 for <devel@driverdev.osuosl.org>; Thu,  2 Apr 2020 18:47:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at cetitec.com
Received: from mail.cetitecgmbh.com ([127.0.0.1])
 by pflvmailgateway.corp.cetitec.com (pflvmailgateway.corp.cetitec.com
 [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id EIJw-MKOhngb for <devel@driverdev.osuosl.org>;
 Thu,  2 Apr 2020 20:47:41 +0200 (CEST)
Received: from pfwsexchange.corp.cetitec.com (unknown [10.10.1.99])
 by mail.cetitecgmbh.com (Postfix) with ESMTPS id D9D1264F58B
 for <devel@driverdev.osuosl.org>; Thu,  2 Apr 2020 20:47:41 +0200 (CEST)
Received: from pflmari.corp.cetitec.com (10.8.5.12) by
 PFWSEXCHANGE.corp.cetitec.com (10.10.1.99) with Microsoft SMTP Server (TLS)
 id 15.0.1497.2; Thu, 2 Apr 2020 20:47:41 +0200
Received: by pflmari.corp.cetitec.com (Postfix, from userid 1000)
 id E554580501; Thu,  2 Apr 2020 20:34:27 +0200 (CEST)
Date: Thu, 2 Apr 2020 20:34:27 +0200
From: Alex Riesen <alexander.riesen@cetitec.com>
To: Kieran Bingham <kieran.bingham@ideasonboard.com>
Subject: [PATCH v5 4/9] media: adv748x: add definitions for audio output
 related registers
Message-ID: <26573ecdb48aa816f802b9d8bbe5f74157248021.1585852001.git.alexander.riesen@cetitec.com>
Mail-Followup-To: Alex Riesen <alexander.riesen@cetitec.com>,
 Kieran Bingham <kieran.bingham@ideasonboard.com>,
 Geert Uytterhoeven <geert@linux-m68k.org>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Hans Verkuil <hverkuil-cisco@xs4all.nl>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>,
 Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>,
 devel@driverdev.osuosl.org, linux-media@vger.kernel.org,
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
 linux-renesas-soc@vger.kernel.org
References: <cover.1585852001.git.alexander.riesen@cetitec.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <cover.1585852001.git.alexander.riesen@cetitec.com>
X-Originating-IP: [10.8.5.12]
X-ClientProxiedBy: PFWSEXCHANGE.corp.cetitec.com (10.10.1.99) To
 PFWSEXCHANGE.corp.cetitec.com (10.10.1.99)
X-EsetResult: clean, is OK
X-EsetId: 37303A290D7F536A6C7266
X-Provags-ID: V03:K1:fkQjzTXdk7MI09eoin/KdqwQpCeqI4T0jX1aaZUlEAKmX+RG8H0
 7XWc5FaRn/qFmE2NwyM70sZEZ1lQ2JERSeMBXl8WyXDP+Xvb1QK4qCBh39zOldQR4gMs4GS
 SWyKynG0ekBd16//RM69XL6R+eMg2EP1XxWBX/zz8zfRUfBZzIT/poohEqG18pFyaQwhfhw
 6ZwS7fyfPDRpC3WAs4J6Q==
X-UI-Out-Filterresults: notjunk:1;V03:K0:uVFE7TbVQZk=:0V+HTakp0s5StdMk3zCE19
 z8TBEmSNLO5dysSlg495IpqonQsl1GQyX4vMgBHdyVWFJqiwPTAdcsuAJ/nbiInpDY/te7OGs
 tbSTgK8nrXRWGjB9T+aavudKqZQbp42L/MgMOIiE9EPF9KiMJxLxz7lcNt8MwE156xcA1hGkg
 Fcyf5ilHDmhcmuj/eO1FiuhmVWefZd3cXANKTF7xQiqqbmpR9KPXO3iD/q02wFuZsSIIySblQ
 AjWhjiGbK5KTq254t4N36S/2afW9oWfEzxwEDSh/mceu5M2tCBsrrcYGYPDJpVkjOn+NxJOHL
 PMZq4g1KRr8STxzQNTNBnKMBYLn+c5v2ng83kAvZLT2Tp5Pxhf2Yoj5jUdkJYCaobWDhoJj1c
 ll+PqXoIAeQNI89lPkmTxPQuclpel0InAf5m/0HprUbI/4cbhj4ukkUVIIsmDt0QVffUttV/r
 YH+CtIpqb69u7yPETxrZW2uRk75nXcDKOEI+UVau16yf0qxZmEABo8gUU0xoCkuAr+ZZIaKkM
 z/Vj0oBYh9HBPRePrTdrrZfNIlr9d+OobZHsZ9hV9BYhqe7JD7z8O0B2kOQvJSbaJU4zCZQio
 QfeTjVgMzo7Sn50a8B4mOV+NZk1BDZNJitsDSe5o56cujiHynQx6iOnk+XOoOlS8KRAQXoD1x
 +Ufe58cGDs+iN6TVDxUUqE1qY42KRHt8IpOibKptCiQv2JwxdxUFUpCV07b3wOVyKg1MsnuGP
 9iymY0vqcD9DpeQsgwA82mTi5GMSS22rADYouaHvPY9MgAXbEUH2QgM8LS4iAigh2P2WvUH2+
 9bD7Gued4d4x7QMQhiZS11KrVHm8ePWdzNzX6kh4+M/3GKYkSMXZwwaxxmNophP88zktoRo
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
Cc: Mark Rutland <mark.rutland@arm.com>, devel@driverdev.osuosl.org,
 Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-renesas-soc@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 Geert Uytterhoeven <geert@linux-m68k.org>, Laurent
 Pinchart <laurent.pinchart@ideasonboard.com>,
 Hans Verkuil <hverkuil-cisco@xs4all.nl>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Signed-off-by: Alexander Riesen <alexander.riesen@cetitec.com>
---
 drivers/media/i2c/adv748x/adv748x.h | 32 +++++++++++++++++++++++++++++
 1 file changed, 32 insertions(+)

diff --git a/drivers/media/i2c/adv748x/adv748x.h b/drivers/media/i2c/adv748x/adv748x.h
index 0a9d78c2870b..1a1ea70086c6 100644
--- a/drivers/media/i2c/adv748x/adv748x.h
+++ b/drivers/media/i2c/adv748x/adv748x.h
@@ -226,6 +226,11 @@ struct adv748x_state {
 
 #define ADV748X_IO_VID_STD		0x05
 
+#define ADV748X_IO_PAD_CONTROLS		0x0e
+#define ADV748X_IO_PAD_CONTROLS_TRI_AUD	BIT(5)
+#define ADV748X_IO_PAD_CONTROLS_PDN_AUD	BIT(1)
+#define ADV748X_IO_PAD_CONTROLS1	0x1d
+
 #define ADV748X_IO_10			0x10	/* io_reg_10 */
 #define ADV748X_IO_10_CSI4_EN		BIT(7)
 #define ADV748X_IO_10_CSI1_EN		BIT(6)
@@ -248,7 +253,21 @@ struct adv748x_state {
 #define ADV748X_IO_REG_FF		0xff
 #define ADV748X_IO_REG_FF_MAIN_RESET	0xff
 
+/* DPLL Map */
+#define ADV748X_DPLL_MCLK_FS		0xb5
+#define ADV748X_DPLL_MCLK_FS_N_MASK	GENMASK(2, 0)
+
 /* HDMI RX Map */
+#define ADV748X_HDMI_I2S		0x03	/* I2S mode and width */
+#define ADV748X_HDMI_I2SBITWIDTH_MASK	GENMASK(4, 0)
+#define ADV748X_HDMI_I2SOUTMODE_SHIFT	5
+#define ADV748X_HDMI_I2SOUTMODE_MASK	\
+	GENMASK(6, ADV748X_HDMI_I2SOUTMODE_SHIFT)
+#define ADV748X_I2SOUTMODE_I2S 0
+#define ADV748X_I2SOUTMODE_RIGHT_J 1
+#define ADV748X_I2SOUTMODE_LEFT_J 2
+#define ADV748X_I2SOUTMODE_SPDIF 3
+
 #define ADV748X_HDMI_LW1		0x07	/* line width_1 */
 #define ADV748X_HDMI_LW1_VERT_FILTER	BIT(7)
 #define ADV748X_HDMI_LW1_DE_REGEN	BIT(5)
@@ -260,6 +279,16 @@ struct adv748x_state {
 #define ADV748X_HDMI_F1H1		0x0b	/* field1 height_1 */
 #define ADV748X_HDMI_F1H1_INTERLACED	BIT(5)
 
+#define ADV748X_HDMI_MUTE_CTRL		0x1a
+#define ADV748X_HDMI_MUTE_CTRL_MUTE_AUDIO BIT(4)
+#define ADV748X_HDMI_MUTE_CTRL_WAIT_UNMUTE_MASK	GENMASK(3, 1)
+#define ADV748X_HDMI_MUTE_CTRL_NOT_AUTO_UNMUTE	BIT(0)
+
+#define ADV748X_HDMI_AUDIO_MUTE_SPEED	0x0f
+#define ADV748X_HDMI_AUDIO_MUTE_SPEED_MASK	GENMASK(4, 0)
+#define ADV748X_MAN_AUDIO_DL_BYPASS BIT(7)
+#define ADV748X_AUDIO_DELAY_LINE_BYPASS BIT(6)
+
 #define ADV748X_HDMI_HFRONT_PORCH	0x20	/* hsync_front_porch_1 */
 #define ADV748X_HDMI_HFRONT_PORCH_MASK	0x1fff
 
@@ -281,6 +310,9 @@ struct adv748x_state {
 #define ADV748X_HDMI_TMDS_1		0x51	/* hdmi_reg_51 */
 #define ADV748X_HDMI_TMDS_2		0x52	/* hdmi_reg_52 */
 
+#define ADV748X_HDMI_REG_6D		0x6d	/* hdmi_reg_6d */
+#define ADV748X_I2S_TDM_MODE_ENABLE BIT(7)
+
 /* HDMI RX Repeater Map */
 #define ADV748X_REPEATER_EDID_SZ	0x70	/* primary_edid_size */
 #define ADV748X_REPEATER_EDID_SZ_SHIFT	4
-- 
2.25.1.25.g9ecbe7eb18


_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
