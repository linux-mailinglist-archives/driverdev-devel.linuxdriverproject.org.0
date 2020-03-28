Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E13A1964E5
	for <lists+driverdev-devel@lfdr.de>; Sat, 28 Mar 2020 10:55:41 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id ADE4589224;
	Sat, 28 Mar 2020 09:55:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 9D6qxFgwr7-k; Sat, 28 Mar 2020 09:55:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 0FF9D8907E;
	Sat, 28 Mar 2020 09:55:38 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id A2D0E1BF59D
 for <devel@linuxdriverproject.org>; Sat, 28 Mar 2020 09:55:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 9F3CF8907E
 for <devel@linuxdriverproject.org>; Sat, 28 Mar 2020 09:55:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id RrnZLwCvdTYp for <devel@linuxdriverproject.org>;
 Sat, 28 Mar 2020 09:55:34 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mout.gmx.net (mout.gmx.net [212.227.15.15])
 by hemlock.osuosl.org (Postfix) with ESMTPS id E531589076
 for <devel@driverdev.osuosl.org>; Sat, 28 Mar 2020 09:55:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1585389319;
 bh=GF5fOQBU8LcGvDbPJpFKcu8Xuvl8GxKStGoxi7M1Hps=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date;
 b=l6xPybgjMzn27Pf86wSYUTLvkQe3lOX0Ac9IXp8i+xeUrvHHLcEOpQbY/BzUe+GAj
 Z9nLiR1wFuhJfakOPuStiKkynGBVKgqNan42hvgj/rzX4MHqHOOX7Z+8J9wdmjZZKC
 Sk9Si+Dni+atCwarOcv2I0F/BqwvkP6RXvHtzvPA=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from localhost.localdomain ([83.52.229.196]) by mail.gmx.com
 (mrgmx005 [212.227.17.184]) with ESMTPSA (Nemesis) id
 1MOzT4-1iss6U3upw-00PMkQ; Sat, 28 Mar 2020 10:55:19 +0100
From: Oscar Carter <oscar.carter@gmx.com>
To: Forest Bond <forest@alittletooquiet.net>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH] staging: vt6656: Use defines in vnt_mac_reg_bits_* functions
Date: Sat, 28 Mar 2020 10:54:33 +0100
Message-Id: <20200328095433.7879-1-oscar.carter@gmx.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Provags-ID: V03:K1:812Pai66WVOzf4x7TeQ0az2SXkPT1AiBLUTVSXGCgdJkGxEFITZ
 1XKFwyKGPvrKJiod7Lo4ekZPmjGk43JSxkUv3RbrsMEOSnIhmoRL/DVEZ1/T4EDA+8Mqk/H
 NqxxP2nbuxydqaEDFr7WbeUKA24KwB5MmcIRFd+sfi9rVPCPltxzOpHBdxyQWJdIPay5/LS
 U4VaIOP0XAo42qFr4iWVA==
