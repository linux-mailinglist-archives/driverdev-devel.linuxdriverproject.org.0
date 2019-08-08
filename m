Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D7F685AEF
	for <lists+driverdev-devel@lfdr.de>; Thu,  8 Aug 2019 08:40:40 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 49D4B86DF3;
	Thu,  8 Aug 2019 06:40:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id YI4lJVYK5KZb; Thu,  8 Aug 2019 06:40:37 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 1765B86B68;
	Thu,  8 Aug 2019 06:40:37 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 24B8D1BF83A
 for <devel@linuxdriverproject.org>; Thu,  8 Aug 2019 06:40:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 0D95A20452
 for <devel@linuxdriverproject.org>; Thu,  8 Aug 2019 06:40:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id CY74Pdk4IVJP for <devel@linuxdriverproject.org>;
 Thu,  8 Aug 2019 06:40:33 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f193.google.com (mail-pg1-f193.google.com
 [209.85.215.193])
 by silver.osuosl.org (Postfix) with ESMTPS id 000DA20456
 for <devel@driverdev.osuosl.org>; Thu,  8 Aug 2019 06:40:32 +0000 (UTC)
Received: by mail-pg1-f193.google.com with SMTP id z14so6276650pga.5
 for <devel@driverdev.osuosl.org>; Wed, 07 Aug 2019 23:40:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=X7gdWx3x6fhgPHtsq1kv4Ag57ta81SjYw1PhRVs0nTE=;
 b=SVF+kFvIn0c1uKErxGMXwDN0Ynua4BGW+dqoBAwrxBCr+uztorXW27MCeRAXzkpw97
 VFjLebLYPTePQG7aLHrfoFBh0rlv4/g0pNpUZB9RKKronxd4sl4ZIZSnuunJ7k+kdlny
 3Fq1Rg0WCTfvqQsiTFyA0Q3r4uXluuMBh9NIzEqgTMIMmgQRpTgAmh21IqmxXx3gnXzc
 6DPLqzvSaJTNgoXso/hrzEqiNSyh03n9Q5S6c6N3ODsQPwGEsgRYK+evo6PeWvBsOGWn
 SBPCBVmYdmrAiOhPbxhLB/zj1JKO6spmIude0nqkxcb0slzJHxwkGY8XT4SVIkj6kmAM
 GtZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=X7gdWx3x6fhgPHtsq1kv4Ag57ta81SjYw1PhRVs0nTE=;
 b=NCTBuHkI7yfMepwl1S5Y7T2IJ7yrlZIvXOTBQQSR4GbrWu9o4K088aVJHnyvUP7pa9
 h2jRgI83Wym9MxAkEhPh/C1O+chPRgGKxrIfJXIeenVsqqdHQVzkvSjDHK9DbDhFpcsB
 4Rb/t5hw/tfgdQ1DBC71As2kcFMk9FPNXIeRLTFifnsWYN8+XDKh39HuX8Sc4hjabykq
 5bcVKedK4cylZOK6V2C/YOYf12cifq/A2NQlfweLpByBAFHgwik21lrmymuuTtXedvg6
 KxlthuUv9F/CMp7TUXVrD+D1Jm/U7VwIO1jgYlX7QPymBWWX1MU7MbjWXz+UW3tKa0/L
 y33g==
X-Gm-Message-State: APjAAAWCsOM47iBnVxloWw+gobFxoZGe51jgeXNFp+kgRqIqVCJg42kH
 cvlljuybSFSaXPwKVPFDrZM=
X-Google-Smtp-Source: APXvYqw/K7I1EEPbhLSXtehE39wxkesdyRQiwqIyVASN0oD9EZtp3tjiBhh36W9f/x6vJWEYBlbbgg==
X-Received: by 2002:a17:90a:2ec1:: with SMTP id
 h1mr2385156pjs.119.1565246432674; 
 Wed, 07 Aug 2019 23:40:32 -0700 (PDT)
