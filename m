Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id E125B8716C
	for <lists+driverdev-devel@lfdr.de>; Fri,  9 Aug 2019 07:24:38 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 6C2908648E;
	Fri,  9 Aug 2019 05:24:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id kkw8JqyIAs9q; Fri,  9 Aug 2019 05:24:36 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id AC14C84407;
	Fri,  9 Aug 2019 05:24:35 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 315F81BF5DC
 for <devel@linuxdriverproject.org>; Fri,  9 Aug 2019 05:24:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 27C01861AB
 for <devel@linuxdriverproject.org>; Fri,  9 Aug 2019 05:24:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id y+UouAo5Ootq for <devel@linuxdriverproject.org>;
 Fri,  9 Aug 2019 05:24:33 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f194.google.com (mail-pl1-f194.google.com
 [209.85.214.194])
 by whitealder.osuosl.org (Postfix) with ESMTPS id EE160875B4
 for <devel@driverdev.osuosl.org>; Fri,  9 Aug 2019 05:24:31 +0000 (UTC)
Received: by mail-pl1-f194.google.com with SMTP id b3so44539951plr.4
 for <devel@driverdev.osuosl.org>; Thu, 08 Aug 2019 22:24:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=3uVkxMKPW2J8PBXaiAQezVtSx496EjJp3yt27ZKme78=;
 b=cOlJ60W0foxEBaDaFCzr3ycN4jICHCAo6iS3VvTZevtYshWzt90XSanWJet44bHe4S
 k8tKrbsQZSHwTdfjf43c36mXhrjD4tC51auUB1zP7Bi+6mzxtg54tnGCzQLvTcUr3nXK
 gBzC2WRlyeu4X6IJHG8c7y8DOmT0kBg5JQws8+hDijUVJ2dgh4N9xtT8nh8tNXJ6j9L7
 15jdNg3GT+BPVoEIm00/jfqHlNPp/AJTHuD4n4nSSrogrjUu6mUjo/7o/0Dd1u/FIecp
 L20jMPiqAPVauRmN4XnT5UJ8wLksZ2uug3V5dUn96blOjL7e4gTjw4uOpnfXHZfwyuC2
 1m/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=3uVkxMKPW2J8PBXaiAQezVtSx496EjJp3yt27ZKme78=;
 b=D1wWGw168Jy+L5xYepWRlbMEhkq1H0k62vx1gRFVX6TzDMVXpzzshI7tt4Z6ocvf8Y
 9zulEmC0k9bu7Gb+vP7OyXonvdABA+QSGS70QUZXIsD2b0+frppSSvtUGhnzbf91BtH+
 ljA728cGD86SN3l5umM23MDYH10NlQFdtkh7LSJ4pt99KE5ar4JiwWjgjbvQaLXWVZC7
 3V/puo5Ibnrj7wbuSfCxcmAJOpzBov3q3/N0KmGE/YHLLA+4F3BTh07gmedKuWDIGzDO
 iYGvXafpsO3R0QdnEfBM2lU7/2ap3MWxdMP/lL3erL7tUuNjwWbcZ5cqgY1eTt66DI9f
 S2uQ==
X-Gm-Message-State: APjAAAX1LLn9ZpfWplTH/ZnILqLZio3iNO8sAr5T8PWy0jWSC1SpFNd2
 JTk+d0IDQMWKzOtpHI5H27M=
X-Google-Smtp-Source: APXvYqzetClFuoIvKac24S6KQSQZB+uR3kuZBG3KDpofUuHQQtJv2yJYUkyraoD26b+FZ9F+QGP9FA==
X-Received: by 2002:a17:902:e2:: with SMTP id
 a89mr17504669pla.210.1565328271623; 
 Thu, 08 Aug 2019 22:24:31 -0700 (PDT)
Received: from localhost.localdomain ([122.163.44.6])
 by smtp.gmail.com with ESMTPSA id h13sm65710491pfn.13.2019.08.08.22.24.29
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Thu, 08 Aug 2019 22:24:31 -0700 (PDT)
From: Nishka Dasgupta <nishkadg.linux@gmail.com>
To: larry.finger@lwfinger.net, florian.c.schilhabel@googlemail.com,
 gregkh@linuxfoundation.org, devel@driverdev.osuosl.org
Subject: [PATCH 10/11] staging: rtl8712: r8712_xmitframe_aggr_1st(): Change
 return type to void
Date: Fri,  9 Aug 2019 10:53:52 +0530
Message-Id: <20190809052353.5308-10-nishkadg.linux@gmail.com>
X-Mailer: git-send-email 2.19.1
In-Reply-To: <20190809052353.5308-1-nishkadg.linux@gmail.com>
References: <20190809052353.5308-1-nishkadg.linux@gmail.com>
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

Change return type of r8712_xmitframe_aggr_1st from u8 to void as it
always returns _SUCCESS and its return value is never used.

Signed-off-by: Nishka Dasgupta <nishkadg.linux@gmail.com>
---
 drivers/staging/rtl8712/rtl8712_xmit.c | 6 ++----
 drivers/staging/rtl8712/rtl8712_xmit.h | 4 ++--
 2 files changed, 4 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/rtl8712/rtl8712_xmit.c b/drivers/staging/rtl8712/rtl8712_xmit.c
index 6f1dbcf25859..9152c25c11f8 100644
--- a/drivers/staging/rtl8712/rtl8712_xmit.c
+++ b/drivers/staging/rtl8712/rtl8712_xmit.c
@@ -318,8 +318,8 @@ void r8712_append_mpdu_unit(struct xmit_buf *pxmitbuf,
 }
 
 
-u8 r8712_xmitframe_aggr_1st(struct xmit_buf *pxmitbuf,
-			struct xmit_frame *pxmitframe)
+void r8712_xmitframe_aggr_1st(struct xmit_buf *pxmitbuf,
+			      struct xmit_frame *pxmitframe)
 {
 	/* linux complete context doesn't need to protect */
 	pxmitframe->pxmitbuf = pxmitbuf;
@@ -332,8 +332,6 @@ u8 r8712_xmitframe_aggr_1st(struct xmit_buf *pxmitbuf,
 	r8712_construct_txaggr_cmd_hdr(pxmitbuf);
 	r8712_append_mpdu_unit(pxmitbuf, pxmitframe);
 	pxmitbuf->aggr_nr = 1;
-
-	return _SUCCESS;
 }
 
 u16 r8712_xmitframe_aggr_next(struct xmit_buf *pxmitbuf,
diff --git a/drivers/staging/rtl8712/rtl8712_xmit.h b/drivers/staging/rtl8712/rtl8712_xmit.h
index 9be8fb70c92e..faf2128285b6 100644
--- a/drivers/staging/rtl8712/rtl8712_xmit.h
+++ b/drivers/staging/rtl8712/rtl8712_xmit.h
@@ -102,8 +102,8 @@ void r8712_do_queue_select(struct _adapter *padapter,
 			   struct pkt_attrib *pattrib);
 
 #ifdef CONFIG_R8712_TX_AGGR
-u8 r8712_xmitframe_aggr_1st(struct xmit_buf *pxmitbuf,
-			struct xmit_frame *pxmitframe);
+void r8712_xmitframe_aggr_1st(struct xmit_buf *pxmitbuf,
+			      struct xmit_frame *pxmitframe);
 u8 r8712_dump_aggr_xframe(struct xmit_buf *pxmitbuf,
 			struct xmit_frame *pxmitframe);
 #endif
-- 
2.19.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