X-UI-Out-Filterresults: notjunk:1;V03:K0:hq4z73EcVdM=:5j1xCcPsUIvjTogKmTYrNy
 rRT0DDOQcFGWAd1rZAz5mecZdBwCNvhD6c9Q8Zvgids10YDrSQxW1q8kPKvW5r6fhxOKRwjRa
 4YkcNbUIDj9MUqajUI45EWvddWT/xKrPxc/g7I9uuzw4yucOi0X1blUYnNNqv/4vFkkY2FV+K
 7r+u77MM8hFHz67dupt3qhtJsidQ837wvadPG2BVkD86xWB/Vsh/webwc/l/bm8ohevObIsUH
 spoB93a+icJY/DHkXtGAtLIxOt1wSn2wQCEcWkFOePXUqnaal9KbxTXrqjmjENkGPfUCBd6sg
 1vGNMH1DLGjuZ5pSryioAZM9K3XxMuMk9E6f9HHEUDxuvCzTIT8uvTG2bTbff8v3mbFCu+CS9
 q52QssciNwIhBrqTxYTVcptlRXil6nVDaMaLqYrDTCPAlrK7TFB75vLBjzjhyhn0gVRZK8l8J
 FS12/Xg817ijeYPnD+O3XQzySJOAqAGOr3yDI3TD8p1BoyvXpOTEGVGgSxUfKAhEJdNyTZaIQ
 8dTPGOAGP3OjUA1RLno1/7chavtWDkn+OPKiJMJUF1C5SadY5qLXwfsrZesp06oYjQaUO7ksf
 6z5EsV+cmUAXaCTQWGuDhDES3d1K9xBZk8zCrilkzpnVDfAVn+PxKTAjjKdL9mudmKI1woMaC
 TZzV4x1mfQ99HViwccfxBd3KVeL9NwY54R/Q6uatkI/S4mzQ/daEbLzwXzts3rX9ozQIa2Ppy
 s+IwUlhoL2SLx7xFCT0ErUxqsm/5VXKPGzXXZ7KePx+HTqmedAtBejLR7cwpPoQU31TDB3jJ0
 1NWTnmDbx9sQiJtKX7liYhXhOKcRfddT4bhtdJ+WmEzmHYYp1su1JLp7TgeXJgd9dd2fIGNfP
 AXz/WhlwTt3Kr8SGES5gCyeKkZhRo5us/qhqmkpOZLiqS5CysrKUvaIqOLzg8XEHrD9urFnOb
 6IOndMOHnGNgvyfN+FOYhlEzdWLHCN/hf2k1coagkMI4yqDbapDr8ecRWXqWYxJgT8ueiB26t
 fyl8mCEZv4zikeTbM42eVr7tboyoWT37Klg97c91EXFB8fKHiXMk4MhODzIO+Oxpfqf8f+w/9
 dIDoLdgHMp9EZOYBpRPgnI+1KTjRF/11DlPreE/cJzYQf+wG5603EhSFfKAbGkWAe/l7POWB4
 m2GRnN0LotDezwAdwvaYNjFRGTjXv0HNHMPatlsIb5RL6hYFpKproGLdVruE99j2sUCWrWU9+
 Ufxa8g3mRd9goKULo
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
 Gabriela Bittencourt <gabrielabittencourt00@gmail.com>,
 Colin Ian King <colin.king@canonical.com>,
 Dan Carpenter <dan.carpenter@oracle.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Define the necessary bits in the CHANNEL, PAPEDELAY and GPIOCTL0
registers to can use them in the calls to vnt_mac_reg_bits_on and
vnt_mac_reg_bits_off functions. In this way, avoid the use of BIT()
macros and clarify the code.

Fixes: 3017e587e368 ("staging: vt6656: Use BIT() macro in vnt_mac_reg_bits_* functions")
Suggested-by: Dan Carpenter <dan.carpenter@oracle.com>
Signed-off-by: Oscar Carter <oscar.carter@gmx.com>
---
 drivers/staging/vt6656/baseband.c |  6 ++++--
 drivers/staging/vt6656/card.c     |  3 +--
 drivers/staging/vt6656/mac.h      | 12 ++++++++++++
 drivers/staging/vt6656/main_usb.c |  2 +-
 4 files changed, 18 insertions(+), 5 deletions(-)

diff --git a/drivers/staging/vt6656/baseband.c b/drivers/staging/vt6656/baseband.c
index a19a563d8bcc..dd3c3bf5e8b5 100644
--- a/drivers/staging/vt6656/baseband.c
+++ b/drivers/staging/vt6656/baseband.c
@@ -442,7 +442,8 @@ int vnt_vt3184_init(struct vnt_private *priv)
 		if (ret)
 			goto end;

