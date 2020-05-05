Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F4791C62FF
	for <lists+driverdev-devel@lfdr.de>; Tue,  5 May 2020 23:23:49 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id CCFA288855;
	Tue,  5 May 2020 21:23:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id bof5-bBXRJwU; Tue,  5 May 2020 21:23:46 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 4505C887DE;
	Tue,  5 May 2020 21:23:46 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 8151F1BF3D4
 for <devel@linuxdriverproject.org>; Tue,  5 May 2020 21:23:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 7B14C87EE3
 for <devel@linuxdriverproject.org>; Tue,  5 May 2020 21:23:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id sPjD0UjWQI3B for <devel@linuxdriverproject.org>;
 Tue,  5 May 2020 21:23:43 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f67.google.com (mail-wr1-f67.google.com
 [209.85.221.67])
 by whitealder.osuosl.org (Postfix) with ESMTPS id E235A87ED1
 for <devel@driverdev.osuosl.org>; Tue,  5 May 2020 21:23:42 +0000 (UTC)
Received: by mail-wr1-f67.google.com with SMTP id g13so4419356wrb.8
 for <devel@driverdev.osuosl.org>; Tue, 05 May 2020 14:23:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:subject:to:cc:message-id:date:user-agent:mime-version
 :content-language:content-transfer-encoding;
 bh=nU+A5TMfpnhcyGzbsuMUAVDKxSLjs8/9QIBpNm3kqMo=;
 b=mB6xLdxBFVdspDqi17lt9VZI3EAv/VRjLHnt1uPx+R5eOLxbJZcuFCJv5w287cZh+g
 ePaRVKxNasKWSGgwLpsw+urQwK5PDCNTHsaDFq//nvXQmtaCWAf5EZkiW+JfK6sH+v2U
 TDh8VKYVCOtGrkJN27PSWahuAVVWMndC5KRYPYKvRGTeKMTwwvRQslv6OTK5ESPZCs93
 Lwq2WgLB1/xUyaZq+/R/jNfwud53nHWCYbOaXDvMW62T7csiMNXSLwGd0iWvdcLX/NAx
 uJKxayEC24igSdWhVSiLZNOVOfRfolYDhNyB58NL4riTIAcMCkKMB4+1VVfS1mt4KyEf
 OkVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:subject:to:cc:message-id:date:user-agent
 :mime-version:content-language:content-transfer-encoding;
 bh=nU+A5TMfpnhcyGzbsuMUAVDKxSLjs8/9QIBpNm3kqMo=;
 b=mrDmQkf5uZAdGNw5ca8ATpWc4LDUX7wKXIoYI+vVEn5XZh95rJwBPK/cZyaYQUZKi/
 XTBBflCz/jyPhXO6Z6+HMyhgi3Lms2678K3DCm2leqCBCpm8MlnZxel8wyl/0J6wF4bP
 8keQfgbzIjM5Wj1bR3Ntn0kEBbqLZEuY5AGKQBw+U3UoqjFMl7teZXM0laYu8LeWPem5
 f36kv3gyG2Pu5AhI5x0TMrhwAbx87unPHCmQd+RMWmLEs5Ey1L3/WinO0Nb+ojrurxUH
 m1VNdKWXe8Ij3ggQbJLjxOPmJR5SPB9f//bXUpS6AGk/qpMDox7fr8ae8EojuNsQCE/L
 lwUg==
X-Gm-Message-State: AGi0PuagDRP6GbavEphlMxxiHwjzgMzWNCSNn5ZjnsCXtINgAYYSrJd8
 aa9JNT+XwyVh9TjWl2SuNog=
X-Google-Smtp-Source: APiQypLj/aYuGd1u09nc2v/HP1xojnf3KnNRLT3WwofJoP+DSQEKNLYanQZX0DDOrOTpJXyhGEwWmw==
X-Received: by 2002:a5d:6692:: with SMTP id l18mr6125761wru.423.1588713821365; 
 Tue, 05 May 2020 14:23:41 -0700 (PDT)
Received: from [192.168.43.18] (188.29.165.117.threembb.co.uk.
 [188.29.165.117])
 by smtp.gmail.com with ESMTPSA id a9sm5573954wmm.38.2020.05.05.14.23.40
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 05 May 2020 14:23:41 -0700 (PDT)
From: Malcolm Priestley <tvboxspy@gmail.com>
Subject: [PATCH 6/6] staging: vt6656: remove difs / sifs adjustments.
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Message-ID: <034e445c-b245-52c4-c855-431b9783bcff@gmail.com>
Date: Tue, 5 May 2020 22:23:39 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
Content-Language: en-US
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
Cc: "devel@driverdev.osuosl.org" <devel@driverdev.osuosl.org>,
 Oscar Carter <oscar.carter@gmx.com>, linux-wireless@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Now mac89211 is doing frame timing in rxtx these vendor adjustments need
to be removed.

Signed-off-by: Malcolm Priestley <tvboxspy@gmail.com>
---
 drivers/staging/vt6656/card.c | 32 --------------------------------
 1 file changed, 32 deletions(-)

diff --git a/drivers/staging/vt6656/card.c b/drivers/staging/vt6656/card.c
index 3cb97c4daeb8..10f3dfda83b5 100644
--- a/drivers/staging/vt6656/card.c
+++ b/drivers/staging/vt6656/card.c
@@ -149,38 +149,6 @@ int vnt_update_ifs(struct vnt_private *priv)
 
 	priv->eifs = C_EIFS;
 
-	switch (priv->rf_type) {
-	case RF_VT3226D0:
-		if (priv->bb_type != BB_TYPE_11B) {
-			priv->sifs -= 1;
-			priv->difs -= 1;
-			break;
-		}
-		/* fall through */
-	case RF_AIROHA7230:
-	case RF_AL2230:
-	case RF_AL2230S:
-		if (priv->bb_type != BB_TYPE_11B)
-			break;
-		/* fall through */
-	case RF_RFMD2959:
-	case RF_VT3226:
-	case RF_VT3342A0:
-		priv->sifs -= 3;
-		priv->difs -= 3;
-		break;
-	case RF_MAXIM2829:
-		if (priv->bb_type == BB_TYPE_11A) {
-			priv->sifs -= 5;
-			priv->difs -= 5;
-		} else {
-			priv->sifs -= 2;
-			priv->difs -= 2;
-		}
-
-		break;
-	}
-
 	data[0] = (u8)priv->sifs;
 	data[1] = (u8)priv->difs;
 	data[2] = (u8)priv->eifs;
-- 
2.25.1
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
