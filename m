Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id C56B2270C08
	for <lists+driverdev-devel@lfdr.de>; Sat, 19 Sep 2020 10:54:26 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 6A0A087836;
	Sat, 19 Sep 2020 08:54:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id JlsTzWaJvp1y; Sat, 19 Sep 2020 08:54:24 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 49EF08786F;
	Sat, 19 Sep 2020 08:54:23 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 96BCC1BF576
 for <devel@linuxdriverproject.org>; Sat, 19 Sep 2020 08:54:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 8B7C38781E
 for <devel@linuxdriverproject.org>; Sat, 19 Sep 2020 08:54:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id P4HXlDAXRBcL for <devel@linuxdriverproject.org>;
 Sat, 19 Sep 2020 08:54:20 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-qt1-f194.google.com (mail-qt1-f194.google.com
 [209.85.160.194])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 4FE25877F4
 for <devel@driverdev.osuosl.org>; Sat, 19 Sep 2020 08:54:20 +0000 (UTC)
Received: by mail-qt1-f194.google.com with SMTP id b2so7438872qtp.8
 for <devel@driverdev.osuosl.org>; Sat, 19 Sep 2020 01:54:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=8RkoIvJj/P1T7mgVICWKb37QwYd4KVIZEz69XNANi5M=;
 b=cigkbj0lcJ59ciYcNd6AWopkcIZ3+DmIZGt+u+7OEvMbOqH6lNwtjfu+z+NWAyWHul
 p4Xaj6KY8kEVxTgo0WKLe6JELJPdUfB6HVeo7CJG1a0WFgmoDMxiK92o9Bu6DIqDKMVh
 CUqCYCT1EvEzqT8yoCwCsiCVkoZ5f4vgN/sgciLO7KsdqN3KrvhBGXwCEZlszzgIufHI
 Ly8VO7HD+zHd1lXOg/fImNfBUWdRPz9quwBjSSbbnUb9cTRAAkmwIwvg3eo1j8fekEIK
 ryfypECF4DmVZDSzZZ1RqNy2TBNhPWmxmhaRu18BcN2gvEDXxw27Dw4pQ942kTYMkSQq
 F5tQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=8RkoIvJj/P1T7mgVICWKb37QwYd4KVIZEz69XNANi5M=;
 b=VgExV71ti58cRBEx8QFahnQWRInhNatcxAShw/5GYxvNvIEoxJiSya4sRZkf52p6G+
 FWoKn484VGrUVsObWOXJnE0y0ylidWDAvhGbFm+3GJrqbihWIc6i/6JY905g66UJ4hx5
 R7JM/Zt/2gtQVL5KggCY1NGhbC70gN5Q/zpMZb1ySoaapics70UiFVY53sOJviyEmwf0
 q3uiw46NqTptT1ZASd4/wHH/elYj7P0tDTnwDY/qUkRZFTEoA9fBUBF3mQ9SsAGnPT95
 yd2LsIpwJTLIRfSgV24aIt3aw+q9odU90mXW7r9cSJxwcXWiIkPzsLNJ5S+9FPUwYoXe
 44Fg==
X-Gm-Message-State: AOAM533wrgZ9eLFJPy1eiKg7okinxFE2fjEc90znRfR56wDdPHfaH6z+
 ul2RFbFxWF/z2vOSDiCsoJE=
X-Google-Smtp-Source: ABdhPJzg4Kdphi97Ym9wZXhTnKCYneZmO6m2ez0Gd8A0LMSFFV71QRPYbSENnKqXxuxJBlBr+PFi0g==
X-Received: by 2002:ac8:5b47:: with SMTP id n7mr24137816qtw.7.1600505659317;
 Sat, 19 Sep 2020 01:54:19 -0700 (PDT)
Received: from localhost.localdomain
 (dslb-002-204-143-169.002.204.pools.vodafone-ip.de. [2.204.143.169])
 by smtp.gmail.com with ESMTPSA id v90sm3924836qtd.66.2020.09.19.01.54.17
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 19 Sep 2020 01:54:18 -0700 (PDT)
From: Michael Straube <straube.linux@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH 2/2] staging: rtl8712: use shorter array initializations
Date: Sat, 19 Sep 2020 10:50:32 +0200
Message-Id: <20200919085032.32453-2-straube.linux@gmail.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20200919085032.32453-1-straube.linux@gmail.com>
References: <20200919085032.32453-1-straube.linux@gmail.com>
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
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
 lorian.c.schilhabel@googlemail.com, Larry.Finger@lwfinger.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Use empty brace syntax to initialize zero valued arrays.
Simplifies and shortens the code a little bit.

Signed-off-by: Michael Straube <straube.linux@gmail.com>
---
 drivers/staging/rtl8712/rtl871x_xmit.c | 7 +++----
 1 file changed, 3 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/rtl8712/rtl871x_xmit.c b/drivers/staging/rtl8712/rtl871x_xmit.c
index 7093903b3af1..fd99782a400a 100644
--- a/drivers/staging/rtl8712/rtl871x_xmit.c
+++ b/drivers/staging/rtl8712/rtl871x_xmit.c
@@ -352,7 +352,7 @@ static int xmitframe_addmic(struct _adapter *padapter,
 	struct	pkt_attrib  *pattrib = &pxmitframe->attrib;
 	struct	security_priv *psecpriv = &padapter->securitypriv;
 	struct	xmit_priv *pxmitpriv = &padapter->xmitpriv;
-	u8 priority[4] = {0x0, 0x0, 0x0, 0x0};
+	u8 priority[4] = {};
 	bool bmcst = is_multicast_ether_addr(pattrib->ra);
 
 	if (pattrib->psta)
@@ -363,9 +363,8 @@ static int xmitframe_addmic(struct _adapter *padapter,
 	if (pattrib->encrypt == _TKIP_) {
 		/*encode mic code*/
 		if (stainfo) {
-			u8 null_key[16] = {0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0,
-					   0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0,
-					   0x0, 0x0};
+			u8 null_key[16] = {};
+
 			pframe = pxmitframe->buf_addr + TXDESC_OFFSET;
 			if (bmcst) {
 				if (!memcmp(psecpriv->XGrptxmickey
-- 
2.28.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