-		ret = vnt_mac_reg_bits_on(priv, MAC_REG_PAPEDELAY, BIT(0));
+		ret = vnt_mac_reg_bits_on(priv, MAC_REG_PAPEDELAY,
+					  PAPEDELAY_B0);
 		if (ret)
 			goto end;
 	} else if (priv->rf_type == RF_VT3226D0) {
@@ -451,7 +452,8 @@ int vnt_vt3184_init(struct vnt_private *priv)
 		if (ret)
 			goto end;

-		ret = vnt_mac_reg_bits_on(priv, MAC_REG_PAPEDELAY, BIT(0));
+		ret = vnt_mac_reg_bits_on(priv, MAC_REG_PAPEDELAY,
+					  PAPEDELAY_B0);
 		if (ret)
 			goto end;
 	}
diff --git a/drivers/staging/vt6656/card.c b/drivers/staging/vt6656/card.c
index dc3ab10eb630..b88de0042b9d 100644
--- a/drivers/staging/vt6656/card.c
+++ b/drivers/staging/vt6656/card.c
@@ -64,8 +64,7 @@ void vnt_set_channel(struct vnt_private *priv, u32 connection_channel)
 	vnt_mac_reg_bits_on(priv, MAC_REG_MACCR, MACCR_CLRNAV);

 	/* Set Channel[7] = 0 to tell H/W channel is changing now. */
-	vnt_mac_reg_bits_off(priv, MAC_REG_CHANNEL,
-			     (BIT(7) | BIT(5) | BIT(4)));
+	vnt_mac_reg_bits_off(priv, MAC_REG_CHANNEL, CHANNEL_B7_B5_B4);

 	vnt_control_out(priv, MESSAGE_TYPE_SELECT_CHANNEL,
 			connection_channel, 0, 0, NULL);
diff --git a/drivers/staging/vt6656/mac.h b/drivers/staging/vt6656/mac.h
index c532b27de37f..f61b6595defb 100644
--- a/drivers/staging/vt6656/mac.h
+++ b/drivers/staging/vt6656/mac.h
@@ -295,11 +295,20 @@
 #define BBREGCTL_REGR		BIT(1)
 #define BBREGCTL_REGW		BIT(0)

+/* Bits in the CHANNEL register */
+#define CHANNEL_B7		BIT(7)
+#define CHANNEL_B5		BIT(5)
+#define CHANNEL_B4		BIT(4)
+#define CHANNEL_B7_B5_B4	(CHANNEL_B7 | CHANNEL_B5 | CHANNEL_B4)
+
 /* Bits in the IFREGCTL register */
 #define IFREGCTL_DONE		BIT(2)
 #define IFREGCTL_IFRF		BIT(1)
 #define IFREGCTL_REGW		BIT(0)

+/* Bits in the PAPEDELAY register */
+#define PAPEDELAY_B0		BIT(0)
+
 /* Bits in the SOFTPWRCTL register */
 #define SOFTPWRCTL_RFLEOPT	BIT(3)
 #define SOFTPWRCTL_TXPEINV	BIT(1)
@@ -311,6 +320,9 @@
 #define SOFTPWRCTL_SWPE1	BIT(1)
 #define SOFTPWRCTL_SWPE3	BIT(0)

+/* Bits in the GPIOCTL0 register */
+#define GPIOCTL0_B0		BIT(0)
+
 /* Bits in the GPIOCTL1 register */
 #define GPIO3_MD		BIT(5)
 #define GPIO3_DATA		BIT(6)
diff --git a/drivers/staging/vt6656/main_usb.c b/drivers/staging/vt6656/main_usb.c
index 8e7269c87ea9..aa9c1fccc134 100644
--- a/drivers/staging/vt6656/main_usb.c
+++ b/drivers/staging/vt6656/main_usb.c
@@ -366,7 +366,7 @@ static int vnt_init_registers(struct vnt_private *priv)
 	if (ret)
 		goto end;

-	ret = vnt_mac_reg_bits_on(priv, MAC_REG_GPIOCTL0, BIT(0));
+	ret = vnt_mac_reg_bits_on(priv, MAC_REG_GPIOCTL0, GPIOCTL0_B0);
 	if (ret)
 		goto end;

--
2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
