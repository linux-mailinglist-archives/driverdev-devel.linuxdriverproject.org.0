Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id B36C08716A
	for <lists+driverdev-devel@lfdr.de>; Fri,  9 Aug 2019 07:24:33 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 361232269B;
	Fri,  9 Aug 2019 05:24:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id YLVrddrzUF92; Fri,  9 Aug 2019 05:24:30 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id B684021579;
	Fri,  9 Aug 2019 05:24:27 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 054C11BF5DC
 for <devel@linuxdriverproject.org>; Fri,  9 Aug 2019 05:24:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 029EA204C7
 for <devel@linuxdriverproject.org>; Fri,  9 Aug 2019 05:24:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id PRJbBuYHDmnq for <devel@linuxdriverproject.org>;
 Fri,  9 Aug 2019 05:24:20 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f196.google.com (mail-pg1-f196.google.com
 [209.85.215.196])
 by silver.osuosl.org (Postfix) with ESMTPS id 3797421579
 for <devel@driverdev.osuosl.org>; Fri,  9 Aug 2019 05:24:17 +0000 (UTC)
Received: by mail-pg1-f196.google.com with SMTP id z14so8032475pga.5
 for <devel@driverdev.osuosl.org>; Thu, 08 Aug 2019 22:24:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=rXF+TvRN09kMd4TMtmxAcJKDRvtwOgvYkxH51fOIoRI=;
 b=XbItPpQH7oSIWSKKkDcH17lM/6R3sz5F1iXyaZthUkTmQJoAvXCZ/OEepF4OIQXWRq
 2CvY7s3RU92XuZkZHiONQe7kMH5ZssgBXJIBBS3Q/bI/tafpQzJBdWHRaVgw5N6KG4G0
 oZJDiEu51s3nObZn5ok6GaMiumSxlFToCCf1aI+sqe/tp5oRYhIBULary/JR5qpYaAlo
 ZV/Qip/NHF6W3UgZuI4zyJFmaVdKfrJZ6vzlG74DsDZnxt6ocMLzZaN/9haq0+RwLmXE
 cCQoohTBEIeX8mZpd2HWrGzyG2B4si8ICXOwPnK9QFxYdfH2BJVYu9ON+X+QaQzFA59L
 AfoA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=rXF+TvRN09kMd4TMtmxAcJKDRvtwOgvYkxH51fOIoRI=;
 b=DrdqbQFUIQXB1hH84IcjsOSmwFsj59SbjjkMdI+ZxEM+PtUzMEm7d/fMdOSGRPQKWh
 J1VO3sqgazl7974k9wylsK5t0i0KPP85DhNhu1Z0p/ANrorMPO4b/uhipma2CRucrFLN
 7s6AD24fVPGXAf6LxB6u4vONO2bB28t3i7zNCQ+xvVM8nDOFRXyNRlosaezeaUUzwjLU
 67v6JriST46CdMFUgMQZolpvNtiPYbJocbJvpwUD5Y+6oYvo6T8MME9UB9CGUak18JOE
 Lod2V3x5yLzaZofybZojAsm/DgbUOikUxp2Xvm55URJm5XyW0PJDmOmqCOcELzu9WYVN
 3CxQ==
X-Gm-Message-State: APjAAAXN81E7JLk844Emmvf4sU4n5DwS7tbNagBLZv/UdD+733QUTL+X
 0TFGIh17fhJh4t5Z5pgWhFo=
X-Google-Smtp-Source: APXvYqw1L7+zEEO0X+5flUcVssIdXKCAunFI7+kbmQ/UfKeIDfP1ZfcbUPrZ3dU3wLxLPkEmtyHqgA==
X-Received: by 2002:a63:89c7:: with SMTP id
 v190mr15290559pgd.299.1565328256797; 
 Thu, 08 Aug 2019 22:24:16 -0700 (PDT)
Received: from localhost.localdomain ([122.163.44.6])
 by smtp.gmail.com with ESMTPSA id h13sm65710491pfn.13.2019.08.08.22.24.14
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Thu, 08 Aug 2019 22:24:16 -0700 (PDT)
From: Nishka Dasgupta <nishkadg.linux@gmail.com>
To: larry.finger@lwfinger.net, florian.c.schilhabel@googlemail.com,
 gregkh@linuxfoundation.org, devel@driverdev.osuosl.org
Subject: [PATCH 04/11] staging: rtl8712: make_wlanhdr(): Change return values
 and type
Date: Fri,  9 Aug 2019 10:53:46 +0530
Message-Id: <20190809052353.5308-4-nishkadg.linux@gmail.com>
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

Change return values of make_wlanhdr from _SUCCESS/_FAIL to 0/-EINVAL.
Modify call site to check for non-zero return values instead of _FAIL.
Change return type from sint to int.

Signed-off-by: Nishka Dasgupta <nishkadg.linux@gmail.com>
---
 drivers/staging/rtl8712/rtl871x_xmit.c | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/staging/rtl8712/rtl871x_xmit.c b/drivers/staging/rtl8712/rtl871x_xmit.c
index 1cab320c1b51..2ed3142cae14 100644
--- a/drivers/staging/rtl8712/rtl871x_xmit.c
+++ b/drivers/staging/rtl8712/rtl871x_xmit.c
@@ -469,8 +469,8 @@ static sint xmitframe_swencrypt(struct _adapter *padapter,
 	return _SUCCESS;
 }
 
-static sint make_wlanhdr(struct _adapter *padapter, u8 *hdr,
-			 struct pkt_attrib *pattrib)
+static int make_wlanhdr(struct _adapter *padapter, u8 *hdr,
+			struct pkt_attrib *pattrib)
 {
 	u16 *qc;
 
@@ -509,7 +509,7 @@ static sint make_wlanhdr(struct _adapter *padapter, u8 *hdr,
 			memcpy(pwlanhdr->addr3, get_bssid(pmlmepriv),
 				ETH_ALEN);
 		} else {
-			return _FAIL;
+			return -EINVAL;
 		}
 
 		if (pattrib->encrypt)
@@ -547,7 +547,7 @@ static sint make_wlanhdr(struct _adapter *padapter, u8 *hdr,
 			}
 		}
 	}
-	return _SUCCESS;
+	return 0;
 }
 
 static sint r8712_put_snap(u8 *data, u16 h_proto)
@@ -605,7 +605,7 @@ sint r8712_xmitframe_coalesce(struct _adapter *padapter, _pkt *pkt,
 	pbuf_start = pxmitframe->buf_addr;
 	ptxdesc = pbuf_start;
 	mem_start = pbuf_start + TXDESC_OFFSET;
-	if (make_wlanhdr(padapter, mem_start, pattrib) == _FAIL)
+	if (make_wlanhdr(padapter, mem_start, pattrib))
 		return _FAIL;
 	_r8712_open_pktfile(pkt, &pktfile);
 	_r8712_pktfile_read(&pktfile, NULL, (uint) pattrib->pkt_hdrlen);
-- 
2.19.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
