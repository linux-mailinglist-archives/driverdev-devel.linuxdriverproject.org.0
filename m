Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DAF47ECCC
	for <lists+driverdev-devel@lfdr.de>; Fri,  2 Aug 2019 08:42:38 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id ACA4D878BC;
	Fri,  2 Aug 2019 06:42:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ovKkTnmjC2p5; Fri,  2 Aug 2019 06:42:34 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 1DA5387968;
	Fri,  2 Aug 2019 06:42:34 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id D51551BF27A
 for <devel@linuxdriverproject.org>; Fri,  2 Aug 2019 06:42:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id CF25A22EC1
 for <devel@linuxdriverproject.org>; Fri,  2 Aug 2019 06:42:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id SMG9uoaAMbpY for <devel@linuxdriverproject.org>;
 Fri,  2 Aug 2019 06:42:30 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f182.google.com (mail-pl1-f182.google.com
 [209.85.214.182])
 by silver.osuosl.org (Postfix) with ESMTPS id 4AB6A2049B
 for <devel@driverdev.osuosl.org>; Fri,  2 Aug 2019 06:42:30 +0000 (UTC)
Received: by mail-pl1-f182.google.com with SMTP id 4so26256513pld.10
 for <devel@driverdev.osuosl.org>; Thu, 01 Aug 2019 23:42:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=2/ogbfe7bXOdOY/fVXJOpqUdrSu8Ti2IrlcmkcoZaQ4=;
 b=tDmhi70EpgTVQe+lsw9oCarK8s3OCeHhN6iPpxsFctnNcR/uUpYRwq5Pviih3h61Up
 kBtZEBh2XYT9mtXmNlJnf1+W6Vx/WCGmaThlVF9d6SpFC2MaZ/PNgiEQA1gLt1o7FQUK
 vxOouVQLbT0L/ryD+/AoB647UAT9TQdcb8FpAUIwZgrp/H8YoHN/H2lXc7TgqOI7UksW
 4E+YDF5+NBodhKe5KQWmnWI4VZm1oolg5lc437vORYod0y9aWEL0k+3GJJ1hecX/P7H3
 qCyuqCN/6IuAFwYn6HAuWeupi568oaojyrIZ8l3re63moZNR+yQM+dMcmR/mIC34xlC9
 9b5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=2/ogbfe7bXOdOY/fVXJOpqUdrSu8Ti2IrlcmkcoZaQ4=;
 b=CWs/V15k1QcuDfguIRe+ckIpU26m2AKe3aykp+FIhR7CprE/Ujk9NdUIY/8bT1VRIA
 1M4/0ffsK5K8VBzwdcT8nOr5+yl1lnelfQJ9MX35EMrW7iVHH0PPFWjX2lwgeoGm4kmj
 cVGqb+cZIMAIbV4gyETRoahF4HVEE32f80HDZD94CeTCyETZo8sNobUzgYC1SVf/BZvH
 um1FbK2c0chumDsN1INfGndbmbevCqdOpXAnQZ909MH7gsNF+jMv6znHXMMaVmUu4B/R
 nWMSf44x6VIKFhezxD1nRnOS1PZmd8ZmiIPnriupK48XJhjoqeFDT5mJlBPyvkmAMOBL
 BfUw==
X-Gm-Message-State: APjAAAWqWGXhN0SVDE2CHaeNDL6EC0gRQaa7x7TvGgB3G8Zkpa3ctJ9W
 oyNoIMDsUuYNc1n5XDGeajQ=
X-Google-Smtp-Source: APXvYqxfo8fNJAddI85MxI/jg6PupD2ScKTMwSGz6ruLQuAJetHQDvYeGGMXxfgYxTbKjVMKqfqHiA==
X-Received: by 2002:a17:902:9349:: with SMTP id
 g9mr127656961plp.262.1564728149962; 
 Thu, 01 Aug 2019 23:42:29 -0700 (PDT)
Received: from localhost.localdomain ([122.163.105.8])
 by smtp.gmail.com with ESMTPSA id v138sm84934268pfc.15.2019.08.01.23.42.27
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Thu, 01 Aug 2019 23:42:29 -0700 (PDT)
From: Nishka Dasgupta <nishkadg.linux@gmail.com>
To: larry.finger@lwfinger.net, florian.c.schilhabel@googlemail.com,
 gregkh@linuxfoundation.org, devel@driverdev.osuosl.org
Subject: [PATCH 3/9] staging: rtl8712: r8712_init_recv_priv(): Change return
 type
Date: Fri,  2 Aug 2019 12:12:06 +0530
Message-Id: <20190802064212.30476-3-nishkadg.linux@gmail.com>
X-Mailer: git-send-email 2.19.1
In-Reply-To: <20190802064212.30476-1-nishkadg.linux@gmail.com>
References: <20190802064212.30476-1-nishkadg.linux@gmail.com>
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

Change return type of r8712_init_recv_priv from int to void as its
return value is never used. Remove return statements accordingly.

Signed-off-by: Nishka Dasgupta <nishkadg.linux@gmail.com>
---
 drivers/staging/rtl8712/recv_osdep.h   | 4 ++--
 drivers/staging/rtl8712/rtl8712_recv.c | 3 +--
 2 files changed, 3 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/rtl8712/recv_osdep.h b/drivers/staging/rtl8712/recv_osdep.h
index 7a0fa227de73..3cfafef1af91 100644
--- a/drivers/staging/rtl8712/recv_osdep.h
+++ b/drivers/staging/rtl8712/recv_osdep.h
@@ -25,8 +25,8 @@ s32  r8712_recv_entry(union recv_frame *precv_frame);
 void r8712_recv_indicatepkt(struct _adapter *adapter,
 			    union recv_frame *precv_frame);
 void r8712_handle_tkip_mic_err(struct _adapter *padapter, u8 bgroup);
-int r8712_init_recv_priv(struct recv_priv *precvpriv,
-			 struct _adapter *padapter);
+void r8712_init_recv_priv(struct recv_priv *precvpriv,
+			  struct _adapter *padapter);
 void r8712_free_recv_priv(struct recv_priv *precvpriv);
 void r8712_os_recv_resource_alloc(struct _adapter *padapter,
 				  union recv_frame *precvframe);
diff --git a/drivers/staging/rtl8712/rtl8712_recv.c b/drivers/staging/rtl8712/rtl8712_recv.c
index d9574ea3ffb2..bb0407cac1ae 100644
--- a/drivers/staging/rtl8712/rtl8712_recv.c
+++ b/drivers/staging/rtl8712/rtl8712_recv.c
@@ -35,7 +35,7 @@ static u8 rfc1042_header[] = {0xaa, 0xaa, 0x03, 0x00, 0x00, 0x00};
 
 static void recv_tasklet(void *priv);
 
-int r8712_init_recv_priv(struct recv_priv *precvpriv, struct _adapter *padapter)
+void r8712_init_recv_priv(struct recv_priv *precvpriv, struct _adapter *padapter)
 {
 	int i;
 	struct recv_buf *precvbuf;
@@ -83,7 +83,6 @@ int r8712_init_recv_priv(struct recv_priv *precvpriv, struct _adapter *padapter)
 		}
 		pskb = NULL;
 	}
-	return res;
 }
 
 void r8712_free_recv_priv(struct recv_priv *precvpriv)
-- 
2.19.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