Received: from localhost.localdomain ([122.163.44.6])
 by smtp.gmail.com with ESMTPSA id m101sm1213950pjb.7.2019.08.07.23.40.29
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Wed, 07 Aug 2019 23:40:32 -0700 (PDT)
From: Nishka Dasgupta <nishkadg.linux@gmail.com>
To: larry.finger@lwfinger.net, florian.c.schilhabel@googlemail.com,
 gregkh@linuxfoundation.org, devel@driverdev.osuosl.org
Subject: [PATCH 03/10] staging: rtl8712: r8712_wlanhdr_to_ethhdr(): Change
 return values
Date: Thu,  8 Aug 2019 12:10:05 +0530
Message-Id: <20190808064012.12661-3-nishkadg.linux@gmail.com>
X-Mailer: git-send-email 2.19.1
In-Reply-To: <20190808064012.12661-1-nishkadg.linux@gmail.com>
References: <20190808064012.12661-1-nishkadg.linux@gmail.com>
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

Change return values of r8712_wlanhdr_to_ethhdr from _SUCCESS/_FAIL to
0/-ENOMEM. Modify the function containing a call site of
r8712_wlanhdr_to_ethhdr so that it compares the return value to
0/-ENOMEM instead of _SUCCESS/_FAIL.
Change the return type of r8712_wlanhdr_to_ethhdr from sint to int to
match its prototype in corresponding .h file.

Signed-off-by: Nishka Dasgupta <nishkadg.linux@gmail.com>
---
 drivers/staging/rtl8712/rtl8712_recv.c | 4 ++--
 drivers/staging/rtl8712/rtl871x_recv.c | 8 ++++----
 2 files changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/rtl8712/rtl8712_recv.c b/drivers/staging/rtl8712/rtl8712_recv.c
index 3950b2424b64..0c5712898653 100644
--- a/drivers/staging/rtl8712/rtl8712_recv.c
+++ b/drivers/staging/rtl8712/rtl8712_recv.c
@@ -638,8 +638,8 @@ static int r8712_process_recv_indicatepkts(struct _adapter *padapter,
 		}
 	} else { /*B/G mode*/
 		retval = r8712_wlanhdr_to_ethhdr(prframe);
-		if (retval != _SUCCESS)
-			return retval;
+		if (retval)
+			return _FAIL;
 		if (!padapter->driver_stopped && !padapter->surprise_removed) {
 			/* indicate this recv_frame */
 			r8712_recv_indicatepkt(padapter, prframe);
diff --git a/drivers/staging/rtl8712/rtl871x_recv.c b/drivers/staging/rtl8712/rtl871x_recv.c
index 79c7a329e9f6..4fae3af36af5 100644
--- a/drivers/staging/rtl8712/rtl871x_recv.c
+++ b/drivers/staging/rtl8712/rtl871x_recv.c
@@ -585,7 +585,7 @@ sint r8712_validate_recv_frame(struct _adapter *adapter,
 	return retval;
 }
 
-sint r8712_wlanhdr_to_ethhdr(union recv_frame *precvframe)
+int r8712_wlanhdr_to_ethhdr(union recv_frame *precvframe)
 {
 	/*remove the wlanhdr and add the eth_hdr*/
 	sint	rmv_len;
@@ -628,14 +628,14 @@ sint r8712_wlanhdr_to_ethhdr(union recv_frame *precvframe)
 		ptr = recvframe_pull(precvframe, (rmv_len -
 		      sizeof(struct ethhdr) + 2) - 24);
 		if (!ptr)
-			return _FAIL;
+			return -ENOMEM;
 		memcpy(ptr, get_rxmem(precvframe), 24);
 		ptr += 24;
 	} else {
 		ptr = recvframe_pull(precvframe, (rmv_len -
 		      sizeof(struct ethhdr) + (bsnaphdr ? 2 : 0)));
 		if (!ptr)
-			return _FAIL;
+			return -ENOMEM;
 	}
 
 	memcpy(ptr, pattrib->dst, ETH_ALEN);
@@ -645,7 +645,7 @@ sint r8712_wlanhdr_to_ethhdr(union recv_frame *precvframe)
 
 		memcpy(ptr + 12, &be_tmp, 2);
 	}
-	return _SUCCESS;
+	return 0;
 }
 
 s32 r8712_recv_entry(union recv_frame *precvframe)
-- 
2.19.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
