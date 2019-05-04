Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id D12EE13BCA
	for <lists+driverdev-devel@lfdr.de>; Sat,  4 May 2019 20:44:29 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 0A1A787E4A;
	Sat,  4 May 2019 18:44:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id oJDsX1aYVog4; Sat,  4 May 2019 18:44:26 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 805E387916;
	Sat,  4 May 2019 18:44:26 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id A7CA41BF5F5
 for <devel@linuxdriverproject.org>; Sat,  4 May 2019 18:44:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id A4A7887916
 for <devel@linuxdriverproject.org>; Sat,  4 May 2019 18:44:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id uCVDkGozLBH1 for <devel@linuxdriverproject.org>;
 Sat,  4 May 2019 18:44:24 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f196.google.com (mail-pg1-f196.google.com
 [209.85.215.196])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 423AE878FE
 for <devel@driverdev.osuosl.org>; Sat,  4 May 2019 18:44:24 +0000 (UTC)
Received: by mail-pg1-f196.google.com with SMTP id i21so4347133pgi.12
 for <devel@driverdev.osuosl.org>; Sat, 04 May 2019 11:44:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=iZgd18AmQtLNRzwkoX+rPoe+HzMyoRmLac3vzm0iiVE=;
 b=TL7CjCO/wA82EXgK8lUJr8DDKvfi+e9E78NJEwMkyADQG/aQxrnpCQWTc7RrcePeAi
 UR9elt3dtRKzou3vGur6M1PyyharAJ86dmr7qZahhKSqBmMn3Ni3XwfADLcHPtvYGoMV
 5nxm82AU4VvMfqEFWDdzmhBb+ZAewhqwZ6Kc3cA2h4f3TUl0U9FDjs4Varjr41zzaozn
 AHsRh6zxrWhEKWHKRcynIXA2vQcmuuTyZS4GhhwIYyDllsdGDuhGrpo/0J9OyFFrf6M9
 TItX1r0ohDSOz0dYY/EtTXvQ4aAbMCuCVY7sfYJkVtIOPMun5BiGx67M3HfjuaK7x48D
 xFPQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=iZgd18AmQtLNRzwkoX+rPoe+HzMyoRmLac3vzm0iiVE=;
 b=s+NMOGn7Qg2T6YSgehpkbr6gGeo63B9Tc6JQmPfNzFRk3ShJCR+3xSlu5U2l1Pk8if
 9+AUajHT+Lve/7wDJHfUgbeBA+gtsX8Ro8QjbhAmUTzQh+YQqEEFf1TZujddHiWlW7Bx
 +VUxg1ojr2AwUD6r2kfPXjnMaU+Hg5c1TAVLZme/iLvNiFOedqXuJPKEFmrxEv1X54Wz
 CjPhHaV81HGqWcrqGjkxBIoD6N4KEasT3CXkL4YY7D5G6zZ05r8rENcrAyxmh3lzcP+K
 CJkB+X82F9uTDaqeaN7P9zPeaitLPVHpO/Im+TcHQdcYMZsQ3Q0EUQEBL7Rj7Mpouz8i
 CLtQ==
X-Gm-Message-State: APjAAAUW+ZnzadgYWShspc1Y6Sj8ltuO8EJuUenlykFU4EZVMtLIOjPw
 GRncnhWh8P5/+ILbM9HrJbc=
X-Google-Smtp-Source: APXvYqzgTAozSw3ZqL0CfGsQxC+BOH3/PoaULtaz8IVi6MkWFx9TZ5XQ5Ilz3W+SgAV+qFEPzhyxiw==
X-Received: by 2002:aa7:8296:: with SMTP id s22mr13348357pfm.52.1556995463860; 
 Sat, 04 May 2019 11:44:23 -0700 (PDT)
Received: from localhost.localdomain ([103.87.57.241])
 by smtp.gmail.com with ESMTPSA id m131sm16730778pfc.25.2019.05.04.11.44.20
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 04 May 2019 11:44:23 -0700 (PDT)
From: Vatsala Narang <vatsalanarang@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH 2/7] staging: rtl8723bs: core: Remove return in void function.
Date: Sun,  5 May 2019 00:13:58 +0530
Message-Id: <20190504184358.25632-1-vatsalanarang@gmail.com>
X-Mailer: git-send-email 2.17.1
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
Cc: devel@driverdev.osuosl.org, julia.lawall@lip6.fr,
 linux-kernel@vger.kernel.org, hdegoede@redhat.com, hadess@hadess.net,
 Vatsala Narang <vatsalanarang@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Remove return in void function to get rid of checkpatch warning.

Signed-off-by: Vatsala Narang <vatsalanarang@gmail.com>
---
 drivers/staging/rtl8723bs/core/rtw_mlme_ext.c | 10 ----------
 1 file changed, 10 deletions(-)

diff --git a/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c b/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c
index 00d84d34da97..a7c22e5e3559 100644
--- a/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c
+++ b/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c
@@ -3097,8 +3097,6 @@ void issue_auth(struct adapter *padapter, struct sta_info *psta, unsigned short
 	rtw_wep_encrypt(padapter, (u8 *)pmgntframe);
 	DBG_871X("%s\n", __func__);
 	dump_mgntframe(padapter, pmgntframe);
-
-	return;
 }
 
 
@@ -5271,8 +5269,6 @@ void report_del_sta_event(struct adapter *padapter, unsigned char *MacAddr, unsi
 	DBG_871X("report_del_sta_event: delete STA, mac_id =%d\n", mac_id);
 
 	rtw_enqueue_cmd(pcmdpriv, pcmd_obj);
-
-	return;
 }
 
 void report_add_sta_event(struct adapter *padapter, unsigned char *MacAddr, int cam_idx)
@@ -5317,8 +5313,6 @@ void report_add_sta_event(struct adapter *padapter, unsigned char *MacAddr, int
 	DBG_871X("report_add_sta_event: add STA\n");
 
 	rtw_enqueue_cmd(pcmdpriv, pcmd_obj);
-
-	return;
 }
 
 /****************************************************************************
@@ -5828,8 +5822,6 @@ void survey_timer_hdl(struct timer_list *t)
 
 
 exit_survey_timer_hdl:
-
-	return;
 }
 
 void link_timer_hdl(struct timer_list *t)
@@ -5880,8 +5872,6 @@ void link_timer_hdl(struct timer_list *t)
 		issue_assocreq(padapter);
 		set_link_timer(pmlmeext, REASSOC_TO);
 	}
-
-	return;
 }
 
 void addba_timer_hdl(struct timer_list *t)
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
