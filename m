Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 382283325BD
	for <lists+driverdev-devel@lfdr.de>; Tue,  9 Mar 2021 13:49:51 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2CA8E6F562;
	Tue,  9 Mar 2021 12:49:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 2FT9qeG-Juf1; Tue,  9 Mar 2021 12:49:48 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 805326F521;
	Tue,  9 Mar 2021 12:49:47 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 5BB491BF2BD
 for <devel@linuxdriverproject.org>; Tue,  9 Mar 2021 12:49:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 53F434ADED
 for <devel@linuxdriverproject.org>; Tue,  9 Mar 2021 12:49:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id wWzWvoxPgxUL for <devel@linuxdriverproject.org>;
 Tue,  9 Mar 2021 12:49:37 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-pf1-x42f.google.com (mail-pf1-x42f.google.com
 [IPv6:2607:f8b0:4864:20::42f])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 3093A4A061
 for <devel@driverdev.osuosl.org>; Tue,  9 Mar 2021 12:49:37 +0000 (UTC)
Received: by mail-pf1-x42f.google.com with SMTP id l7so9439333pfd.3
 for <devel@driverdev.osuosl.org>; Tue, 09 Mar 2021 04:49:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=UHGEau2CR3Zf0FehLU8kNjTEbePgoadEpgpDDWs/gXA=;
 b=RatiX+T+ANWTYx5oI1zLR5dVjeYlDZ0xhruyx4WCqpasEio48A24NWkz80JoX9fOSE
 OMH3X5UuocA6QH0Xh6q71JBxzFG9/eqRjRB4EC/Rwqs5Jlrdo5lE4KLZTpusDEYyT7rS
 Hyutde19GOd1nkk3VXiqNwAkCXaE/la2NkwP0yZRIcxosUeS4eJMWKgYmreHJN+lc9w5
 Ww7xB8Hvk7/bNQHSHULlA44UjKao50/IpOobgU+8deJvcL+/0L1GMPQTvSGyVX6BpoVg
 jE+GE1/2HnnHkHSLx57Z4hp2M0QsdzVqxXmrckabo5b4bXWKcZAFS2RIUqhRzs0xtuvv
 hnPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=UHGEau2CR3Zf0FehLU8kNjTEbePgoadEpgpDDWs/gXA=;
 b=peLYPI3Gsk7vAHn5wVPY/fGYWMOAugxxz/UGjsVknW8XNricfHfU1SWL5o9SAQ/rgT
 6YnuBtKknAHXSvPAQ3SVv9n91yizYykzhefWnWYc6xKTf+ZNLWQwtdBSWv8EhIpdEmce
 FalnK4b00RzF/6yRvHmhl4+itNfWDWBZZYNDaXuuhI341KcpUllwz7YnMdMkNq6hOByy
 hVHSWwNsnpiCcOm3E62lBeqfxtcQ4W9d/UMnXSGY8rkBREzJptJgtqDBFefuSm2n+kTu
 wiaMypXIwH88IC7NngliotXQPBW9ZiKgJ9ADvuYWTEECkfPmlcXs+i22ruucJpxs0TT5
 tAyw==
X-Gm-Message-State: AOAM532BZxGIo0TDARAWdUWFiFsw44hvL1+RKBxpnkXq18qt9+Z526JL
 CFwffjuJ6OOQDMXwQE17z3o=
X-Google-Smtp-Source: ABdhPJx0LqY4/Q1HxVdNsecQvv/1RoBonJ0DUIXjzsgjCILt+no+w5b1RzKVPi/K09dI3n5xxT4XJA==
X-Received: by 2002:a65:6a48:: with SMTP id o8mr24530323pgu.424.1615294176511; 
 Tue, 09 Mar 2021 04:49:36 -0800 (PST)
Received: from localhost.localdomain ([27.4.151.14])
 by smtp.gmail.com with ESMTPSA id b10sm12891815pgm.76.2021.03.09.04.49.34
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 09 Mar 2021 04:49:36 -0800 (PST)
From: Selvakumar Elangovan <selvakumar16197@gmail.com>
To: gregkh@linuxfoundation.org, Larry.Finger@lwfinger.net,
 florian.c.schilhabel@googlemail.com
Subject: [PATCH] staging: rtl8712: fixed whitespace coding style issue
Date: Tue,  9 Mar 2021 18:19:26 +0530
Message-Id: <20210309124926.14896-1-selvakumar16197@gmail.com>
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
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
 Selvakumar Elangovan <selvakumar16197@gmail.com>
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
