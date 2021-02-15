Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id A400131BA46
	for <lists+driverdev-devel@lfdr.de>; Mon, 15 Feb 2021 14:27:19 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id EF24C86AC2;
	Mon, 15 Feb 2021 13:27:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 8fSG1F1j7uNY; Mon, 15 Feb 2021 13:27:17 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id EBA6C86A72;
	Mon, 15 Feb 2021 13:27:15 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 80F5A1BF3CB
 for <driverdev-devel@linuxdriverproject.org>;
 Mon, 15 Feb 2021 13:27:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 6FC7F6E769
 for <driverdev-devel@linuxdriverproject.org>;
 Mon, 15 Feb 2021 13:27:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id zwccdM4woiq7
 for <driverdev-devel@linuxdriverproject.org>;
 Mon, 15 Feb 2021 13:27:12 +0000 (UTC)
Received: by smtp3.osuosl.org (Postfix, from userid 1001)
 id 989C36EE84; Mon, 15 Feb 2021 13:27:12 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail-pj1-f41.google.com (mail-pj1-f41.google.com
 [209.85.216.41])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 4F8AB6E769
 for <driverdev-devel@linuxdriverproject.org>;
 Mon, 15 Feb 2021 13:27:11 +0000 (UTC)
Received: by mail-pj1-f41.google.com with SMTP id q72so3737135pjq.2
 for <driverdev-devel@linuxdriverproject.org>;
 Mon, 15 Feb 2021 05:27:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=vK3VNGNMpgrZLER7s3R4g3bgjix4vq8bvkDCeY6NaQM=;
 b=L7WSqA5drB4T+sF6bGyd+6pvevP36wVLsHYxlECddsD/vFolICM64wlxK/8Kv4aFt6
 mO0MLAo7HBty5xh02B/ROt7u5Hw7OHpsT6Sm9nU6D7sP6iLiCRuTBQw1HnZxn1LMx4ha
 vpxz9YkcIMdQA1WMWNArccfcT07kFx4/nlREAp5Er3Ilm5YkV2dULH5jJllPi8geYTC5
 /hpPE5qN55/Hod6yDlby7+auLp82GEsxk45GMCqvgBrpyB+zi2Apxe3DLwvgQCbmfGSk
 MsJpRw4+WFQlnLvBUwnx8FT5QicOBAlTiOqCSjiSh4MEP/I9hKl+G/l3Vhg3ORZKgUEZ
 fjdA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=vK3VNGNMpgrZLER7s3R4g3bgjix4vq8bvkDCeY6NaQM=;
 b=tfZit/PTxQKoe+x4pLChvctOnl8zj1i9LdR9lrtc2BrOZS9z7naxp4V2MiW/ztH4a1
 3Exy6Z0ZcxvkKW8YVstAF0SSNSZc5TofeXhJ6ob/Lg1cNDoUjlwHK0X2x2hxrRRbGBFh
 FSAQW2VdhQTgsn+eh0Oz1kPOWI9GrvsA2nxtTad9ZVsyFaJEBpPoaI9mVwdGTcFnHzyI
 cpIwgR2sUtRPbR+osEiTMVaCUPWeZupc7mVOTiV//DX4WD5y32wDEor0bQWrQOlCut/3
 2UXCRoT3x/kCP5534Xs+IJNeXaL/hOo5fh82slVnInu2Nwa10IeHlsi7hyeN2JDiIuj0
 S/dA==
X-Gm-Message-State: AOAM533iXLPTpROQmcMGPTfF4qN5PJUr2G76OCbfY0ktDNJzbguJo9e0
 iTJWvuwXDV+PLoaPiXdy4VMqRYOVN/SB
