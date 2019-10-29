Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id C6929E913E
	for <lists+driverdev-devel@lfdr.de>; Tue, 29 Oct 2019 22:09:29 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 591E3842B8;
	Tue, 29 Oct 2019 21:09:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id fBrhO2jTOeji; Tue, 29 Oct 2019 21:09:26 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 129D1824B0;
	Tue, 29 Oct 2019 21:09:26 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 71FD71BF339
 for <devel@linuxdriverproject.org>; Tue, 29 Oct 2019 21:09:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 6F01A81EE9
 for <devel@linuxdriverproject.org>; Tue, 29 Oct 2019 21:09:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id bCoXV-JPd6II for <devel@linuxdriverproject.org>;
 Tue, 29 Oct 2019 21:09:23 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-qk1-f194.google.com (mail-qk1-f194.google.com
 [209.85.222.194])
 by whitealder.osuosl.org (Postfix) with ESMTPS id D23DF81EE6
 for <devel@driverdev.osuosl.org>; Tue, 29 Oct 2019 21:09:22 +0000 (UTC)
Received: by mail-qk1-f194.google.com with SMTP id m16so14400qki.11
 for <devel@driverdev.osuosl.org>; Tue, 29 Oct 2019 14:09:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:mime-version:content-disposition
 :user-agent; bh=J8cn+LNGBQlD5QlWJmme2gIbrHVQ0+7rWGrSL4Madoo=;
 b=eU3Ih22bpawbGnzb3bGBkrltarVhNzNANX8Gi9sC1W/1OsqTeSKiQ5X7SFx9v4g5C3
 4QSgxgJ+zrtYy/QE6PnxHOsqRjVV4E2iq0QPATe+6X6DdS8M35i4nIRmes+O0AjhMWfg
 WecszofhOAuQQK57u2rFdRhDj9RXtnBqI37pzfvIlAZKKu2XREGjGfvM1KulrQ5hJoa5
 Pv8plj4m9enFLqbxuAcNtMXb79xKWUVFwvUKE6Y5lSR0LlQjr2DT92MJyVFLW1pjBmN2
 G+K9JKQ91sSg42L5ZJYyoFoevWxIJohi8NFtmguCC49zYia8Xnaov6nO3PdvEHjXcvvv
 kmVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=J8cn+LNGBQlD5QlWJmme2gIbrHVQ0+7rWGrSL4Madoo=;
 b=qvkTw6s5xaKkzCIvNdtVEya9Q7cPBIgS3TIeg7dMqvJHIgD1h9bLC7HLN/71952Udm
 g899mSEo2mqWhQF8M5Y3VNdsgnBHxXsSehSp3lVyvgTjXv1B/Nb4dvDNd59wDCnEyjkt
 qiEpHmORdeFxM6R2oq+x8iaOlCo7A7/J+a+hRxtt/1sk66hp552P+MEvRCg4IGNZM+jd
 /kEYUzEYthVPKOJwGHnQ3uEbB9fTu9AUUUPvXjpiaik8JnV7+xkZVkMlCVo3ItLtRk72
 r5WBYbJ6HL5WVhJP/0ifhxfNGCi9Tl3CT3I+qs6Z/Jcv05jvXoIGD5Yxmf1inUUPRCEH
 w1xQ==
X-Gm-Message-State: APjAAAUnusBGY5BDTB6w3i/gyejn1Ej2BT5wCvmY9T+LYuEn1MtzlGM7
 BLLV6GprgaIQ4BMLgykC5HE=
X-Google-Smtp-Source: APXvYqy4Q80NlhxmpzE820ofaWQtg8/V1FvT3ajwFjjmIjCMUgaNaoADZ61QvHMsoYKopuXyfUTilA==
X-Received: by 2002:a05:620a:14bc:: with SMTP id
 x28mr23246894qkj.433.1572383361937; 
 Tue, 29 Oct 2019 14:09:21 -0700 (PDT)
