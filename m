Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id B4017332856
	for <lists+driverdev-devel@lfdr.de>; Tue,  9 Mar 2021 15:17:44 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id B00CF4018E;
	Tue,  9 Mar 2021 14:17:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id aKjOzs_Z7uwd; Tue,  9 Mar 2021 14:17:42 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 08C934018C;
	Tue,  9 Mar 2021 14:17:41 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 680061BF288
 for <devel@linuxdriverproject.org>; Tue,  9 Mar 2021 14:17:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 649126F54A
 for <devel@linuxdriverproject.org>; Tue,  9 Mar 2021 14:17:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id AbAteQi9xQ4N for <devel@linuxdriverproject.org>;
 Tue,  9 Mar 2021 14:17:27 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-pj1-x102f.google.com (mail-pj1-x102f.google.com
 [IPv6:2607:f8b0:4864:20::102f])
 by smtp3.osuosl.org (Postfix) with ESMTPS id EDD2E6F49A
 for <devel@driverdev.osuosl.org>; Tue,  9 Mar 2021 14:17:26 +0000 (UTC)
Received: by mail-pj1-x102f.google.com with SMTP id jx13so965972pjb.1
 for <devel@driverdev.osuosl.org>; Tue, 09 Mar 2021 06:17:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=PERnROPDS6majMQmO2xScJnwwJrNGak76ViyrQxoAAM=;
 b=tnCoog0WRvk39rDmXkBLIhrawSpZJa1/qvua5bZc63EEr+wbHjhtc8oWBX/34GBrHo
 51s0Pd0MKAoDr257fNUnK54oWy7TdBChFnETDujcINUvYMKUEEIJS7PJ1dC/C8YIPKcq
 WLmD4bm1YqdsCDh0atqLGPGgbka248zwXrGcA1utqvCnMPeBrBK1lLtQMIumTegreVms
 KEIWbdqfr5CRjxeISrg7iDA91l/14mGKLHA/+pN2NUdeuKhQuSvFNcKwVO42kO9cVyRq
 Mr7oeAyuF3WHrCcaBh2MboBDUlL7Wjija7DxTzIm8nAXfSy9MEWW6HuFq43Veoiq8cDh
 4nnw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=PERnROPDS6majMQmO2xScJnwwJrNGak76ViyrQxoAAM=;
 b=GC9tA7HSHJYyqzc9XSVAqNF6FN97KjH4fmFsw5W2GETqorv75xy0/OGAggMd934Xr7
 vwQTQCtkSiIzsYR6jlqvhAeR3KCsbNrMwyw1hv5WswmrerTcVZxWDBZA+DOR3lzYGWVh
 7vyHWmfzuRH2IKhCS6OffOV4o3/ugYAf0KZDoGVlHC5ynV10IdqigWN3zt5giD8YWxAX
 bZSJ9GWUl7xVu/uqTXHGObM8bS0tP4DWlsOw6ZT2ZmOrvBXhqMG6qqtmYbTjNYeMrF+o
 x+UU4wlKsEsm1rd6z1Iggqaj6TLA0X7BP4PQnwFoeKRzma+EmMOhBy56AJ4R7wSNWB0V
 ckRA==
X-Gm-Message-State: AOAM5317hbuTvmCP7P4b2qhKMp8/Vgkn2HtNM542TNDQ/z9MqOqgCjsQ
 KHS3OGVuebouus11mXogTjA=
X-Google-Smtp-Source: ABdhPJzpUdPG4UaEgdCj/cr+A4hLNmqtMU3NpjRUngfQzOxbCydMcp/T68de2Ho1p3nqMVy119i2hA==
X-Received: by 2002:a17:902:ed88:b029:e3:6b9f:9ac3 with SMTP id
 e8-20020a170902ed88b02900e36b9f9ac3mr4154307plj.72.1615299446337; 
 Tue, 09 Mar 2021 06:17:26 -0800 (PST)
Received: from localhost.localdomain ([116.73.168.170])
 by smtp.gmail.com with ESMTPSA id o3sm13043490pgm.60.2021.03.09.06.17.24
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 09 Mar 2021 06:17:26 -0800 (PST)
From: Selvakumar Elangovan <selvakumar16197@gmail.com>
To: gregkh@linuxfoundation.org, Larry.Finger@lwfinger.net,
 florian.c.schilhabel@googlemail.com
Subject: [PATCH v2] rtl8712: fixed whitespace coding style issue
Date: Tue,  9 Mar 2021 19:47:21 +0530
Message-Id: <20210309141721.16772-1-selvakumar16197@gmail.com>
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

Removed additional whitespaces in the rtl8712_xmit.h file.

Signed-off-by: Selvakumar Elangovan <selvakumar16197@gmail.com>
---
 drivers/staging/rtl8712/rtl8712_xmit.h | 3 ---
 1 file changed, 3 deletions(-)

diff --git a/drivers/staging/rtl8712/rtl8712_xmit.h b/drivers/staging/rtl8712/rtl8712_xmit.h
index 0b56bd3ac4d0..e4c0a4bf8388 100644
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
@@ -89,7 +87,6 @@ struct tx_desc {
 	__le32 txdw7;
 };
 
-
 union txdesc {
 	struct tx_desc txdesc;
 	unsigned int value[TXDESC_SIZE>>2];
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
