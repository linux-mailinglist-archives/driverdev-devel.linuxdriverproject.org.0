Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 968BC33FB1A
	for <lists+driverdev-devel@lfdr.de>; Wed, 17 Mar 2021 23:27:18 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3F7594EDD7;
	Wed, 17 Mar 2021 22:27:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id mRkeHIr-v_UE; Wed, 17 Mar 2021 22:27:16 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1CB294EDD8;
	Wed, 17 Mar 2021 22:27:15 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 8BC9C1BF21A
 for <devel@linuxdriverproject.org>; Wed, 17 Mar 2021 22:21:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 8849B84150
 for <devel@linuxdriverproject.org>; Wed, 17 Mar 2021 22:21:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id urhsQrzIv7TR for <devel@linuxdriverproject.org>;
 Wed, 17 Mar 2021 22:21:44 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ed1-x52b.google.com (mail-ed1-x52b.google.com
 [IPv6:2a00:1450:4864:20::52b])
 by smtp1.osuosl.org (Postfix) with ESMTPS id C69A9840FE
 for <devel@driverdev.osuosl.org>; Wed, 17 Mar 2021 22:21:43 +0000 (UTC)
Received: by mail-ed1-x52b.google.com with SMTP id e7so4187660edu.10
 for <devel@driverdev.osuosl.org>; Wed, 17 Mar 2021 15:21:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=iY1KsgvT9ti0qC8M/J7/38b4tewX9CmfaH6dkYFH6ls=;
 b=ES8UKb7LN7Et++XPhLB7okKgZhKq/46jlWyvpMox3obNdSPqwubCKzRfTsWokOYaHj
 TrMyAQVde19GQOZqcWjy6/kL4+opQgQtYgpk0BPXOAGx2K4+5qh+6/NcxrG5cTo1cdOr
 soNybSkIThAWmC6eSxgjhq3xxHQKrxIdWDUeacyTiYxhdJ5sp6S3BPGtcs/R6OtQE5ft
 cGADR9NIYfFwu2H5/SrAe/MqTKA4aSEwaVqI7G1kiKWPMfoMr2XOUs0sGPX9xENuV/6s
 mbkZTpxCN6dfvBacl4p79ja2xDYiWIap5HiMNyjlzqiUB9RIJh/MS7NWFHj8PeuCqr8T
 +hJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=iY1KsgvT9ti0qC8M/J7/38b4tewX9CmfaH6dkYFH6ls=;
 b=hhYvbI4iKXJfx67F4Aq9LnpMbpH7+rNtJIOv8PqYVN8sSdTcY61I2CSbHTCH4jAn7t
 y89whFSmTtrY3+Aji5pvrJi4uOf4hvTBlHl321901qULasxVIGYkV1kvnABB/zL3ubrM
 K2NQUm5yB8dZ7KxS+nJCpO2yFyKBr2sVN2zU9fcozNzMo8AP4vujzR0fCCLRh5JeFfMa
 suq13HTkFpL5HePL4MExTCBF1982MUid3dG8t7SHAihrcqf3aRk2po/ff07swT0olhhl
 y/IcV+NsiPnbxYA4e+9kl4hrmx6Vo9pcl9n9O0TP86yfZFFrACNS8siKjpg/tCEz3+I+
 HTlA==
X-Gm-Message-State: AOAM5300D7c+3S3RVXjnsbmVCf0nyj67Nxng7K4I1Rrzld3C0tm3pqq7
 /UuRRvQM1U81SN/Uqmak+L8=
X-Google-Smtp-Source: ABdhPJwX4Cznhor/iEC4dYZll6W1MTnB+N+DiKF/oHvLIrWyrsEo0bhdgstPvqOPRojT4m0qaxP7jQ==
X-Received: by 2002:a05:6402:3096:: with SMTP id
 de22mr44703115edb.141.1616019702150; 
 Wed, 17 Mar 2021 15:21:42 -0700 (PDT)
Received: from gimli.home (93-48-145-141.ip257.fastwebnet.it. [93.48.145.141])
 by smtp.gmail.com with ESMTPSA id
 cf4sm104304edb.19.2021.03.17.15.21.41
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 17 Mar 2021 15:21:41 -0700 (PDT)
From: Marco Cesati <marcocesati@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Hans de Goede <hdegoede@redhat.com>,
 Larry Finger <Larry.Finger@lwfinger.net>, devel@driverdev.osuosl.org
Subject: [PATCH 32/43] Staging: rtl8723bs: fix names in odm_EdcaTurboCheck.h
Date: Wed, 17 Mar 2021 23:21:19 +0100
Message-Id: <20210317222130.29528-33-marcocesati@gmail.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210317222130.29528-1-marcocesati@gmail.com>
References: <20210317222130.29528-1-marcocesati@gmail.com>
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

This commit converts names of structs / enums
in hal/odm_EdcaTurboCheck.h from ALL_CAPS format to lowercase

Signed-off-by: Marco Cesati <marcocesati@gmail.com>
---
 drivers/staging/rtl8723bs/hal/odm.h                | 2 +-
 drivers/staging/rtl8723bs/hal/odm_EdcaTurboCheck.h | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/rtl8723bs/hal/odm.h b/drivers/staging/rtl8723bs/hal/odm.h
index 8f457b0ea70d..80683d3fb80f 100644
--- a/drivers/staging/rtl8723bs/hal/odm.h
+++ b/drivers/staging/rtl8723bs/hal/odm.h
@@ -1121,7 +1121,7 @@ struct DM_ODM_T { /* DM_Out_Source_Dynamic_Mechanism_Structure */
 	bool RSSI_test;
 	struct CFO_TRACKING DM_CfoTrack;
 
-	struct EDCA_T DM_EDCA_Table;
+	struct edca_t DM_EDCA_Table;
 	u32 WMMEDCA_BE;
 	struct PATHDIV_T DM_PathDiv;
 	/*  Copy from SD4 structure */
diff --git a/drivers/staging/rtl8723bs/hal/odm_EdcaTurboCheck.h b/drivers/staging/rtl8723bs/hal/odm_EdcaTurboCheck.h
index 09764431c4d6..e9f9f07221f2 100644
--- a/drivers/staging/rtl8723bs/hal/odm_EdcaTurboCheck.h
+++ b/drivers/staging/rtl8723bs/hal/odm_EdcaTurboCheck.h
@@ -8,7 +8,7 @@
 #ifndef __ODMEDCATURBOCHECK_H__
 #define __ODMEDCATURBOCHECK_H__
 
-struct EDCA_T { /* _EDCA_TURBO_ */
+struct edca_t { /* _EDCA_TURBO_ */
 	bool bCurrentTurboEDCA;
 	bool bIsCurRDLState;
 
-- 
2.30.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
