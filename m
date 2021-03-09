Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 882E23325DD
	for <lists+driverdev-devel@lfdr.de>; Tue,  9 Mar 2021 13:55:04 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7320683CC4;
	Tue,  9 Mar 2021 12:55:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id tDKjSw_-mAKl; Tue,  9 Mar 2021 12:55:01 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id BEFB782F84;
	Tue,  9 Mar 2021 12:55:00 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 306611BF2BD
 for <devel@linuxdriverproject.org>; Tue,  9 Mar 2021 12:54:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 2BE664B59B
 for <devel@linuxdriverproject.org>; Tue,  9 Mar 2021 12:54:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id S7mKpArPxoVA for <devel@linuxdriverproject.org>;
 Tue,  9 Mar 2021 12:54:50 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-pg1-x532.google.com (mail-pg1-x532.google.com
 [IPv6:2607:f8b0:4864:20::532])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 6EDB94A061
 for <devel@driverdev.osuosl.org>; Tue,  9 Mar 2021 12:54:50 +0000 (UTC)
Received: by mail-pg1-x532.google.com with SMTP id v14so1780201pgq.2
 for <devel@driverdev.osuosl.org>; Tue, 09 Mar 2021 04:54:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=UHGEau2CR3Zf0FehLU8kNjTEbePgoadEpgpDDWs/gXA=;
 b=n/o1C0e8yaf4M8DRWhQh+xY5+T4LcUl6vejm5QmAk//yF4SpYJVCfotpcH5T4cP/cM
 iBwJF3VFhH9o/tkiVuJaJCCxWvcMLHhmWcjj9h84PbsmH/wbDUKzBluDD7CMXuJxvHv4
 wpExQWZiBZWi12ihulWowpDrygEiEwRT1ghe8oN4l8fdc4i+lVCfgljRlw1HVXnTb96+
 xRfNnTpjn7OX2M+nuG2XaQxsZ2Rztls9NiZLWHvo9weIBmRMYukC9leaaTOHzgPzL4pX
 qkEtgbGdZs9gh8q3XWWh5eufTLhi8I1YjAo5YNUcbZly+ZLAFknoVGR4u3QZIrmtqhll
 jZPg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=UHGEau2CR3Zf0FehLU8kNjTEbePgoadEpgpDDWs/gXA=;
 b=CtW8GuuL2azw85+QSkZ0xWYTEphvct/qmIx2CIanPcPzM9TYa0ncKc+w+dAS05tyWN
 A6HEouC0dphQ7lwBjo7TQaFS06sG4ZpAnUErve23eFvKRS8tEXSbDKSC9Dma4OQGalV+
 dQEKnZCO7lLv2axaWmTqnCGshcCTzpuVkScuEx/rUcFk8a9G6J/tjPWq0E+a33oKTr+G
 zuXHjETe1zlmIKG7Vvz8hPJ6eGXsR/H8tSTAzggub8IreYQxvHPpxa7MJrontBtS3c+g
 IZgWc9gNap9WgWeQYynUBHBPU1CUaOFjRJnlNtIS5iy3mNLCc5cAOc2dHNCdSOHx1WNo
 9YVQ==
X-Gm-Message-State: AOAM532D/lwX3GRQGJSb5wT50bdIK5jgPTt4NrbzJavhwGwJumBKKdw1
 8+64HG8Xetk2LGFnv9gHT2Y=
X-Google-Smtp-Source: ABdhPJwqB8tjuHrLcsi3Y5/s8pzw+6cl4lIsKlgnU6PTT1wG7nUcvZt2jLeJajD/WnTCsI+W1QX6sg==
X-Received: by 2002:a63:ea50:: with SMTP id l16mr24257661pgk.442.1615294489833; 
 Tue, 09 Mar 2021 04:54:49 -0800 (PST)
Received: from localhost.localdomain ([27.4.151.14])
 by smtp.gmail.com with ESMTPSA id f19sm13655234pgl.49.2021.03.09.04.54.47
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 09 Mar 2021 04:54:49 -0800 (PST)
From: Selvakumar Elangovan <selvakumar16197@gmail.com>
To: gregkh@linuxfoundation.org, Larry.Finger@lwfinger.net,
 florian.c.schilhabel@googlemail.com
Subject: [PATCH] staging: rtl8712: fixed whitespace coding style issue
Date: Tue,  9 Mar 2021 18:24:45 +0530
Message-Id: <20210309125445.15167-1-selvakumar16197@gmail.com>
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
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Removed additional whitspaces and added space around the binary operator in the rtl8712_xmit.h file

Signed-off-by: Selvakumar Elangovan <selvakumar16197@gmail.com>
---
 drivers/staging/rtl8712/rtl8712_xmit.h | 5 +----
 1 file changed, 1 insertion(+), 4 deletions(-)

diff --git a/drivers/staging/rtl8712/rtl8712_xmit.h b/drivers/staging/rtl8712/rtl8712_xmit.h
index 0b56bd3ac4d0..5cd651a0de75 100644
--- a/drivers/staging/rtl8712/rtl8712_xmit.h
+++ b/drivers/staging/rtl8712/rtl8712_xmit.h
@@ -36,10 +36,8 @@
 #define MAX_AMSDU_XMITBUF_SZ 8704
 #define MAX_TXAGG_XMITBUF_SZ 16384 /*16k*/
 
-
 #define tx_cmd tx_desc
 
-
 /*
  *defined for TX DESC Operation
  */
@@ -89,10 +87,9 @@ struct tx_desc {
 	__le32 txdw7;
 };
 
-
 union txdesc {
 	struct tx_desc txdesc;
-	unsigned int value[TXDESC_SIZE>>2];
+	unsigned int value[TXDESC_SIZE >> 2];
 };
 
 int r8712_xmitframe_complete(struct _adapter *padapter,
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
