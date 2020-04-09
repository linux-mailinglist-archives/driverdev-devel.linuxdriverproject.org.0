Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 034411A30A3
	for <lists+driverdev-devel@lfdr.de>; Thu,  9 Apr 2020 10:09:50 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 3622A24856;
	Thu,  9 Apr 2020 08:09:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id kIar2zzB38FP; Thu,  9 Apr 2020 08:09:47 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id C3A8722246;
	Thu,  9 Apr 2020 08:09:46 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 30ED11BF33B
 for <devel@linuxdriverproject.org>; Thu,  9 Apr 2020 08:09:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 297E286E42
 for <devel@linuxdriverproject.org>; Thu,  9 Apr 2020 08:09:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 68kGYLbLr8xZ for <devel@linuxdriverproject.org>;
 Thu,  9 Apr 2020 08:09:44 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f68.google.com (mail-wr1-f68.google.com
 [209.85.221.68])
 by whitealder.osuosl.org (Postfix) with ESMTPS id B3F5185168
 for <devel@driverdev.osuosl.org>; Thu,  9 Apr 2020 08:09:43 +0000 (UTC)
Received: by mail-wr1-f68.google.com with SMTP id 65so10865238wrl.1
 for <devel@driverdev.osuosl.org>; Thu, 09 Apr 2020 01:09:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=8sy4G5azWTKdTXq+AdUl0zD/LRk0rxdNkxqKpvpQpIY=;
 b=Ub+cvW4qPcoyju7stMqHNCY9mG4W16VmOP7o7wsid4KfyBJ7tVQAaip7m2mce5JNQO
 ZrwGiw/DAe1iLK4MjTlUkU/Ipmgyle2egAlE1fpaqWT2ezJ/dG8aAgA1y0+daQ5XLlp1
 8BmECLDJ6+QOgEn8Vjc5/iwsQmfLo0jgKyMgJUEedtTmKx+RK8J5Cs/puhxSzjzmRd/z
 za+JZ+7oYtbTZocIiokPVzcKbyLHdY5vSn9Vn/YZSj9dHUp0bo1qSHBejrdmfcL+vX9G
 o99r2crd17VMswUCfQ/rJJBTvuQcBBetCV3WXnkg7gRBTtUMn9qjD5XaWlivtFtYfoc9
 jgJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=8sy4G5azWTKdTXq+AdUl0zD/LRk0rxdNkxqKpvpQpIY=;
 b=rn0K9dJkiZhi8d+HwI6ReMspoQnuMgXrA43uZMZutBDCvcQpi/9IskGn2x4YSn5SL6
 itvik2EfMXVHvzIg9yOMcH6p6XQvQsumL70z5LXvSeIs9unPm27Zc4Xs3FvpRMwseW7Z
 7oEiyVgRk1qhVkAJdVW2YCRoRZut8hcFEwIZUlacl98OpkJkl3QaPnSm2FrjiDJE/f/7
 INQ5RQExix61FIlclv8ldxthZ2lgbvLJoZXeNjLfLdL+CPYvFEuHVhppPbqFzLZ75h4r
 ofieAu9LTSBlxu3JQWR+nUKeWfoBOOUJ7k2GNZJII5sguN20MzHbYHQqXrnmzZyiqp1u
 lw0Q==
X-Gm-Message-State: AGi0PuZejIzctK/qobt2kHIjbIj4OF4/qaA9vMIpz2U0flphcL1h/D4j
 GAbyNVDAatNpR80h9Bx6oz8=
X-Google-Smtp-Source: APiQypKOBXf1impEVnCXiydzFXK12RgSkh6b1k6ncuRlmPQvU/JwtvGTu4paHsopdxtGdAYzF8Nizg==
X-Received: by 2002:a5d:43c6:: with SMTP id v6mr4059110wrr.395.1586419782074; 
 Thu, 09 Apr 2020 01:09:42 -0700 (PDT)
Received: from localhost.localdomain
 (dslb-092-073-054-213.092.073.pools.vodafone-ip.de. [92.73.54.213])
 by smtp.gmail.com with ESMTPSA id m15sm2648283wmc.35.2020.04.09.01.09.40
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 09 Apr 2020 01:09:41 -0700 (PDT)
From: Michael Straube <straube.linux@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH] staging: rtl8188eu: remove 5 GHz if test
Date: Thu,  9 Apr 2020 10:08:02 +0200
Message-Id: <20200409080802.16645-1-straube.linux@gmail.com>
X-Mailer: git-send-email 2.26.0
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
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
 Larry.Finger@lwfinger.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Cleanup a line over 80 characters by removing an if test that is valid
only for 5 GHz. According to the TODO 5 GHz code should be removed.

- find and remove remaining code valid only for 5 GHz. Most of the obvious
  ones have been removed, but things like channel > 14 still exist.

Signed-off-by: Michael Straube <straube.linux@gmail.com>
---
 drivers/staging/rtl8188eu/core/rtw_mlme_ext.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8188eu/core/rtw_mlme_ext.c b/drivers/staging/rtl8188eu/core/rtw_mlme_ext.c
index bce777e4bf6c..8d035f67ef61 100644
--- a/drivers/staging/rtl8188eu/core/rtw_mlme_ext.c
+++ b/drivers/staging/rtl8188eu/core/rtw_mlme_ext.c
@@ -1781,7 +1781,7 @@ static void issue_action_BSSCoexistPacket(struct adapter *padapter)
 
 			p = rtw_get_ie(pbss_network->ies + _FIXED_IE_LENGTH_, _HT_CAPABILITY_IE_, &len, pbss_network->ie_length - _FIXED_IE_LENGTH_);
 			if (!p || len == 0) { /* non-HT */
-				if ((pbss_network->Configuration.DSConfig <= 0) || (pbss_network->Configuration.DSConfig > 14))
+				if (pbss_network->Configuration.DSConfig <= 0)
 					continue;
 
 				ICS[0][pbss_network->Configuration.DSConfig] = 1;
-- 
2.26.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
