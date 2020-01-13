Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D0C6139391
	for <lists+driverdev-devel@lfdr.de>; Mon, 13 Jan 2020 15:21:12 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id D0BD3859C1;
	Mon, 13 Jan 2020 14:21:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id EYoWPkpDUaUQ; Mon, 13 Jan 2020 14:21:08 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 3476185821;
	Mon, 13 Jan 2020 14:21:08 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 49A831BF388
 for <devel@linuxdriverproject.org>; Mon, 13 Jan 2020 14:21:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 461B884DDD
 for <devel@linuxdriverproject.org>; Mon, 13 Jan 2020 14:21:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id kntF4JP-hn6D for <devel@linuxdriverproject.org>;
 Mon, 13 Jan 2020 14:21:05 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mout.kundenserver.de (mout.kundenserver.de [212.227.126.135])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 43C8184C99
 for <devel@driverdev.osuosl.org>; Mon, 13 Jan 2020 14:21:05 +0000 (UTC)
Received: from mail.cetitecgmbh.com ([87.190.42.90]) by
 mrelayeu.kundenserver.de (mreue012 [212.227.15.167]) with ESMTPSA (Nemesis)
 id 1Mq1GE-1jVEoL1Rkg-00nAr8; Mon, 13 Jan 2020 15:15:47 +0100
Received: from pflvmailgateway.corp.cetitec.com (unknown [127.0.0.1])
 by mail.cetitecgmbh.com (Postfix) with ESMTP id 09B8564F293;
 Mon, 13 Jan 2020 14:15:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at cetitec.com
