Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C02F8AE06
	for <lists+driverdev-devel@lfdr.de>; Tue, 13 Aug 2019 06:47:04 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id DB6AF87DAF;
	Tue, 13 Aug 2019 04:47:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id gloHT4LZaMMt; Tue, 13 Aug 2019 04:47:01 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 4111587522;
	Tue, 13 Aug 2019 04:47:01 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 039801BF369
 for <devel@linuxdriverproject.org>; Tue, 13 Aug 2019 04:46:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id F2E0E86BCF
 for <devel@linuxdriverproject.org>; Tue, 13 Aug 2019 04:46:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id LztgtKmzb57J for <devel@linuxdriverproject.org>;
 Tue, 13 Aug 2019 04:46:57 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f196.google.com (mail-pg1-f196.google.com
 [209.85.215.196])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 21C3686C46
 for <devel@driverdev.osuosl.org>; Tue, 13 Aug 2019 04:46:57 +0000 (UTC)
Received: by mail-pg1-f196.google.com with SMTP id w10so50590803pgj.7
 for <devel@driverdev.osuosl.org>; Mon, 12 Aug 2019 21:46:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=CDQwbGVTEBP9Bnjosm2ekW6qXYHiP55ZHXi/wL2zosY=;
 b=boz8hYLbHG0VA4PbL7wHcg4jDw4m7HAeg2jP+hd/l+uywGnpv1Os9sdMdzz2MxrnMu
 nVV+n1xHW/tM3bYrzVqOoSS/reEbtyHz9sD7/v9b8ON+x5L2b/aTneYNHODoEoOGvtCR
 num0GdYp8jmGt8dNz9oYJggaAHmakCytokpxsIPgb0McdtDMk9DKwsJmimtc9esGQYQ6
 ll26eHXWdAfoxx8bXrTcRMCdyhFJTGk0GFX+MhQnVJAvRIcGcsxzZy0nEjm1A3i+yA/9
 eLb5UK3ToYzcP+ELPH9xPQksuXpjIskm7mu1uM9Xp1iYp2dmihVnVBD47cb9bY0FbmGK
 9jzA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=CDQwbGVTEBP9Bnjosm2ekW6qXYHiP55ZHXi/wL2zosY=;
 b=YZjv4oFbLX01hukULyH9OmWBX/ULjUz6J0RJBs/+6p3ygbtM/smU0XTKImph9xQJ81
 oxVQrYMgLiVSM//FZsjiUtuSUrY39oSPUrbu0iYA9w9I/rKRncP2AIbpNGGCI9oZ+fzC
 0hwFDD9MZHxkCikBCdORyE3EJBE4LPaZOXH8/cyA8TPZJ4pyikouEI+i6ln+x+WQ51X1
 +WpoEpqg0DmiLe3lX5zq/aWoamETs1cUzi7MimWf6qwQ2KBWNa2mqEVJwLKGEjBKPXki
 pKtH7gxKD0f1r2y9F1gN54DxNtSCSotRW3NLuyJmvQwuZr9dqPgCXsLVzVN2hwc9Poqm
 jbyg==
X-Gm-Message-State: APjAAAUhsoQOSZ01+AavEGkGye65dRAA3m5O3bkjQvjvXrcXqzLMd5/v
 WnZcmu0MPiv6ND6qpRaEh+U=
X-Google-Smtp-Source: APXvYqzw0ngWKc6LXtlEYuTrIGrzJC93KQ8Sp8577mWkPz8Dlu8EyrnMyoI2hs/APYtqItrij/c/Uw==
X-Received: by 2002:a63:c70d:: with SMTP id n13mr32679390pgg.171.1565671616661; 
 Mon, 12 Aug 2019 21:46:56 -0700 (PDT)
Received: from localhost.localdomain ([122.163.110.75])
 by smtp.gmail.com with ESMTPSA id t7sm246135pgp.68.2019.08.12.21.46.54
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Mon, 12 Aug 2019 21:46:56 -0700 (PDT)
From: Nishka Dasgupta <nishkadg.linux@gmail.com>
To: larry.finger@lwfinger.net, florian.c.schilhabel@googlemail.com,
 gregkh@linuxfoundation.org, devel@driverdev.osuosl.org
