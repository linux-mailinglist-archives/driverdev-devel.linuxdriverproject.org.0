Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 652A72DEC5
	for <lists+driverdev-devel@lfdr.de>; Wed, 29 May 2019 15:45:50 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id DF36786CD7;
	Wed, 29 May 2019 13:45:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id TQkxP8IPn1c0; Wed, 29 May 2019 13:45:48 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id C30C686BB9;
	Wed, 29 May 2019 13:45:47 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id DE30B1BF238
 for <devel@linuxdriverproject.org>; Wed, 29 May 2019 13:45:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id DAA1587E24
 for <devel@linuxdriverproject.org>; Wed, 29 May 2019 13:45:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id XKGdVb5JPtOl for <devel@linuxdriverproject.org>;
 Wed, 29 May 2019 13:45:45 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f193.google.com (mail-pf1-f193.google.com
 [209.85.210.193])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 5620587E13
 for <devel@driverdev.osuosl.org>; Wed, 29 May 2019 13:45:45 +0000 (UTC)
Received: by mail-pf1-f193.google.com with SMTP id a186so973651pfa.5
 for <devel@driverdev.osuosl.org>; Wed, 29 May 2019 06:45:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=SqXIr30zs9BkbQwxZqBClCfv+cPq2d3qcgpjcAvAiGs=;
 b=NDUTPoej8DHpoO6KSmHJxoi0Aqrq9QJZ4odx6zA/FH6TPgcw14FNSc1bsCfcSiD+SL
 MGHrGq6xKY13oPdb50V2kwwdNPPO9K0XKEWk1YyRXDp3soMjQX5cbzMqjlJluGKijyHH
 5w5Dla4hkVxGi5PNWs0hyg0p24jKiPP4aqRjfEQPPh+bCoWCGpP1sxkqO0Nr9rf8zQ5M
 Z9ickGwsa8fR4YJh4a/wTZMiQQnQo12HuYlHQbyUCG79sNpfnp7/9gKEt5HWCHv+Kv7U
 WJbum9Q9Fl+Zzge/ENs/0aIRU7OvS3cAkKMU90v95Ek9yroY9DNkFNi2Cf3bWLCm5SH4
 Rvpg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=SqXIr30zs9BkbQwxZqBClCfv+cPq2d3qcgpjcAvAiGs=;
 b=c6Hfd6ihSpUQC6E4uUo4b/L6HIMaxg9YYVr6iq1nZNUGrf3MH5hqcsCeNWQp88FufO
 CzimKB7ypcJ4X3crP0FycfaVvgV2jb7aUPPxpRfhi4Fi90xZrujpr+1gDtO+n2S68m93
 WSJm333VObMylalw+fKA7VGNtc8K3DF+gu8PL7bx1+BRsmJn0dCqBqB9LgjShAitdpso
 o6TKFTGubQsTndMJ3YQukGkrBW0fOG9Hau5dcot1qYzmNkHqZLizISkijifhKPed9Agg
 tDKWqSfN7F39uYGdmK8HUigDAPyf9Iy5+H2sox99v70FHU9AuT63EDZQZzrDFtTgpkjs
 51DA==
X-Gm-Message-State: APjAAAUQfBl2FbOcIJ3VXuAlHkNNvEsr20cW/ala7U7lD1eMjznYB31S
 bkNVQaBwQZHfjI7+Z4k2QYU=
X-Google-Smtp-Source: APXvYqxkBYOuxK0amFtx5a1umiKDE8/BW7SY/HthJ8NUMLVqTshgv/urKr5MVe22K4m0foaujHyOVg==
X-Received: by 2002:aa7:8dcd:: with SMTP id j13mr47144454pfr.107.1559137544927; 
 Wed, 29 May 2019 06:45:44 -0700 (PDT)
Received: from localhost.localdomain ([122.163.67.155])
 by smtp.gmail.com with ESMTPSA id e5sm14299344pgh.35.2019.05.29.06.45.38
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 29 May 2019 06:45:43 -0700 (PDT)
From: Nishka Dasgupta <nishkadg.linux@gmail.com>
To: forest@alittletooquiet.net, gregkh@linuxfoundation.org,
 madhumithabiw@gmail.com, brandonbonaby94@gmail.com,
 devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Subject: [PATCH] staging: vt6655: Change return type of function and remove
 variable
Date: Wed, 29 May 2019 19:15:29 +0530
Message-Id: <20190529134529.8481-1-nishkadg.linux@gmail.com>
X-Mailer: git-send-email 2.19.1
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
Cc: Nishka Dasgupta <nishkadg.linux@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

As the function CARDbRadioPowerOff always returns true, and this value
does not appear to be used anywhere, the return variable can be entirely
removed and the function converted to type void.
Issue found with Coccinelle.

