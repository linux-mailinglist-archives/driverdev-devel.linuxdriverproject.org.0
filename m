Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id CDAB73AFE8
	for <lists+driverdev-devel@lfdr.de>; Mon, 10 Jun 2019 09:47:44 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 8A8B28710D;
	Mon, 10 Jun 2019 07:47:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Vn2aILJQCF9c; Mon, 10 Jun 2019 07:47:43 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 312D286EC0;
	Mon, 10 Jun 2019 07:47:43 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 264F01BF410
 for <devel@linuxdriverproject.org>; Mon, 10 Jun 2019 07:47:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 23A15854C9
 for <devel@linuxdriverproject.org>; Mon, 10 Jun 2019 07:47:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id CuhqEfqeZdFC for <devel@linuxdriverproject.org>;
 Mon, 10 Jun 2019 07:47:40 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f196.google.com (mail-pl1-f196.google.com
 [209.85.214.196])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 3946985313
 for <devel@driverdev.osuosl.org>; Mon, 10 Jun 2019 07:47:40 +0000 (UTC)
Received: by mail-pl1-f196.google.com with SMTP id bi6so2907586plb.12
 for <devel@driverdev.osuosl.org>; Mon, 10 Jun 2019 00:47:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=jG0RZKs0gRa8+HnmHcjPEFAtnc8lR9nYgx5Oob/8tE8=;
 b=CHBfMYyp/OUXrl58tqw1fyoSO8DEO9XNP38mMu6bMY4CmG+s9tloBjCufJFeMYcOpn
 oDVI7sEZHeKKR7xG7NPAGTNExsQAueKc6rNfqqCmdMk4beFKX7PAbcmfH223K1SAzDU3
 Uqgf8bIgR6JdJDV9K9q7Yjof5LZn++w40MPerYpOgHQcEhvnExYvQVHrk6BI7sor43m4
 91WAj809JsGS1W1tGBZFqIx01jqnDoUCbkAPAI1LFDWTGAEsdMM1kqCxUaVq2ryXEWdl
 wsxaJqe4zqXMLVL62HSqvT2KaIsJtLYo13E4Jw2eUAPe4+IdBFVK9YxaWtix/pjBPyTJ
 hs5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=jG0RZKs0gRa8+HnmHcjPEFAtnc8lR9nYgx5Oob/8tE8=;
 b=e86CV5zVoGGVRQ/U4rNojZ6dMhsQRGtJCDUQtmLRJ3+gkZJXjec5QxuXwQ6PAaphE+
 f3qzB4r4NYwkxsKxItXBHEx6EhmaKuZEbx2qyPWhNAKqyPPpVpbLC7uwvrUOzjbsaKqS
 jyJdkFc2zqU3HGKyntbn6+dDyGZakTjG6xUU3QIk4SO6sATdIT9RtxPMKd8yxWOx/7hl
 smp9sE+JklEMbfPCxpVVVFuxtSs94Pgs3vE2hFnJ3wsUYulG9zaKVoggFENiZNgUh0AV
 RLGe0Pv5o7BIyvkyauvqIJjbBwLJvoeUNB9H7qrRlGM028pX2MuCfQHVESgLIG75pCvb
 1L9w==
X-Gm-Message-State: APjAAAVMBMYyZysHDU3sskjVC16HJesQCxUQuwGmGxk1yKdwrdwVD/Rv
 RYkerKcGmQQifTv9wtcPiXI=
X-Google-Smtp-Source: APXvYqxha/vArVnh7cSqS9KV0IIKAbW9lrFio8Om679gc2jXoPQxBqXRMkibVs4wj38idDFYjcfENg==
X-Received: by 2002:a17:902:a982:: with SMTP id
 bh2mr68068584plb.224.1560152859942; 
 Mon, 10 Jun 2019 00:47:39 -0700 (PDT)
Received: from localhost.localdomain ([171.79.92.225])
 by smtp.gmail.com with ESMTPSA id f2sm8120965pgs.83.2019.06.10.00.47.38
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Mon, 10 Jun 2019 00:47:39 -0700 (PDT)
From: Nishka Dasgupta <nishkadg.linux@gmail.com>
To: gregkh@linuxfoundation.org,
	devel@driverdev.osuosl.org
Subject: [PATCH v2 10/10] staging: rtl8723bs: os_dep: Remove variable pos
Date: Mon, 10 Jun 2019 13:17:10 +0530
Message-Id: <20190610074710.15677-10-nishkadg.linux@gmail.com>
X-Mailer: git-send-email 2.19.1
In-Reply-To: <20190610074710.15677-1-nishkadg.linux@gmail.com>
References: <20190610074710.15677-1-nishkadg.linux@gmail.com>
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
Cc: Nishka Dasgupta <nishkadg.linux@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Remove variable pos as it is not used after (or before) being assigned a
value.
Issue found with Coccinelle.

Signed-off-by: Nishka Dasgupta <nishkadg.linux@gmail.com>
---
Changes in v2:
- Send as part of patch series.

 drivers/staging/rtl8723bs/os_dep/ioctl_linux.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c b/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c
index 4c5855bde9ad..ea50ec424e50 100644
--- a/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c
+++ b/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c
@@ -616,7 +616,7 @@ static int wpa_set_encryption(struct net_device *dev, struct ieee_param *param,
 
 static int rtw_set_wpa_ie(struct adapter *padapter, char *pie, unsigned short ielen)
 {
-	u8 *buf = NULL, *pos = NULL;
+	u8 *buf = NULL;
 	int group_cipher = 0, pairwise_cipher = 0;
 	int ret = 0;
 	u8 null_addr[]= {0, 0, 0, 0, 0, 0};
@@ -646,7 +646,6 @@ static int rtw_set_wpa_ie(struct adapter *padapter, char *pie, unsigned short ie
 				DBG_871X("0x%.2x 0x%.2x 0x%.2x 0x%.2x 0x%.2x 0x%.2x 0x%.2x 0x%.2x\n", buf[i], buf[i+1], buf[i+2], buf[i+3], buf[i+4], buf[i+5], buf[i+6], buf[i+7]);
 		}
 
-		pos = buf;
 		if (ielen < RSN_HEADER_LEN) {
 			RT_TRACE(_module_rtl871x_ioctl_os_c, _drv_err_, ("Ie len too short %d\n", ielen));
 			ret  = -1;
-- 
2.19.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
