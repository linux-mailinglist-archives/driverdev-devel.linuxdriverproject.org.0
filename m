Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id AE9F387169
	for <lists+driverdev-devel@lfdr.de>; Fri,  9 Aug 2019 07:24:29 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 297F88688A;
	Fri,  9 Aug 2019 05:24:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 9wgjGnNpdA3L; Fri,  9 Aug 2019 05:24:27 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id CC34C8687B;
	Fri,  9 Aug 2019 05:24:26 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 8C0271BF5DC
 for <devel@linuxdriverproject.org>; Fri,  9 Aug 2019 05:24:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 8702281F72
 for <devel@linuxdriverproject.org>; Fri,  9 Aug 2019 05:24:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id GSBYRfSoqXJl for <devel@linuxdriverproject.org>;
 Fri,  9 Aug 2019 05:24:22 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f182.google.com (mail-pf1-f182.google.com
 [209.85.210.182])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 0908781ED9
 for <devel@driverdev.osuosl.org>; Fri,  9 Aug 2019 05:24:22 +0000 (UTC)
Received: by mail-pf1-f182.google.com with SMTP id 19so45382445pfa.4
 for <devel@driverdev.osuosl.org>; Thu, 08 Aug 2019 22:24:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=iqnF+QwfSEHb71TqL7O0GmvM8bs6cM/HpTijCFvBnDg=;
 b=um21u/N1wpLyVDf8CiLaNgjwFPaiRKC+H1VAvICfzY+jOTlUc2Zs5WBLPmgTPb+qv7
 yQJpzK2cH3vkCbrpGAGo5EUcyr2/+tGoxswfHiOCU1GkExFUhgNYqT5o+K76HsViyClE
 tgZrQ3sEwA7uRIABzbGKooTkDjBzIAEtna1zm//Vhtkpix1UfJQ1JDvwCpJiyWJEhFCI
 8A1s5iJjPOxc2ww8HbdnwCS6FrtUwS6/jyktEI86SThwQzkspxj5fm/Gpuq+tlqpTqcb
 OUf3jMqjrJD5DWymnSFQXTe7HyhPEqV2N36fZiwHt+G8FHz55K1dTnJ6Rj33T24viOT4
 Bwaw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=iqnF+QwfSEHb71TqL7O0GmvM8bs6cM/HpTijCFvBnDg=;
 b=Rv7LiNHHU58XgEEdsqDwZGjnhzQ520jjmefqtcYjdfgxTLbxPDFKffj9IJUuCPQu4b
 eTMmx09OPVrvGf6Z6gQR6IF/1ghkND0IBjkgFoFLX5+AMTdVsVtyJ3OKKIUGy/D86fEN
 rhO5oc+Or4iulAUq4F2prK6DJkxZX869cWlv3ne5U6Hx7ZwMUDrsHLhDk/c2MR+HS+e8
 PKpRviRLh7Lpa1CkuL7TjTt+yzs6limRhMGqGDjXHt85PmFS8TXVGStrdU4xBUP55jU8
 hhE56A8kkPPAKqD0DNR8fec+8eHAKjCQu7zdMX6YyyO05Z3MQKpwfQSc3XB+lBKnVB9i
 I8TA==
X-Gm-Message-State: APjAAAVulQ8lV/sILjyKwRb0sTDrqI0XIb6PBUY7aFSxBsbwshVYG17K
 Y1GYiJ7qhjSKdlxsu0ukRlM=
X-Google-Smtp-Source: APXvYqys/6+3p0jD5AsncKjQcMNuqIQJE+ONIUB7EFyk0Y74R+uq9EG4TehfHhlwoGiGmE6HoKmpjg==
X-Received: by 2002:aa7:8b51:: with SMTP id i17mr19717023pfd.33.1565328261682; 
 Thu, 08 Aug 2019 22:24:21 -0700 (PDT)
Received: from localhost.localdomain ([122.163.44.6])
 by smtp.gmail.com with ESMTPSA id h13sm65710491pfn.13.2019.08.08.22.24.19
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Thu, 08 Aug 2019 22:24:21 -0700 (PDT)
From: Nishka Dasgupta <nishkadg.linux@gmail.com>
To: larry.finger@lwfinger.net, florian.c.schilhabel@googlemail.com,
 gregkh@linuxfoundation.org, devel@driverdev.osuosl.org
Subject: [PATCH 06/11] staging: rtl8712: r8712_xmit_direct(): Change return
 type
Date: Fri,  9 Aug 2019 10:53:48 +0530
Message-Id: <20190809052353.5308-6-nishkadg.linux@gmail.com>
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

Change return type of r8712_xmit_direct from int to void as its return
value is never used. Remove return statement accordingly.

Signed-off-by: Nishka Dasgupta <nishkadg.linux@gmail.com>
---
 drivers/staging/rtl8712/rtl8712_xmit.c | 3 +--
 drivers/staging/rtl8712/rtl871x_xmit.h | 2 +-
 2 files changed, 2 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/rtl8712/rtl8712_xmit.c b/drivers/staging/rtl8712/rtl8712_xmit.c
index 3334b03c2548..d6e8e3fc6527 100644
--- a/drivers/staging/rtl8712/rtl8712_xmit.c
+++ b/drivers/staging/rtl8712/rtl8712_xmit.c
@@ -737,7 +737,7 @@ static void dump_xframe(struct _adapter *padapter,
 	}
 }
 
-int r8712_xmit_direct(struct _adapter *padapter, struct xmit_frame *pxmitframe)
+void r8712_xmit_direct(struct _adapter *padapter, struct xmit_frame *pxmitframe)
 {
 	int res;
 
@@ -745,7 +745,6 @@ int r8712_xmit_direct(struct _adapter *padapter, struct xmit_frame *pxmitframe)
 	pxmitframe->pkt = NULL;
 	if (res == _SUCCESS)
 		dump_xframe(padapter, pxmitframe);
-	return res;
 }
 
 int r8712_xmit_enqueue(struct _adapter *padapter, struct xmit_frame *pxmitframe)
diff --git a/drivers/staging/rtl8712/rtl871x_xmit.h b/drivers/staging/rtl8712/rtl871x_xmit.h
index d4658c1c4bd4..b14da38bf652 100644
--- a/drivers/staging/rtl8712/rtl871x_xmit.h
+++ b/drivers/staging/rtl8712/rtl871x_xmit.h
@@ -276,7 +276,7 @@ void r8712_free_xmitframe_ex(struct xmit_priv *pxmitpriv,
 int r8712_pre_xmit(struct _adapter *padapter, struct xmit_frame *pxmitframe);
 int r8712_xmit_enqueue(struct _adapter *padapter,
 		       struct xmit_frame *pxmitframe);
-int r8712_xmit_direct(struct _adapter *padapter, struct xmit_frame *pxmitframe);
+void r8712_xmit_direct(struct _adapter *padapter, struct xmit_frame *pxmitframe);
 void r8712_xmit_bh(void *priv);
 
 void xmitframe_xmitbuf_attach(struct xmit_frame *pxmitframe,
-- 
2.19.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
