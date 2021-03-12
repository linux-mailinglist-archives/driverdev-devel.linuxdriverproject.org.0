Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 5275E338765
	for <lists+driverdev-devel@lfdr.de>; Fri, 12 Mar 2021 09:31:59 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id E47D44ED6C;
	Fri, 12 Mar 2021 08:31:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id IuVMlvGEFeED; Fri, 12 Mar 2021 08:31:57 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id EE4554ED57;
	Fri, 12 Mar 2021 08:31:55 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id F34D41C1135
 for <devel@linuxdriverproject.org>; Fri, 12 Mar 2021 08:27:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id EE3A260607
 for <devel@linuxdriverproject.org>; Fri, 12 Mar 2021 08:27:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Xq9SXQPmvbUE for <devel@linuxdriverproject.org>;
 Fri, 12 Mar 2021 08:27:06 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-wm1-x335.google.com (mail-wm1-x335.google.com
 [IPv6:2a00:1450:4864:20::335])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 3F50B6067E
 for <devel@driverdev.osuosl.org>; Fri, 12 Mar 2021 08:27:06 +0000 (UTC)
Received: by mail-wm1-x335.google.com with SMTP id
 b2-20020a7bc2420000b029010be1081172so14638823wmj.1
 for <devel@driverdev.osuosl.org>; Fri, 12 Mar 2021 00:27:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=Ez+F5WCjFOOx5t8XZeJ520tcjODhLMDov2OJ/oSwr2c=;
 b=kxDucYzND1DILIEdAynNEEfiQyH3PM3AUQdlRBXQ/RoegyCi2k5Cmyt/QKksSn8iZi
 1oUocmfqKleZybGQKsSM/oof8HfsZBWyhLE9Jc9G77/bw2lHeASnqf/8zJW0H9ceJzRa
 0T05hPIQb0S3grn5b6APvR0gUQBbM6Vld/O1T5uPsFR0ztfCV1Jlb7HSxaAatVopWM0K
 NEt4eUHGrDt3mwm0RB1iDlub6R/EXsJ6g7Eru1aTIelgLIRxFDbPKdiFxvjJbecdoQn+
 +URz5IxAq7mu8f8a/lJwmx8NbEZaybxsNcZrTGMpEXWxFOLDFM+OQ8Rio8kCkQzwjI+e
 9naw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Ez+F5WCjFOOx5t8XZeJ520tcjODhLMDov2OJ/oSwr2c=;
 b=luc8qJJH9SdFuZ/B4RPCz8bIQTrF8UBb9yq/+pTvkQhzUqafzruDbVT64LFhlgSXjO
 RPa7PeXm6pqT/ASQ1YRK9kKrLLI2/mkUPgCe0myDzJ2SycX/Zh8ojg5CeiyBT3g96rcL
 PTJKV/jZJ0XQZZzGovzXiwpCDfqUI36/3Mrh/4DEea6XeXFaFbIqcun6bs8ywxEfhT/g
 IiFL+yk441ZU1brdbG1hCLjUFDDpJbeOLW2d8ldKfT8I0bN6UvmMJ6VrfqKbORQWU8xI
 cF0Svp8JhIm8QFJxpNoMlt+ev63J2GICZZ2yRtk85hfUpDjoFuehJDRN1cD0/akJc5ef
 A4pQ==
X-Gm-Message-State: AOAM530CLPUtTP5BEFWOBbvOHQwrIpQ1HRA88oli3CGM8T+EGDtKyeu4
 c2w0fSjgEsnoAiWwZGUW6w3c7PzXHWM=
X-Google-Smtp-Source: ABdhPJwH85+ZbKp6GvM27BV60Tyw6GTnXSXkRuOcB/9tdOhVd5T/pLqsnn4MOksxp8shqCs/Yknafw==
X-Received: by 2002:a05:600c:19d1:: with SMTP id
 u17mr11740926wmq.141.1615537624581; 
 Fri, 12 Mar 2021 00:27:04 -0800 (PST)
Received: from gimli.cesven (93-48-145-141.ip257.fastwebnet.it.
 [93.48.145.141])
 by smtp.gmail.com with ESMTPSA id i8sm7743979wry.90.2021.03.12.00.27.04
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 12 Mar 2021 00:27:04 -0800 (PST)
From: Marco Cesati <marcocesati@gmail.com>
X-Google-Original-From: Marco Cesati <marco.cesati@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Hans de Goede <hdegoede@redhat.com>,
 Larry Finger <Larry.Finger@lwfinger.net>, devel@driverdev.osuosl.org
Subject: [PATCH 25/33] staging: rtl8723bs: remove typedefs in sta_info.h
Date: Fri, 12 Mar 2021 09:26:30 +0100
Message-Id: <20210312082638.25512-26-marco.cesati@gmail.com>
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
    #34: FILE: include/sta_info.h:34:
    +typedef struct _RSSI_STA {

Signed-off-by: Marco Cesati <marco.cesati@gmail.com>
---
 drivers/staging/rtl8723bs/include/sta_info.h | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/rtl8723bs/include/sta_info.h b/drivers/staging/rtl8723bs/include/sta_info.h
index 734f4e2ecd66..1dbbe6cbf174 100644
--- a/drivers/staging/rtl8723bs/include/sta_info.h
+++ b/drivers/staging/rtl8723bs/include/sta_info.h
@@ -31,13 +31,13 @@ struct wlan_acl_pool {
 	struct __queue	acl_node_q;
 };
 
-typedef struct _RSSI_STA {
+struct RSSI_STA {
 	s32	UndecoratedSmoothedPWDB;
 	s32	UndecoratedSmoothedCCK;
 	s32	UndecoratedSmoothedOFDM;
 	u64	PacketMap;
 	u8 ValidBit;
-} RSSI_STA, *PRSSI_STA;
+};
 
 struct	stainfo_stats	{
 
@@ -196,7 +196,7 @@ struct sta_info {
 	u32 assoc_req_len;
 
 	/* for DM */
-	RSSI_STA	 rssi_stat;
+	struct RSSI_STA	 rssi_stat;
 
 	/* ODM_STA_INFO_T */
 	/*  ================ODM Relative Info ======================= */
-- 
2.30.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
