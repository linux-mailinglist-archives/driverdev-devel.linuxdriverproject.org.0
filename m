Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 814E933A5FD
	for <lists+driverdev-devel@lfdr.de>; Sun, 14 Mar 2021 17:29:19 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4F52947036;
	Sun, 14 Mar 2021 16:29:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id wSjERq91N9zo; Sun, 14 Mar 2021 16:29:16 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4D1474694A;
	Sun, 14 Mar 2021 16:29:15 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 65E3B1BF3D6
 for <devel@linuxdriverproject.org>; Sun, 14 Mar 2021 16:29:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 5DA464013B
 for <devel@linuxdriverproject.org>; Sun, 14 Mar 2021 16:29:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id XQ_1zcWyCf8p for <devel@linuxdriverproject.org>;
 Sun, 14 Mar 2021 16:29:03 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-pg1-x531.google.com (mail-pg1-x531.google.com
 [IPv6:2607:f8b0:4864:20::531])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 50CE040133
 for <devel@driverdev.osuosl.org>; Sun, 14 Mar 2021 16:29:03 +0000 (UTC)
Received: by mail-pg1-x531.google.com with SMTP id 205so2054200pgh.9
 for <devel@driverdev.osuosl.org>; Sun, 14 Mar 2021 09:29:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:mime-version:content-disposition;
 bh=hydLbPF22FI/ZF8uslyDviDv0PrF8iR8m5/0Mq6/P6M=;
 b=FCuJtbzWMCWrvSWLvY75rmop6z2gMBBiyLSJf/cqIBQy+Gprqxw1pXtRNm1xtRzd8S
 ALAH7Y9MzZshLWhNUjcTw5uUulVl2kpGwQubQgGvQGuIulJ3Em4UwjApoQGsqzfkLEyL
 qELMwExn+qs8KGNRXcOT/KlIoXXbOWhNmSftnbWvSP0QwvIJMM0bi/uY8PbdRcwJ6WEn
 n9muf/dKbenmXgIzVCnD3P2CJwI0ET2t9TRDBGXGEwwOy6Ads7/BYJ1Lp10ObFlJrkhZ
 3ELBfehttkizJYYOOSx8xIV2QMpjmtppV07VfhkHiyw9wK383eeccWr7qxXi8ru/IrDB
 ZtKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
 :content-disposition;
 bh=hydLbPF22FI/ZF8uslyDviDv0PrF8iR8m5/0Mq6/P6M=;
 b=qi/m4p+FgsyLnbGmjwEPEewGS0hvmZ9kgh7nRuEnT3+RC4AA51SUSmrkkkbgOQGtJp
 qdT8NE+xkUiOrCjaWh0QcwbToDQG6hl0WPNamjvgriobsQMV/Ng5QvDZRiVfrZnIg9TR
 ruj5ii1mRUCcJJxYeEAcCHu0OQGQ4lqhUnbhHsbALB5dcoKL3Hhfse5/XsKHxyjwl7Sp
 vxGJHtoYv2F7Eb57K4IFpFSD6YR09Ky9RQWLIn0WN4QcMDM7/aJD4qmQ/CS+cHg/PcpS
 bWqwBVq+SRHEoPAdfdEBm/Cv8RgXbosOZFtFQO35SsRXiZXJatXYabpuSPtKYOFdAXRY
 fozw==
X-Gm-Message-State: AOAM532k+nv9+C7igg0IAnOUq/iE4gGDcDShHwTCWBR2V0cFWvjH7TeJ
 krmjDJg/PAlEX2VmTUuqhfM=
X-Google-Smtp-Source: ABdhPJxEG+4j7++O5YaLFVtrTxJ29LHCevC3P3na5ul5UAEWrhQzSAkwL8emWLa7hbM/EwNrZ//SZA==
X-Received: by 2002:a63:f311:: with SMTP id l17mr20241828pgh.349.1615739342736; 
 Sun, 14 Mar 2021 09:29:02 -0700 (PDT)
Received: from shreya-VirtualBox ([122.172.225.2])
 by smtp.gmail.com with ESMTPSA id w203sm11142769pff.59.2021.03.14.09.28.59
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 14 Mar 2021 09:29:02 -0700 (PDT)
Date: Sun, 14 Mar 2021 21:58:55 +0530
From: Shreya <shreya.ajithchb@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH v2] staging:rtl8723bs:core:rtw_wlan_util:fixed indentation
 coding style issue
Message-ID: <20210314162855.GA2002@shreya-VirtualBox>
MIME-Version: 1.0
Content-Disposition: inline
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
 bkkarthik@pesu.pes.edu, d.straghkov@ispras.ru, linux-kernel@vger.kernel.org,
 dan.carpenter@oracle.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Fixed the indentation of the else part of the conditional statement.

Signed-off-by: Shreya <shreya.ajithchb@gmail.com>
---
v1 -> v2:
Changed name in signed-off-by to match name in From

 drivers/staging/rtl8723bs/core/rtw_wlan_util.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8723bs/core/rtw_wlan_util.c b/drivers/staging/rtl8723bs/core/rtw_wlan_util.c
index 975f2830e29e..4b5afaeac916 100644
--- a/drivers/staging/rtl8723bs/core/rtw_wlan_util.c
+++ b/drivers/staging/rtl8723bs/core/rtw_wlan_util.c
@@ -1760,7 +1760,7 @@ void update_wireless_mode(struct adapter *padapter)
 
 	if (pmlmeext->cur_wireless_mode & WIRELESS_11B)
 		update_mgnt_tx_rate(padapter, IEEE80211_CCK_RATE_1MB);
-	 else
+	else
 		update_mgnt_tx_rate(padapter, IEEE80211_OFDM_RATE_6MB);
 }
 
-- 
2.25.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