Signed-off-by: Nishka Dasgupta <nishkadg.linux@gmail.com>
---
 drivers/staging/vt6655/card.c | 56 ++++++++++++++++-------------------
 drivers/staging/vt6655/card.h |  2 +-
 2 files changed, 27 insertions(+), 31 deletions(-)

diff --git a/drivers/staging/vt6655/card.c b/drivers/staging/vt6655/card.c
index 6ecbe925026d..2aca5b38be5c 100644
--- a/drivers/staging/vt6655/card.c
+++ b/drivers/staging/vt6655/card.c
@@ -409,42 +409,38 @@ bool CARDbSetBeaconPeriod(struct vnt_private *priv,
  *  Out:
  *      none
  *
- * Return Value: true if success; otherwise false
+ * Return Value: none
  */
-bool CARDbRadioPowerOff(struct vnt_private *priv)
+void CARDbRadioPowerOff(struct vnt_private *priv)
 {
-	bool bResult = true;
-
-	if (priv->bRadioOff)
-		return true;
-
-	switch (priv->byRFType) {
-	case RF_RFMD2959:
-		MACvWordRegBitsOff(priv->PortOffset, MAC_REG_SOFTPWRCTL,
-				   SOFTPWRCTL_TXPEINV);
-		MACvWordRegBitsOn(priv->PortOffset, MAC_REG_SOFTPWRCTL,
-				  SOFTPWRCTL_SWPE1);
-		break;
+	if (!priv->bRadioOff) {
+		switch (priv->byRFType) {
+		case RF_RFMD2959:
+			MACvWordRegBitsOff(priv->PortOffset, MAC_REG_SOFTPWRCTL,
+					   SOFTPWRCTL_TXPEINV);
+			MACvWordRegBitsOn(priv->PortOffset, MAC_REG_SOFTPWRCTL,
+					  SOFTPWRCTL_SWPE1);
+			break;
 
-	case RF_AIROHA:
-	case RF_AL2230S:
-	case RF_AIROHA7230:
-		MACvWordRegBitsOff(priv->PortOffset, MAC_REG_SOFTPWRCTL,
-				   SOFTPWRCTL_SWPE2);
-		MACvWordRegBitsOff(priv->PortOffset, MAC_REG_SOFTPWRCTL,
-				   SOFTPWRCTL_SWPE3);
-		break;
-	}
+		case RF_AIROHA:
+		case RF_AL2230S:
+		case RF_AIROHA7230:
+			MACvWordRegBitsOff(priv->PortOffset, MAC_REG_SOFTPWRCTL,
+					   SOFTPWRCTL_SWPE2);
+			MACvWordRegBitsOff(priv->PortOffset, MAC_REG_SOFTPWRCTL,
+					   SOFTPWRCTL_SWPE3);
+			break;
+		}
 
-	MACvRegBitsOff(priv->PortOffset, MAC_REG_HOSTCR, HOSTCR_RXON);
+		MACvRegBitsOff(priv->PortOffset, MAC_REG_HOSTCR, HOSTCR_RXON);
 
-	BBvSetDeepSleep(priv, priv->byLocalID);
+		BBvSetDeepSleep(priv, priv->byLocalID);
 
-	priv->bRadioOff = true;
-	pr_debug("chester power off\n");
-	MACvRegBitsOn(priv->PortOffset, MAC_REG_GPIOCTL0,
-		      LED_ACTSET);  /* LED issue */
-	return bResult;
+		priv->bRadioOff = true;
+		pr_debug("chester power off\n");
+		MACvRegBitsOn(priv->PortOffset, MAC_REG_GPIOCTL0,
+			      LED_ACTSET);  /* LED issue */
+	}
 }
 
 /*
diff --git a/drivers/staging/vt6655/card.h b/drivers/staging/vt6655/card.h
index f422fb3c78bd..887c1692e05b 100644
--- a/drivers/staging/vt6655/card.h
+++ b/drivers/staging/vt6655/card.h
@@ -57,7 +57,7 @@ u64 CARDqGetTSFOffset(unsigned char byRxRate, u64 qwTSF1, u64 qwTSF2);
 unsigned char CARDbyGetPktType(struct vnt_private *priv);
 void CARDvSafeResetTx(struct vnt_private *priv);
 void CARDvSafeResetRx(struct vnt_private *priv);
-bool CARDbRadioPowerOff(struct vnt_private *priv);
+void CARDbRadioPowerOff(struct vnt_private *priv);
 bool CARDbRadioPowerOn(struct vnt_private *priv);
 bool CARDbSetPhyParameter(struct vnt_private *priv, u8 bb_type);
 bool CARDbUpdateTSF(struct vnt_private *priv, unsigned char byRxRate,
-- 
2.19.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