X-Google-Smtp-Source: ABdhPJzQFswz2W7SQscKsEtm0j1ZD6sZmLxbXL6ApfInlIWIbjQ9fZmQxDF2Xsl/pfZHBd4qbpmo0w==
X-Received: by 2002:a17:90a:1542:: with SMTP id
 y2mr16594054pja.123.1613395630583; 
 Mon, 15 Feb 2021 05:27:10 -0800 (PST)
Received: from localhost.localdomain ([2405:201:7000:69ad:718a:7103:c6a3:4d43])
 by smtp.gmail.com with ESMTPSA id x8sm4280582pjf.55.2021.02.15.05.27.07
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 15 Feb 2021 05:27:10 -0800 (PST)
From: shivang upadhyay <oroz3x@gmail.com>
To: gregkh@linuxfoundation.org,
	driverdev-devel@linuxdriverproject.org
Subject: [PATCH v4] ks7010: enclose non-trivial defines in parentheses
Date: Mon, 15 Feb 2021 18:57:01 +0530
Message-Id: <20210215132701.42748-1-oroz3x@gmail.com>
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
Cc: shivang upadhyay <oroz3x@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>


Checkpatch complains that parentheses are missing:
"Macros with complex values should be enclosed in parentheses".
Fixed that.

Signed-off-by: shivang upadhyay <oroz3x@gmail.com>
---

Previous versions of the patch were rejected due to lack of
discription in patch emails.

 drivers/staging/ks7010/ks_hostif.h | 24 ++++++++++++------------
 1 file changed, 12 insertions(+), 12 deletions(-)

diff --git a/drivers/staging/ks7010/ks_hostif.h b/drivers/staging/ks7010/ks_hostif.h
index 39138191a556..c62a494ed6bb 100644
--- a/drivers/staging/ks7010/ks_hostif.h
+++ b/drivers/staging/ks7010/ks_hostif.h
@@ -498,20 +498,20 @@ struct hostif_mic_failure_request {
 #define TX_RATE_FIXED		5
 
 /* 11b rate */
-#define TX_RATE_1M	(u8)(10 / 5)	/* 11b 11g basic rate */
-#define TX_RATE_2M	(u8)(20 / 5)	/* 11b 11g basic rate */
-#define TX_RATE_5M	(u8)(55 / 5)	/* 11g basic rate */
-#define TX_RATE_11M	(u8)(110 / 5)	/* 11g basic rate */
+#define TX_RATE_1M	((u8)(10 / 5))	/* 11b 11g basic rate */
+#define TX_RATE_2M	((u8)(20 / 5))	/* 11b 11g basic rate */
+#define TX_RATE_5M	((u8)(55 / 5))	/* 11g basic rate */
+#define TX_RATE_11M	((u8)(110 / 5))	/* 11g basic rate */
 
 /* 11g rate */
-#define TX_RATE_6M	(u8)(60 / 5)	/* 11g basic rate */
-#define TX_RATE_12M	(u8)(120 / 5)	/* 11g basic rate */
-#define TX_RATE_24M	(u8)(240 / 5)	/* 11g basic rate */
-#define TX_RATE_9M	(u8)(90 / 5)
-#define TX_RATE_18M	(u8)(180 / 5)
-#define TX_RATE_36M	(u8)(360 / 5)
-#define TX_RATE_48M	(u8)(480 / 5)
-#define TX_RATE_54M	(u8)(540 / 5)
+#define TX_RATE_6M	((u8)(60 / 5))	/* 11g basic rate */
+#define TX_RATE_12M	((u8)(120 / 5))	/* 11g basic rate */
+#define TX_RATE_24M	((u8)(240 / 5))	/* 11g basic rate */
+#define TX_RATE_9M	((u8)(90 / 5))
+#define TX_RATE_18M	((u8)(180 / 5))
+#define TX_RATE_36M	((u8)(360 / 5))
+#define TX_RATE_48M	((u8)(480 / 5))
+#define TX_RATE_54M	((u8)(540 / 5))
 
 static inline bool is_11b_rate(u8 rate)
 {
-- 
2.27.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
