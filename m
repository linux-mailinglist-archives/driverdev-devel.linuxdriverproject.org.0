Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 4719A313DF
	for <lists+driverdev-devel@lfdr.de>; Fri, 31 May 2019 19:32:58 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 9C9D9876BE;
	Fri, 31 May 2019 17:32:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id k3K-R-ct1pyb; Fri, 31 May 2019 17:32:54 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 3E9E9875B1;
	Fri, 31 May 2019 17:32:53 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 43A711BF616
 for <devel@linuxdriverproject.org>; Fri, 31 May 2019 17:32:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 2D3EB87595
 for <devel@linuxdriverproject.org>; Fri, 31 May 2019 17:32:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id cXEmEQgfqaaI for <devel@linuxdriverproject.org>;
 Fri, 31 May 2019 17:32:50 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f196.google.com (mail-pl1-f196.google.com
 [209.85.214.196])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 5E4C287589
 for <devel@driverdev.osuosl.org>; Fri, 31 May 2019 17:32:50 +0000 (UTC)
Received: by mail-pl1-f196.google.com with SMTP id e7so3801675pln.4
 for <devel@driverdev.osuosl.org>; Fri, 31 May 2019 10:32:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=GubS+arfOZNAUjicwzdrEl/ueLaaOn8vkPvMNsjgz6Y=;
 b=W+haEbGknQ/drf9bb0vWglr3IUlfC8m4m004aUwefq1NU03QWNzAWYYN7Ma+aAfhYF
 ZBzRYK7QtUL/olblfxqBidTiln2jezhXCx+eJ9w5V5fENE4zTinzlaoEBticN8aLSeWS
 4/5IbpsqkF+mshEbWRELH3+rMG3GlF267Bwg8f1NkKkORLlsDA5L+SLhHfaiO4xqTDjz
 2EgIJobgYi2H6eT1BaxMd+RjpQgKj35gLu22fo1HbFOPJzeN3aYqWASMzlfzisThffm3
 6Iy6SRqTwqNjk2P5ZXaRuFrYuhHuA/E/6m3v9eTLjHbqDJxR+I+w6MbWvDJ6PN17ZgM5
 CXSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=GubS+arfOZNAUjicwzdrEl/ueLaaOn8vkPvMNsjgz6Y=;
 b=AbXL8OTkxu4JVWlIhY33vZ+MaVYN5KD6Com8EpJYzZ2VvEtOZclrqBnbVkcIx55Qix
 gxmpwQNsNDqY1QPZxqNZQ/nzygFe2gZnXr0dqwXUqDDnpjz2v32qa2cfjrbzXAvwcDQU
 /W8BmNNuY9lEZZB17cZ7T2O/8Y9e+a6EnlZnwImiAWFATNqHhpvSvAPSlOGrb/TT70vu
 8cuRaRtJkRS0huDp5aYGiNMmXq2wXSFL2wQC/zbIX21MlunoHkxVAhuJNACfg/FP5Tic
 Q/10+n/GcMgA+CRR1hyFe+EGASl3ytvC3m69iISQvSILq5zaKbrBY7Hkc0L7vjzVBDvl
 os3w==
X-Gm-Message-State: APjAAAXVsEBInW+uYDH1zYUFNFYWLmexRpPVN1pLK79krVhMsK/c9nwM
 oE8I+KqbuX1wy04djU2n1AY=
X-Google-Smtp-Source: APXvYqz9x5GBZktyYUKj15ZWH+z13Jr1JKwzJ3DHOPsiUCAl2Bm8zAy/O3Hd7HG48J+dJKBBmyAPCA==
X-Received: by 2002:a17:902:e40f:: with SMTP id
 ci15mr11169483plb.280.1559323970122; 
 Fri, 31 May 2019 10:32:50 -0700 (PDT)
Received: from localhost.localdomain ([157.40.16.227])
 by smtp.gmail.com with ESMTPSA id d13sm11340180pfh.113.2019.05.31.10.32.43
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 31 May 2019 10:32:46 -0700 (PDT)
From: Nishka Dasgupta <nishkadg.linux@gmail.com>
To: gregkh@linuxfoundation.org, forest@alittletooquiet.net,
 devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Subject: [PATCH v2] staging: vt6655: Change return type of function and remove
 variable
Date: Fri, 31 May 2019 23:02:26 +0530
Message-Id: <20190531173226.15236-1-nishkadg.linux@gmail.com>
X-Mailer: git-send-email 2.19.1
In-Reply-To: <20190530211513.GA25966@kroah.com>
References: <20190530211513.GA25966@kroah.com>
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

Remove return variable bResult from function CARDbRadioPowerOff and
change the return type of the function to void as it always returns true
and the return value is never stored nor checked when called.
Issue found with Coccinelle.

Signed-off-by: Nishka Dasgupta <nishkadg.linux@gmail.com>
---
 drivers/staging/vt6655/card.c | 8 ++------
 drivers/staging/vt6655/card.h | 2 +-
 2 files changed, 3 insertions(+), 7 deletions(-)

diff --git a/drivers/staging/vt6655/card.c b/drivers/staging/vt6655/card.c
index 6ecbe925026d..eba4ee0750dc 100644
--- a/drivers/staging/vt6655/card.c
+++ b/drivers/staging/vt6655/card.c
@@ -409,14 +409,11 @@ bool CARDbSetBeaconPeriod(struct vnt_private *priv,
  *  Out:
  *      none
  *
- * Return Value: true if success; otherwise false
  */
-bool CARDbRadioPowerOff(struct vnt_private *priv)
+void CARDbRadioPowerOff(struct vnt_private *priv)
 {
-	bool bResult = true;
-
 	if (priv->bRadioOff)
-		return true;
+		return;
 
 	switch (priv->byRFType) {
 	case RF_RFMD2959:
@@ -444,7 +441,6 @@ bool CARDbRadioPowerOff(struct vnt_private *priv)
 	pr_debug("chester power off\n");
 	MACvRegBitsOn(priv->PortOffset, MAC_REG_GPIOCTL0,
 		      LED_ACTSET);  /* LED issue */
-	return bResult;
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
