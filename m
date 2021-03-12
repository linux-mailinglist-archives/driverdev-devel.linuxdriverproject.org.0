Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id AA48E33874A
	for <lists+driverdev-devel@lfdr.de>; Fri, 12 Mar 2021 09:28:21 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 413B64ED68;
	Fri, 12 Mar 2021 08:28:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Gc_otw2xKYUV; Fri, 12 Mar 2021 08:28:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 30C214ED4D;
	Fri, 12 Mar 2021 08:28:18 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id EBA1E1BF59B
 for <devel@linuxdriverproject.org>; Fri, 12 Mar 2021 08:26:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id D81654ED4D
 for <devel@linuxdriverproject.org>; Fri, 12 Mar 2021 08:26:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Y5_VW5rygL-N for <devel@linuxdriverproject.org>;
 Fri, 12 Mar 2021 08:26:53 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-wm1-x32f.google.com (mail-wm1-x32f.google.com
 [IPv6:2a00:1450:4864:20::32f])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 0C00D4ED4E
 for <devel@driverdev.osuosl.org>; Fri, 12 Mar 2021 08:26:52 +0000 (UTC)
Received: by mail-wm1-x32f.google.com with SMTP id
 f22-20020a7bc8d60000b029010c024a1407so15256401wml.2
 for <devel@driverdev.osuosl.org>; Fri, 12 Mar 2021 00:26:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=y5Cc0vPtT5oUSXMG/TSzhK5e4uv0aBDEKMIup0oiHOo=;
 b=NWazRU+daODO7g8/cZ1IRHMYPaz2hEDDZdhd2YFNnV6tsAXDnN+yk8pdrYU1MRADOz
 tIvYRXrxGM/CSP07cYeBcWNZ7X98kuK0MjtHudDbP43PB40IFJ0X2z51MCpYoe75Xe/1
 zYmkP4Gm1jF+U/De6lUQleg4XwneNsH9DCdPJmFKWNkbdE/AL2hipzrZLhQAU3Tv+Z+w
 gzcX7vX7InmypAUgzRMmu1KddVpK5w4Jjwh0jxzxIe8L/Z5vOYqHgG+5pHDD+yWXkDyD
 twRIXlCYT+EIOqnHEGL+vonZv7wNBJCLt404f/0t0iDHpxtWIxFoNirXKX5G3FUMfeVy
 4iHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=y5Cc0vPtT5oUSXMG/TSzhK5e4uv0aBDEKMIup0oiHOo=;
 b=nsN8kWOz5ePRvH5AMfIQS010ZhzEvQtAzosWAT3S6S3J7JVlWwH3jHnNbHt7+Imct+
 CAGZrFGyE3l9vqcFUJCxVKDIDHCFfgA38H+SChJB4cINok0pju+RQkJslVwnAmx7Rrs9
 uzyAV+kPVYXvO2X0nT+/Nnz55KoaKrQb3SokcnyieoQ08N8nlSBCUARyoaVbgWcM3xqq
 RxW3XGIuaq2ieuoAqdkhNoZa7XYKni9RkHiqAVH8Mj8HNHhGGC0nzb3AivISsGmAl1s/
 +JsUZMN8km/H1fhTR8L2zJQTQgJ/kd4cDnA/kjRB1LtNWRwS8ieKabBhrUyZrF2ZtUSX
 pdsg==
X-Gm-Message-State: AOAM533Y4eyR9um8IvYTOJa2JqJf7e/upiYCpO4n6cT+dbSf+JU7rd+O
 Jv192IeZ6AdKoetUIYXcHIk=
X-Google-Smtp-Source: ABdhPJxiz4RkWG2UAucJ+RNIds1gnw+GnhonlzWPqv2Ttn7LCpYnoUeVSP6p9L40Lo04QVTcdjBxzg==
X-Received: by 2002:a1c:5f89:: with SMTP id
 t131mr11483148wmb.173.1615537611303; 
 Fri, 12 Mar 2021 00:26:51 -0800 (PST)
Received: from gimli.cesven (93-48-145-141.ip257.fastwebnet.it.
 [93.48.145.141])
 by smtp.gmail.com with ESMTPSA id i8sm7743979wry.90.2021.03.12.00.26.50
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 12 Mar 2021 00:26:51 -0800 (PST)
From: Marco Cesati <marcocesati@gmail.com>
X-Google-Original-From: Marco Cesati <marco.cesati@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Hans de Goede <hdegoede@redhat.com>,
 Larry Finger <Larry.Finger@lwfinger.net>, devel@driverdev.osuosl.org
Subject: [PATCH 07/33] staging: rtl8723bs: remove typedefs in
 odm_EdcaTurboCheck.h
Date: Fri, 12 Mar 2021 09:26:12 +0100
Message-Id: <20210312082638.25512-8-marco.cesati@gmail.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210312082638.25512-1-marco.cesati@gmail.com>
References: <20210312082638.25512-1-marco.cesati@gmail.com>
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

This commit fixes the following checkpatch.pl warning:

    WARNING: do not add new typedefs
    #11: FILE: hal/odm_EdcaTurboCheck.h:11:
    +typedef struct _EDCA_TURBO_ {

Signed-off-by: Marco Cesati <marco.cesati@gmail.com>
---
 drivers/staging/rtl8723bs/hal/odm.h                | 2 +-
 drivers/staging/rtl8723bs/hal/odm_EdcaTurboCheck.h | 4 ++--
 2 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/rtl8723bs/hal/odm.h b/drivers/staging/rtl8723bs/hal/odm.h
index 9a73297f94d0..0e2868bc405a 100644
--- a/drivers/staging/rtl8723bs/hal/odm.h
+++ b/drivers/staging/rtl8723bs/hal/odm.h
@@ -1121,7 +1121,7 @@ struct DM_ODM_T { /* DM_Out_Source_Dynamic_Mechanism_Structure */
 	bool RSSI_test;
 	struct CFO_TRACKING DM_CfoTrack;
 
-	EDCA_T DM_EDCA_Table;
+	struct EDCA_T DM_EDCA_Table;
 	u32 WMMEDCA_BE;
 	struct PATHDIV_T DM_PathDiv;
 	/*  Copy from SD4 structure */
diff --git a/drivers/staging/rtl8723bs/hal/odm_EdcaTurboCheck.h b/drivers/staging/rtl8723bs/hal/odm_EdcaTurboCheck.h
index bc574d2ad065..09764431c4d6 100644
--- a/drivers/staging/rtl8723bs/hal/odm_EdcaTurboCheck.h
+++ b/drivers/staging/rtl8723bs/hal/odm_EdcaTurboCheck.h
@@ -8,12 +8,12 @@
 #ifndef __ODMEDCATURBOCHECK_H__
 #define __ODMEDCATURBOCHECK_H__
 
-typedef struct _EDCA_TURBO_ {
+struct EDCA_T { /* _EDCA_TURBO_ */
 	bool bCurrentTurboEDCA;
 	bool bIsCurRDLState;
 
 	u32 prv_traffic_idx; /*  edca turbo */
-} EDCA_T, *pEDCA_T;
+};
 
 void odm_EdcaTurboCheck(void *pDM_VOID);
 void ODM_EdcaTurboInit(void *pDM_VOID);
-- 
2.30.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
