Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D82F85AF3
	for <lists+driverdev-devel@lfdr.de>; Thu,  8 Aug 2019 08:40:52 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 3426F20452;
	Thu,  8 Aug 2019 06:40:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id C7Xmv0RBUDnQ; Thu,  8 Aug 2019 06:40:49 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 54D6F2045B;
	Thu,  8 Aug 2019 06:40:39 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 1A2871BF83A
 for <devel@linuxdriverproject.org>; Thu,  8 Aug 2019 06:40:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 1703186149
 for <devel@linuxdriverproject.org>; Thu,  8 Aug 2019 06:40:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id UBprKN_yxiNU for <devel@linuxdriverproject.org>;
 Thu,  8 Aug 2019 06:40:35 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f196.google.com (mail-pf1-f196.google.com
 [209.85.210.196])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 8388086141
 for <devel@driverdev.osuosl.org>; Thu,  8 Aug 2019 06:40:35 +0000 (UTC)
Received: by mail-pf1-f196.google.com with SMTP id q10so43502318pff.9
 for <devel@driverdev.osuosl.org>; Wed, 07 Aug 2019 23:40:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=LExaAa1jw/Q+04q6ZN/MCtq+QBEcS2GvUVcSWj8wx/k=;
 b=Aa8+mjW414CjIRF2J0KzPtXuBrHWunXPY5sahFwTTfCc3vVJ0Pw3YZqn4HO9++KPkD
 9gKJiBqvUTPmpFvFK3A4yJLoaJxyxP0uGpuNBn/xoXRu5tsmiiS22gAmX50tvAHIrJtY
 d134joiBhiDMVGfemYMgvn6+adUS3iGBzR6kfGQCeus1dEbnwSISOa+Z3Qzr5jO/IhLL
 fv3mnX1Kb/1o9iuPrGHy8j0WhUOUVXxcrwwWWbL/u77H4f2GZmqkROLicztdZtFKTR1+
 oZQEFmTp8HWNXzRS6sx5yLZNtioV7UK+DyFSeiIWzO+Lwf0AezQXxBt560WvhvuTm0+p
 fgBQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=LExaAa1jw/Q+04q6ZN/MCtq+QBEcS2GvUVcSWj8wx/k=;
 b=hbYjXzjEnDNS8PLhfW1L6J7NfE93nZw0TbQIpf+oiGR+kOYEUMEURqKNLj8m0Z3Oss
 /lf8EpP9APGU58UxXdNHWVA32k7E03IGmYc2ACxssDCEBvA5MDmVAumaHsY7/HITTLzY
 AEaRytW5QAKpf7fVBNSLPV8tBRJ+a88yJwq9IokwamHDb/0rydzFff0jgklSL46wGdxC
 Y8A+a4WRW3qaQDKAVlT1Sp5sAA/FkaaqPgHhDZb+XVNaCu9yIbK2fwGuSqpKBAMRT8LF
 CWrFqDtXf2KTiR11GpW935KWVbpLhqjeFd7OFKHTnHFFagMf4gS/skzDoPWVgqcKjOai
 IZQA==
X-Gm-Message-State: APjAAAVXyArXM77JbSJhqw/jfriuaulqH0JjpTsGJk1kKAg4PPc4KckX
 xU2v0wr+RNgRgoLmFHggRTc=
X-Google-Smtp-Source: APXvYqyn8yNN9dgyMA8CpHMmbbytM4t7MNFvVGnww8HVmgwJo6ob0zm/dKXCHPX8QZQTBvRllAJD/w==
X-Received: by 2002:a63:195f:: with SMTP id 31mr5721622pgz.225.1565246435164; 
 Wed, 07 Aug 2019 23:40:35 -0700 (PDT)
Received: from localhost.localdomain ([122.163.44.6])
 by smtp.gmail.com with ESMTPSA id m101sm1213950pjb.7.2019.08.07.23.40.32
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Wed, 07 Aug 2019 23:40:34 -0700 (PDT)
From: Nishka Dasgupta <nishkadg.linux@gmail.com>
To: larry.finger@lwfinger.net, florian.c.schilhabel@googlemail.com,
 gregkh@linuxfoundation.org, devel@driverdev.osuosl.org
Subject: [PATCH 04/10] staging: rtl8712: r8712_recv_entry(): Change return type
Date: Thu,  8 Aug 2019 12:10:06 +0530
Message-Id: <20190808064012.12661-4-nishkadg.linux@gmail.com>
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

Change return type of r8712_recv_entry from s32 to void as its return
value is never used. Modify or remove return statements accordingly.

Signed-off-by: Nishka Dasgupta <nishkadg.linux@gmail.com>
---
 drivers/staging/rtl8712/recv_osdep.h   | 2 +-
 drivers/staging/rtl8712/rtl871x_recv.c | 5 ++---
 2 files changed, 3 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/rtl8712/recv_osdep.h b/drivers/staging/rtl8712/recv_osdep.h
index 792f9cfbacd9..d8c1fa74f544 100644
--- a/drivers/staging/rtl8712/recv_osdep.h
+++ b/drivers/staging/rtl8712/recv_osdep.h
@@ -21,7 +21,7 @@
 void _r8712_init_recv_priv(struct recv_priv *precvpriv,
 			   struct _adapter *padapter);
 void _r8712_free_recv_priv(struct recv_priv *precvpriv);
-s32  r8712_recv_entry(union recv_frame *precv_frame);
+void r8712_recv_entry(union recv_frame *precv_frame);
 void r8712_recv_indicatepkt(struct _adapter *adapter,
 			    union recv_frame *precv_frame);
 void r8712_handle_tkip_mic_err(struct _adapter *padapter, u8 bgroup);
diff --git a/drivers/staging/rtl8712/rtl871x_recv.c b/drivers/staging/rtl8712/rtl871x_recv.c
index 4fae3af36af5..e5092b6da4bd 100644
--- a/drivers/staging/rtl8712/rtl871x_recv.c
+++ b/drivers/staging/rtl8712/rtl871x_recv.c
@@ -648,7 +648,7 @@ int r8712_wlanhdr_to_ethhdr(union recv_frame *precvframe)
 	return 0;
 }
 
-s32 r8712_recv_entry(union recv_frame *precvframe)
+void r8712_recv_entry(union recv_frame *precvframe)
 {
 	struct _adapter *padapter;
 	struct recv_priv *precvpriv;
@@ -666,9 +666,8 @@ s32 r8712_recv_entry(union recv_frame *precvframe)
 	precvpriv->rx_pkts++;
 	precvpriv->rx_bytes += (uint)(precvframe->u.hdr.rx_tail -
 				precvframe->u.hdr.rx_data);
-	return ret;
+	return;
 _recv_entry_drop:
 	precvpriv->rx_drop++;
 	padapter->mppriv.rx_pktloss = precvpriv->rx_drop;
-	return ret;
 }
-- 
2.19.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
