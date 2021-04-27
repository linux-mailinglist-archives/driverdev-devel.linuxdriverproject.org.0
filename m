Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F75536CA99
	for <lists+driverdev-devel@lfdr.de>; Tue, 27 Apr 2021 19:50:10 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id EB3B6404B2;
	Tue, 27 Apr 2021 17:50:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id yt390gnlyVfK; Tue, 27 Apr 2021 17:50:06 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 92B7C40272;
	Tue, 27 Apr 2021 17:50:05 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 662351BF9AC
 for <devel@linuxdriverproject.org>; Tue, 27 Apr 2021 17:49:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id BF44940272
 for <devel@linuxdriverproject.org>; Tue, 27 Apr 2021 17:49:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id mPmvUvEZEgLi for <devel@linuxdriverproject.org>;
 Tue, 27 Apr 2021 17:49:53 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-pj1-x1036.google.com (mail-pj1-x1036.google.com
 [IPv6:2607:f8b0:4864:20::1036])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 313CF4025A
 for <devel@driverdev.osuosl.org>; Tue, 27 Apr 2021 17:49:53 +0000 (UTC)
Received: by mail-pj1-x1036.google.com with SMTP id
 f2-20020a17090a4a82b02900c67bf8dc69so7571270pjh.1
 for <devel@driverdev.osuosl.org>; Tue, 27 Apr 2021 10:49:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=yA9WdPgXIZgxGfJrBsyNh8U+RFX+tzg70/IRFeEI7os=;
 b=Xe4ChCCKOyNEBF28z0nWa1x8TYCr8qZqXsYqWo/3juv0xyaAPIbIK8bCaRanG++5ud
 o5PUbaII5sIn9fzO5+rTOn/5lPh7qmLavC/9mjdZijowHihq5vJslk+w2Pn9nxAyz4uO
 c2U8vl4UXX6uNPiFS3PjZIt3TA2/fSmuTGUyBPAGHC5q2i9wC1g59ShW19XqLggJjQtm
 VJPgP+INO8A1zWRtncmdSodm8+Idbq95xLnk0HuflfSOcG48+jiwdnAEW1bRZdfdFdeU
 w+cUDm56YS1+7ioBCDyFbsuz66OW8wDjshndNHVb9wSCSjbnxE5rounHaIPDQV0AAoRi
 NsbQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=yA9WdPgXIZgxGfJrBsyNh8U+RFX+tzg70/IRFeEI7os=;
 b=t646RVBYVwkeak6O5yj02w4qLFJhkJHcpuu8Hpf7cMoKS/+ILv8QSMrIZy/6PkL2XT
 XtqRSOD5bSlIoWJNI6YIv9kA7RzrUFV2xYnZJd1JdQHDx0/l+fVjBup2KGblRK/1FgtC
 i9hM4j8KaFkhoVe1qKf1LnX7qyVQ+GtDToM5qzVYPSFE7wPwCrsvGT/2smHXMEgFH6d1
 IbakscTtT0+QKwtcSArK49MZOzaKljKiwOrMioswxGgKDSBdhedSRL0nwmt/BAlgai0I
 XZcP/qqj4a/8sg4UEGpFMStv8jLqPjd4kQaTdx8Ud+WYz/ehjSvWV5ZnnTNHmuoM24n3
 wIVw==
X-Gm-Message-State: AOAM530bpQt6Dd5LXqe3jLeFFLcx+8xHBk3F+RSlPvwgg1BXmUxyRb43
 A1jiuJfCdX6edLILzu3KhBM=
X-Google-Smtp-Source: ABdhPJxLRn3CSaprpXp/9FwYm9WQCOFnBrodvXbqcdSZJ0/Mh++rtn4qAJuZGG8KT6sUy4VdOXHBnQ==
X-Received: by 2002:a17:90a:3948:: with SMTP id
 n8mr2927079pjf.32.1619545792604; 
 Tue, 27 Apr 2021 10:49:52 -0700 (PDT)
Received: from localhost.localdomain ([103.52.209.34])
 by smtp.googlemail.com with ESMTPSA id gx21sm2990284pjb.29.2021.04.27.10.49.50
 (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 27 Apr 2021 10:49:51 -0700 (PDT)
From: Jitendra Khasdev <jkhasdev@gmail.com>
To: gregkh@linuxfoundation.org, devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH] staging: rtl8192e: fix array of flexible structures
Date: Tue, 27 Apr 2021 23:19:45 +0530
Message-Id: <20210427174945.1323-1-jkhasdev@gmail.com>
X-Mailer: git-send-email 2.13.6
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
Cc: jkhasdev@gmail.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

This patch fixes sparse warning "array of flexible structures"
for rtllib.h.

eg. drivers/staging/rtl8192e/rtllib.h:832:48: warning: array of
flexible structures

Signed-off-by: Jitendra Khasdev <jkhasdev@gmail.com>
---
 drivers/staging/rtl8192e/rtllib.h | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/staging/rtl8192e/rtllib.h b/drivers/staging/rtl8192e/rtllib.h
index 4cabaf2..c7cb318 100644
--- a/drivers/staging/rtl8192e/rtllib.h
+++ b/drivers/staging/rtl8192e/rtllib.h
@@ -802,7 +802,7 @@ struct rtllib_authentication {
 	__le16 transaction;
 	__le16 status;
 	/*challenge*/
-	struct rtllib_info_element info_element[];
+	struct rtllib_info_element *info_element;
 } __packed;
 
 struct rtllib_disauth {
@@ -818,7 +818,7 @@ struct rtllib_disassoc {
 struct rtllib_probe_request {
 	struct rtllib_hdr_3addr header;
 	/* SSID, supported rates */
-	struct rtllib_info_element info_element[];
+	struct rtllib_info_element *info_element;
 } __packed;
 
 struct rtllib_probe_response {
@@ -829,7 +829,7 @@ struct rtllib_probe_response {
 	/* SSID, supported rates, FH params, DS params,
 	 * CF params, IBSS params, TIM (if beacon), RSN
 	 */
-	struct rtllib_info_element info_element[];
+	struct rtllib_info_element *info_element;
 } __packed;
 
 /* Alias beacon for probe_response */
@@ -840,7 +840,7 @@ struct rtllib_assoc_request_frame {
 	__le16 capability;
 	__le16 listen_interval;
 	/* SSID, supported rates, RSN */
-	struct rtllib_info_element info_element[];
+	struct rtllib_info_element *info_element;
 } __packed;
 
 struct rtllib_assoc_response_frame {
@@ -848,7 +848,7 @@ struct rtllib_assoc_response_frame {
 	__le16 capability;
 	__le16 status;
 	__le16 aid;
-	struct rtllib_info_element info_element[]; /* supported rates */
+	struct rtllib_info_element *info_element; /* supported rates */
 } __packed;
 
 struct rtllib_txb {
-- 
1.8.3.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