Subject: [PATCH RESEND 2/4] staging: rtl8712: r8712_append_mpdu_unit(): Change
 return type
Date: Tue, 13 Aug 2019 10:16:36 +0530
Message-Id: <20190813044638.16348-2-nishkadg.linux@gmail.com>
X-Mailer: git-send-email 2.19.1
In-Reply-To: <20190813044638.16348-1-nishkadg.linux@gmail.com>
References: <20190813044638.16348-1-nishkadg.linux@gmail.com>
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

Change return type of r8712_append_mpdu_unit from u8 to void and remove
its return statement as it always returns only _SUCCESS. Modify call
sites to simply call this function instead of checking its return value,
and execute all the statements in the if-block for when the function
returns _SUCCESS.

Signed-off-by: Nishka Dasgupta <nishkadg.linux@gmail.com>
---
 drivers/staging/rtl8712/rtl8712_xmit.c | 19 ++++++++-----------
 1 file changed, 8 insertions(+), 11 deletions(-)

diff --git a/drivers/staging/rtl8712/rtl8712_xmit.c b/drivers/staging/rtl8712/rtl8712_xmit.c
index 04e70048f0dd..6f1dbcf25859 100644
--- a/drivers/staging/rtl8712/rtl8712_xmit.c
+++ b/drivers/staging/rtl8712/rtl8712_xmit.c
@@ -278,8 +278,8 @@ void r8712_construct_txaggr_cmd_hdr(struct xmit_buf *pxmitbuf)
 	pcmdpriv->cmd_seq++;
 }
 
-u8 r8712_append_mpdu_unit(struct xmit_buf *pxmitbuf,
-			struct xmit_frame *pxmitframe)
+void r8712_append_mpdu_unit(struct xmit_buf *pxmitbuf,
+			    struct xmit_frame *pxmitframe)
 {
 	struct _adapter *padapter = pxmitframe->padapter;
 	struct tx_desc *ptx_desc = (struct tx_desc *)pxmitbuf->pbuf;
@@ -315,8 +315,6 @@ u8 r8712_append_mpdu_unit(struct xmit_buf *pxmitbuf,
 		((ptx_desc->txdw0 & 0x0000ffff) +
 			((TXDESC_SIZE + last_txcmdsz + padding_sz) &
 			 0x0000ffff)));
-
-	return _SUCCESS;
 }
 
 
@@ -332,8 +330,8 @@ u8 r8712_xmitframe_aggr_1st(struct xmit_buf *pxmitbuf,
 	/*RTL8712_DMA_H2CCMD */
 	r8712_construct_txaggr_cmd_desc(pxmitbuf);
 	r8712_construct_txaggr_cmd_hdr(pxmitbuf);
-	if (r8712_append_mpdu_unit(pxmitbuf, pxmitframe) == _SUCCESS)
-		pxmitbuf->aggr_nr = 1;
+	r8712_append_mpdu_unit(pxmitbuf, pxmitframe);
+	pxmitbuf->aggr_nr = 1;
 
 	return _SUCCESS;
 }
@@ -347,11 +345,10 @@ u16 r8712_xmitframe_aggr_next(struct xmit_buf *pxmitbuf,
 	/* buffer addr assoc */
 	pxmitframe->buf_addr = pxmitbuf->pbuf + TXDESC_SIZE +
 		(((struct tx_desc *)pxmitbuf->pbuf)->txdw0 & 0x0000ffff);
-	if (r8712_append_mpdu_unit(pxmitbuf, pxmitframe) == _SUCCESS) {
-		r8712_free_xmitframe_ex(&pxmitframe->padapter->xmitpriv,
-					pxmitframe);
-		pxmitbuf->aggr_nr++;
-	}
+	r8712_append_mpdu_unit(pxmitbuf, pxmitframe);
+	r8712_free_xmitframe_ex(&pxmitframe->padapter->xmitpriv,
+				pxmitframe);
+	pxmitbuf->aggr_nr++;
 
 	return TXDESC_SIZE +
 		(((struct tx_desc *)pxmitbuf->pbuf)->txdw0 & 0x0000ffff);
-- 
2.19.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
