Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 04215212847
	for <lists+driverdev-devel@lfdr.de>; Thu,  2 Jul 2020 17:45:24 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 9EDB02C9FD;
	Thu,  2 Jul 2020 15:45:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
X-Amavis-Alert: BAD HEADER SECTION, Duplicate header field: "References"
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id JkgdWNq43Ugl; Thu,  2 Jul 2020 15:45:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id EFDDF24F51;
	Thu,  2 Jul 2020 15:45:19 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 4049C1BF4E6
 for <devel@linuxdriverproject.org>; Thu,  2 Jul 2020 15:45:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 3D5E18A089
 for <devel@linuxdriverproject.org>; Thu,  2 Jul 2020 15:45:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
X-Amavis-Alert: BAD HEADER SECTION, Duplicate header field: "References"
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id oyUUXuogA4Vq for <devel@linuxdriverproject.org>;
 Thu,  2 Jul 2020 15:45:17 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f193.google.com (mail-pf1-f193.google.com
 [209.85.210.193])
 by whitealder.osuosl.org (Postfix) with ESMTPS id D5BEA89EB3
 for <devel@driverdev.osuosl.org>; Thu,  2 Jul 2020 15:45:17 +0000 (UTC)
Received: by mail-pf1-f193.google.com with SMTP id u185so10669763pfu.1
 for <devel@driverdev.osuosl.org>; Thu, 02 Jul 2020 08:45:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :in-reply-to:references;
 bh=5+axulHBFG80o0OaU9aOnx+9TZZxhZZELeuFYpmONSM=;
 b=PG8Gwq3rWJPcVF+jFxr5uuHm11vnxhR+0IQYKA4dwUKgCs+TqST48oRFgXWCvmAQuZ
 vcuv/JCn8i9YN+jUlt7/NmUXJox3VYX75dXPLgIp8Y8Wa55O9uDI4MFAPFkDzFMJoD9j
 1rh6pT8u50HIJxnBzvtEtNLhW18jBUuJtX7oeaQGZ3RK14lOsTO9zbygqBmfLKAe4w5D
 Y84pfO5EgUzmWu/Dciu7jhQGi3UFGGYpzA3EPmnxFPgH0r5BeX6el4KXyaWQBxZsOn+P
 dMnHB7RLTL7uPERZvVDgAoHaeFe4W416gWNnue3l4c3Ehie2sP1sZ3mTMbyo+3oM3fK6
 pFJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:in-reply-to:references;
 bh=5+axulHBFG80o0OaU9aOnx+9TZZxhZZELeuFYpmONSM=;
 b=ZvhNIw2FCfMBkCv/YksUpzooeqPfxCBRb6QNyzgOEIw9sJ5cYXRISTuEW/lfL/qLXd
 iGNYwBezImYXfu5mtEy76OYr4H5A1xsUTLXwUXOayyxp9s09gTMiBSX4e3wkl4vBeLkf
 f1JLVtge6qh90VEcZXDwe9jHBwQcHQe0XM61Uh/ul6thdjHubGIdpLbTyUVYbM26Nszk
 ZLF8xTwRZNLbRklVmKEFYKw3+WoFhP8zJYx3R2ojNVtAWlaIq/WxLgxFRNL6xIp8GgXZ
 2No7C/22nvSXEVF3y2dV+4BCdc8xzHGlosEXUo5hDUnKrBbxo6N9otl5EcFpKk2ykEbr
 FOXg==
X-Gm-Message-State: AOAM532TkewtliE3xEkdq+rZjvPK6Jd5V7Wbb2pSTlTzHrdlO2s+yQor
 264Wn0xZu1zp29RLwK/CoUg=
X-Google-Smtp-Source: ABdhPJxUXWrtR21f3aQL9Tj8/iND7zjSPCdCy5fkuDbaVbgwT3J0BZlwyr2far/zF7nepSBrzUsxNg==
X-Received: by 2002:aa7:8f03:: with SMTP id x3mr27786612pfr.64.1593704717537; 
 Thu, 02 Jul 2020 08:45:17 -0700 (PDT)
Received: from localhost.localdomain (n11923716050.netvigator.com.
 [119.237.16.50])
 by smtp.gmail.com with ESMTPSA id f15sm7166804pgr.36.2020.07.02.08.45.15
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 02 Jul 2020 08:45:17 -0700 (PDT)
From: Simon Fong <simon.fodin@gmail.com>
To: Larry.Finger@lwfinger.net
Subject: [PATCH 1/2] staging: rtl8188eu: Fix CHECK of coding style
Date: Thu,  2 Jul 2020 23:44:19 +0800
Message-Id: <9f1f9d7d4723aa8d9bc2d7149fd01aacc1191860.1593703689.git.simon.fodin@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <cover.1593703689.git.simon.fodin@gmail.com>
References: <cover.1593703689.git.simon.fodin@gmail.com>
In-Reply-To: <cover.1593703689.git.simon.fodin@gmail.com>
References: <cover.1593703689.git.simon.fodin@gmail.com>
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
Cc: devel@driverdev.osuosl.org, gregkh@linuxfoundation.org,
 Simon Fong <simon.fodin@gmail.com>, linux-kernel@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Fixed a CHECK of Lines should not end with a '('.

Signed-off-by: Simon Fong <simon.fodin@gmail.com>
---
 drivers/staging/rtl8188eu/core/rtw_recv.c | 7 +++----
 1 file changed, 3 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/rtl8188eu/core/rtw_recv.c b/drivers/staging/rtl8188eu/core/rtw_recv.c
index 282d0f869758..656fe70ae4fb 100644
--- a/drivers/staging/rtl8188eu/core/rtw_recv.c
+++ b/drivers/staging/rtl8188eu/core/rtw_recv.c
@@ -702,10 +702,9 @@ static int sta2sta_data_frame(struct adapter *adapter,
 	return ret;
 }
 
-static int ap2sta_data_frame(
-	struct adapter *adapter,
-	struct recv_frame *precv_frame,
-	struct sta_info **psta)
+static int ap2sta_data_frame(struct adapter *adapter,
+			     struct recv_frame *precv_frame,
+			     struct sta_info **psta)
 {
 	u8 *ptr = precv_frame->pkt->data;
 	struct rx_pkt_attrib *pattrib = &precv_frame->attrib;
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