Received: from mail.cetitecgmbh.com ([127.0.0.1])
 by pflvmailgateway.corp.cetitec.com (pflvmailgateway.corp.cetitec.com
 [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id MpW3x8_PgRq7; Mon, 13 Jan 2020 15:15:46 +0100 (CET)
Received: from pfwsexchange.corp.cetitec.com (unknown [10.10.1.99])
 by mail.cetitecgmbh.com (Postfix) with ESMTPS id 3D7C264D641;
 Mon, 13 Jan 2020 15:15:46 +0100 (CET)
Received: from pflmari.corp.cetitec.com (10.10.2.141) by
 PFWSEXCHANGE.corp.cetitec.com (10.10.1.99) with Microsoft SMTP Server (TLS)
 id 15.0.1320.4; Mon, 13 Jan 2020 15:15:46 +0100
Received: by pflmari.corp.cetitec.com (Postfix, from userid 1000)
 id E583A804E9; Mon, 13 Jan 2020 15:15:45 +0100 (CET)
Date: Mon, 13 Jan 2020 15:15:45 +0100
From: Alex Riesen <alexander.riesen@cetitec.com>
To: Kieran Bingham <kieran.bingham@ideasonboard.com>
Subject: [PATCH 6/8] media: adv748x: reduce amount of code for bitwise
 modification of device registers
Message-ID: <20200113141545.GG3606@pflmari>
Mail-Followup-To: Alex Riesen <alexander.riesen@cetitec.com>,
 Kieran Bingham <kieran.bingham@ideasonboard.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Hans Verkuil <hverkuil-cisco@xs4all.nl>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>, devel@driverdev.osuosl.org,
 linux-media@vger.kernel.org, linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org, linux-renesas-soc@vger.kernel.org
References: <cover.1578924232.git.alexander.riesen@cetitec.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <cover.1578924232.git.alexander.riesen@cetitec.com>
X-Originating-IP: [10.10.2.141]
X-ClientProxiedBy: PFWSEXCHANGE.corp.cetitec.com (10.10.1.99) To
 PFWSEXCHANGE.corp.cetitec.com (10.10.1.99)
X-EsetResult: clean, is OK
X-EsetId: 37303A29536F936F657D64
X-Provags-ID: V03:K1:/85G/aaVRJTZkr6Gku52togdEm1yvKqdKcF2c6D9t/wZUMxfwf+
 ueDyXqBfeWDjMif7FvC+VnxwEbJgUx3FyGyTzatFR1guD9V4uw2RNoDaNeH/Nwnp0pV4896
 DESxa+kfbQ+uqth3DkTy9kl+NvJsPVifiYh/OpUX30+bAkg2vu/QBJ2kTzX9Sh27m1aE5S2
 7B6hcDjYeJBDE0WrhNmsg==
X-UI-Out-Filterresults: notjunk:1;V03:K0:a14mzvNFETo=:ibaG5VJcZ+JNQewiekfFnV
 htrPJeZGPpEv7wIgyW8ds82z8wt+//ckykAQGzYH1+GcD8teXgV2ha8Jzw4lCdFWomnXpyj3l
 GdXDa3nexmV8mw2re56Vw/uOrtFB9KbHB0PVf3ZIxuh3WRC7fjbEu05gQkiBBsgJkw8HTnYtp
 CS11GingGFTwTzwDZxwc/Dtb460+C1rPy4sg04zT71PZP5oQW5MQWVyy9o8S+VOujdqUdZ3Os
 y+awzkQ09LiTzaeyQpvconDmUKzt0QhpVYoThMwvOwnBa6Sfj5wJTfawa+6JC5/R77DbA8477
 p5c4n4ezi/gVSZggmmL2FXAcknMTLEif+3ICKtXxqwSJKV7jLjbx2CTkX6rgX3QeEE9QEJhA6
 P/SkgYqtmAJGePpWXqR/HMyZZD/vRSKwS57fe+9unoGsPIaCLtn9vxGLOfe5ZMdq/q4feioq+
 gvlsluv0svwQJvwxURO7EsMfwvIeugJIC2aGFjPKVIYjwGpCEcz4fmNT6tWRQ74qjfieiG69Y
 rn36+rQwS2Oe8LFFB0il7X+S5hmgUDa0IBrnfW864Ekajf1NzcKNJk25OiFyiH2TOl6P6JOOe
 mgPJNAYXJkBLk2L9pk/H3COjzyHAQkY4vkMbBj1Cv+kviR9xbpxTXFpwO0tdZLNvyswaT4Q5y
 +w8GPMkY2GFjhsq+BgJBJTonVVWPb2DtV2Q3B5FmyJ3nf+iV6s2g6Rh6JbjGMbPp4tBeLpCoh
 dHYBOhbfB6kHJ8f/cLlyhyVe5PkBaQUavZ2Xqm7+H83AtvzGevexjel5djpS346nyXVfeMJmh
 er9V9/GAcwgaNrsfC/gtfjgOGyqiZxPX9V3G5MEPg/Z/NUNudcfZYBnr5h1ayOIkRcHGUfD4p
 lqhauV8iYXM4x+O0tO3ZY/EWaIoROI+rKpKOj9ThU=
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
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-renesas-soc@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Hans Verkuil <hverkuil-cisco@xs4all.nl>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

The regmap provides corresponding routine (regmap_update_bits) already
wrapped for this device earlier.

Signed-off-by: Alexander Riesen <alexander.riesen@cetitec.com>
---
 drivers/media/i2c/adv748x/adv748x.h | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/media/i2c/adv748x/adv748x.h b/drivers/media/i2c/adv748x/adv748x.h
index 5db06410f102..ab3f754542fe 100644
--- a/drivers/media/i2c/adv748x/adv748x.h
+++ b/drivers/media/i2c/adv748x/adv748x.h
@@ -432,7 +432,7 @@ int adv748x_update_bits(struct adv748x_state *state, u8 page, u8 reg,
 
 #define io_read(s, r) adv748x_read(s, ADV748X_PAGE_IO, r)
 #define io_write(s, r, v) adv748x_write(s, ADV748X_PAGE_IO, r, v)
-#define io_clrset(s, r, m, v) io_write(s, r, (io_read(s, r) & ~m) | v)
+#define io_clrset(s, r, m, v) adv748x_update_bits(s, ADV748X_PAGE_IO, r, m, v)
 #define io_update(s, r, m, v) adv748x_update_bits(s, ADV748X_PAGE_IO, r, m, v)
 
 #define hdmi_read(s, r) adv748x_read(s, ADV748X_PAGE_HDMI, r)
@@ -450,11 +450,11 @@ int adv748x_update_bits(struct adv748x_state *state, u8 page, u8 reg,
 
 #define sdp_read(s, r) adv748x_read(s, ADV748X_PAGE_SDP, r)
 #define sdp_write(s, r, v) adv748x_write(s, ADV748X_PAGE_SDP, r, v)
-#define sdp_clrset(s, r, m, v) sdp_write(s, r, (sdp_read(s, r) & ~m) | v)
+#define sdp_clrset(s, r, m, v) adv748x_update_bits(s, ADV748X_PAGE_SDP, r, m, v)
 
 #define cp_read(s, r) adv748x_read(s, ADV748X_PAGE_CP, r)
 #define cp_write(s, r, v) adv748x_write(s, ADV748X_PAGE_CP, r, v)
-#define cp_clrset(s, r, m, v) cp_write(s, r, (cp_read(s, r) & ~m) | v)
+#define cp_clrset(s, r, m, v) adv748x_update_bits(s, ADV748X_PAGE_CP, r, m, v)
 
 #define tx_read(t, r) adv748x_read(t->state, t->page, r)
 #define tx_write(t, r, v) adv748x_write(t->state, t->page, r, v)
-- 
2.24.1.508.g91d2dafee0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
