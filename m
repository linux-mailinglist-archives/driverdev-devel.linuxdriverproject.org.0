Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id CE3D522496F
	for <lists+driverdev-devel@lfdr.de>; Sat, 18 Jul 2020 08:58:12 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id BA752877D1;
	Sat, 18 Jul 2020 06:58:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id hJZPHn4bbnVh; Sat, 18 Jul 2020 06:58:10 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 17602877AB;
	Sat, 18 Jul 2020 06:58:09 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 3BDC61BF5F8
 for <devel@linuxdriverproject.org>; Sat, 18 Jul 2020 06:58:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 31A0988007
 for <devel@linuxdriverproject.org>; Sat, 18 Jul 2020 06:58:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id EbXTGoQh-zsJ for <devel@linuxdriverproject.org>;
 Sat, 18 Jul 2020 06:58:06 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f68.google.com (mail-wr1-f68.google.com
 [209.85.221.68])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 251F788020
 for <devel@driverdev.osuosl.org>; Sat, 18 Jul 2020 06:58:06 +0000 (UTC)
Received: by mail-wr1-f68.google.com with SMTP id z15so13218667wrl.8
 for <devel@driverdev.osuosl.org>; Fri, 17 Jul 2020 23:58:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=TjgzLnntMqyR4iw5HYm5Wn13YkqCTneXtgN6zeUHap4=;
 b=r72XjXYGJjf/KxWyAu0wVQikYmQ2VwI9NGj6g3nIE9OaYb8RV3SBjMyRky+Cho90Xe
 cOKWmg4gzZJJTc6nLhNNi15qjiXSEUgNrjBwO6H3v3Y3CfozuBEKa2HQoAPBu5KpgcnC
 K5bv1E3iXmB4y7KExMH8IbsfQ0agBH/XSz27WkaloayNrbKA05gbXvz1Ow6NTJ2oldJY
 UjVhVbEo2D7t5k1dpXnisUFa37DslfxyO/6YcMpPvwqgzpbEDowyx1wASHBE/C0sWJG6
 3cZ3gqQWEU/C3VydulDz+Io+EhBqZsDE/xUDF5ztfvcrFGVdUGP/Yrs5G5M0S6xZyUQn
 mlvw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=TjgzLnntMqyR4iw5HYm5Wn13YkqCTneXtgN6zeUHap4=;
 b=RtB57LqrRupRFUpYEPrl/FmY1+1s2nbwCeX9Xv1Df0Ui9sy2+lBLXv4Sq3xsZHBocx
 GyfyLBHwseGam+PUX6Ly6qPY25gKEsulsBvCcwTiDwgcxELdvQuQ/TqrrqfVep/C6/HP
 vmjeG7GLkEMWu+oe6Wip/7zupC898kH1UtEC7GIKOuIL22sjQyN4vnYI0OrOT6srjxwp
 aISb2orvElIJaBR8bwETwMXrXuzjalBFmPLvYn1NRv2KZ7jTrzyP7vh0X5CjihmS+NYX
 uTDypdlEPvmjiRTmETAfel4HysWwvEKkDSTliLFn7qxMyT5FeNPy12hoDalnOzZO3ESn
 f6jw==
X-Gm-Message-State: AOAM532sco//iCbL4cjwFw20rUOycTDGM3me07xqCmny4NkfUchkH8Ly
 KR97ugeGMCQCyUs/L/Osoe4=
X-Google-Smtp-Source: ABdhPJxr09Wle5letJhcuWVOT+IwP/rPKtKvkpvcjIDD2+ZMra8NjiVc9MN+EncWhfdTcNPjmeDJdQ==
X-Received: by 2002:a5d:55c9:: with SMTP id i9mr128080wrw.31.1595055484444;
 Fri, 17 Jul 2020 23:58:04 -0700 (PDT)
Received: from localhost.localdomain
 (dslb-002-204-142-170.002.204.pools.vodafone-ip.de. [2.204.142.170])
 by smtp.gmail.com with ESMTPSA id 32sm409015wrn.86.2020.07.17.23.58.03
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 17 Jul 2020 23:58:03 -0700 (PDT)
From: Michael Straube <straube.linux@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH] staging: rtl8188eu: clear tabstop style issues
Date: Sat, 18 Jul 2020 08:55:14 +0200
Message-Id: <20200718065514.16289-1-straube.linux@gmail.com>
X-Mailer: git-send-email 2.27.0
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

Clear tabstop style issues reported by checkpatch.
WARNING: Statements should start on a tabstop

Signed-off-by: Michael Straube <straube.linux@gmail.com>
---
 drivers/staging/rtl8188eu/core/rtw_ioctl_set.c    | 2 +-
 drivers/staging/rtl8188eu/hal/rtl8188e_hal_init.c | 2 +-
 drivers/staging/rtl8188eu/os_dep/ioctl_linux.c    | 2 +-
 3 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/rtl8188eu/core/rtw_ioctl_set.c b/drivers/staging/rtl8188eu/core/rtw_ioctl_set.c
index fa88e8b2852d..26e5193cfd6c 100644
--- a/drivers/staging/rtl8188eu/core/rtw_ioctl_set.c
+++ b/drivers/staging/rtl8188eu/core/rtw_ioctl_set.c
@@ -343,7 +343,7 @@ u8 rtw_set_802_11_infrastructure_mode(struct adapter *padapter,
 		    *pold_state == Ndis802_11IBSS) {
 			if (check_fwstate(pmlmepriv, _FW_LINKED))
 				rtw_indicate_disconnect(padapter); /* will clr Linked_state; before this function, we must have checked whether  issue dis-assoc_cmd or not */
-	       }
+		}
 
 		*pold_state = networktype;
 
diff --git a/drivers/staging/rtl8188eu/hal/rtl8188e_hal_init.c b/drivers/staging/rtl8188eu/hal/rtl8188e_hal_init.c
index 740004d71a15..2baef9a285c0 100644
--- a/drivers/staging/rtl8188eu/hal/rtl8188e_hal_init.c
+++ b/drivers/staging/rtl8188eu/hal/rtl8188e_hal_init.c
@@ -145,7 +145,7 @@ void rtw_hal_set_odm_var(struct adapter *Adapter, enum hal_odm_variable eVariabl
 			} else {
 				DBG_88E("### Clean STA_(%d) info\n", psta->mac_id);
 				ODM_CmnInfoPtrArrayHook(podmpriv, ODM_CMNINFO_STA_STATUS, psta->mac_id, NULL);
-		       }
+			}
 		}
 		break;
 	case HAL_ODM_P2P_STATE:
diff --git a/drivers/staging/rtl8188eu/os_dep/ioctl_linux.c b/drivers/staging/rtl8188eu/os_dep/ioctl_linux.c
index 5e6f7f0ed009..2e83d24fcb09 100644
--- a/drivers/staging/rtl8188eu/os_dep/ioctl_linux.c
+++ b/drivers/staging/rtl8188eu/os_dep/ioctl_linux.c
@@ -811,7 +811,7 @@ static int rtw_wx_set_pmkid(struct net_device *dev,
 				psecuritypriv->PMKIDList[j].bUsed = false;
 				break;
 			}
-	       }
+		}
 	} else if (pPMK->cmd == IW_PMKSA_FLUSH) {
 		DBG_88E("[rtw_wx_set_pmkid] IW_PMKSA_FLUSH!\n");
 		memset(&psecuritypriv->PMKIDList[0], 0x00, sizeof(struct rt_pmkid_list) * NUM_PMKID_CACHE);
-- 
2.27.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