Received: from cristiane-Inspiron-5420 ([131.100.148.220])
 by smtp.gmail.com with ESMTPSA id 4sm8078335qtf.87.2019.10.29.14.09.19
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 29 Oct 2019 14:09:21 -0700 (PDT)
Date: Tue, 29 Oct 2019 18:09:17 -0300
From: Cristiane Naves <cristianenavescardoso09@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: vt6655: Fix lines ending with parentheses
Message-ID: <20191029210917.GA14956@cristiane-Inspiron-5420>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)
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
 Forest Bond <forest@alittletooquiet.net>, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Fix lines ending with parentheses. Issue found by checkpatch.

Signed-off-by: Cristiane Naves <cristianenavescardoso09@gmail.com>
---
 drivers/staging/vt6655/card.c | 24 ++++++++----------------
 1 file changed, 8 insertions(+), 16 deletions(-)

diff --git a/drivers/staging/vt6655/card.c b/drivers/staging/vt6655/card.c
index eba4ee0..e65c982 100644
--- a/drivers/staging/vt6655/card.c
+++ b/drivers/staging/vt6655/card.c
@@ -79,14 +79,10 @@ static void s_vCalculateOFDMRParameter(unsigned char byRate, u8 bb_type,
  *
  * Return Value: none
  */
-static
-void
-s_vCalculateOFDMRParameter(
-	unsigned char byRate,
-	u8 bb_type,
-	unsigned char *pbyTxRate,
-	unsigned char *pbyRsvTime
-)
+static void s_vCalculateOFDMRParameter(unsigned char byRate,
+				       u8 bb_type,
+				       unsigned char *pbyTxRate,
+				       unsigned char *pbyRsvTime)
 {
 	switch (byRate) {
 	case RATE_6M:
@@ -736,8 +732,7 @@ void CARDvSetRSPINF(struct vnt_private *priv, u8 bb_type)
 	VNSvOutPortW(priv->PortOffset + MAC_REG_RSPINF_A_24,
 		     MAKEWORD(byTxRate, byRsvTime));
 	/* RSPINF_a_36 */
-	s_vCalculateOFDMRParameter(CARDwGetOFDMControlRate(
-							   (void *)priv,
+	s_vCalculateOFDMRParameter(CARDwGetOFDMControlRate((void *)priv,
 							   RATE_36M),
 				   bb_type,
 				   &byTxRate,
@@ -745,8 +740,7 @@ void CARDvSetRSPINF(struct vnt_private *priv, u8 bb_type)
 	VNSvOutPortW(priv->PortOffset + MAC_REG_RSPINF_A_36,
 		     MAKEWORD(byTxRate, byRsvTime));
 	/* RSPINF_a_48 */
-	s_vCalculateOFDMRParameter(CARDwGetOFDMControlRate(
-							   (void *)priv,
+	s_vCalculateOFDMRParameter(CARDwGetOFDMControlRate((void *)priv,
 							   RATE_48M),
 				   bb_type,
 				   &byTxRate,
@@ -754,8 +748,7 @@ void CARDvSetRSPINF(struct vnt_private *priv, u8 bb_type)
 	VNSvOutPortW(priv->PortOffset + MAC_REG_RSPINF_A_48,
 		     MAKEWORD(byTxRate, byRsvTime));
 	/* RSPINF_a_54 */
-	s_vCalculateOFDMRParameter(CARDwGetOFDMControlRate(
-							   (void *)priv,
+	s_vCalculateOFDMRParameter(CARDwGetOFDMControlRate((void *)priv,
 							   RATE_54M),
 				   bb_type,
 				   &byTxRate,
@@ -763,8 +756,7 @@ void CARDvSetRSPINF(struct vnt_private *priv, u8 bb_type)
 	VNSvOutPortW(priv->PortOffset + MAC_REG_RSPINF_A_54,
 		     MAKEWORD(byTxRate, byRsvTime));
 	/* RSPINF_a_72 */
-	s_vCalculateOFDMRParameter(CARDwGetOFDMControlRate(
-							   (void *)priv,
+	s_vCalculateOFDMRParameter(CARDwGetOFDMControlRate((void *)priv,
 							   RATE_54M),
 				   bb_type,
 				   &byTxRate,
-- 
2.7.4

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
