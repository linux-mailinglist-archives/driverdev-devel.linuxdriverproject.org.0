Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id C2C4C8716B
	for <lists+driverdev-devel@lfdr.de>; Fri,  9 Aug 2019 07:24:35 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id A805F87667;
	Fri,  9 Aug 2019 05:24:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id RZGyHE2yBLJv; Fri,  9 Aug 2019 05:24:33 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id C0317867EC;
	Fri,  9 Aug 2019 05:24:31 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 4B8F71BF5DC
 for <devel@linuxdriverproject.org>; Fri,  9 Aug 2019 05:24:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 484A2867C6
 for <devel@linuxdriverproject.org>; Fri,  9 Aug 2019 05:24:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id cI9-OCDdPm5L for <devel@linuxdriverproject.org>;
 Fri,  9 Aug 2019 05:24:26 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f196.google.com (mail-pg1-f196.google.com
 [209.85.215.196])
 by whitealder.osuosl.org (Postfix) with ESMTPS id C0D38861AB
 for <devel@driverdev.osuosl.org>; Fri,  9 Aug 2019 05:24:26 +0000 (UTC)
Received: by mail-pg1-f196.google.com with SMTP id n4so3533244pgv.2
 for <devel@driverdev.osuosl.org>; Thu, 08 Aug 2019 22:24:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=97MI3xz6jE5jkOtIoRTVAluWkB+ViGpI9wV6B+W53VU=;
 b=ZwjWX6Gkpri1mQGqosOAndNdawLJ48PkZmURswa3FKmQlOiN5gmSu8ny3O1WTG6CVo
 zXq4p7AJXV5wGk6PJxCJ8fGCMbrmP6FqfXPs3cqSV7+qCACU605eukahm/uJJ4ue01uB
 VqhrLRfmv2YRrdn8el3hsQRRvXmf419YZIq1g8izZYhEL6fo1KJqtl9uX88Z9hQLbSle
 Ics/gClC3MzEy7C6FV0n+80LVqYro7YOhR2NLWkw9QJXrDz5s6JZEkYOz5QZPiIiJFXb
 O9ffIxGjTRqarQaAbO1HdvaETOkFdOiDPFoK37qtyjm+Iapb2rjGmRFUVF0h7lD9xtyO
 pq/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=97MI3xz6jE5jkOtIoRTVAluWkB+ViGpI9wV6B+W53VU=;
 b=ll8BYZUqhqltMmCwy3UXs2FuciYSZ1O7sw2bRgqefMzl3NIlVB+aIKMKTEYCuXnf24
 IgkD9tFMNuRH9sxYasd711AxXyLPyLP/AOs58RSpUm3VlA4xtoGPqXtMObqRbQDRqwvA
 EUiVaQAyH9Qjuu3w1UgrnBDvq+OIWWAGNvj9UkXNWkwbj59pK0JylwDTmkpDRtb2IXpk
 MpjGnBV/rRqYXX/3Hie1lyWCOPWAKHdsiZI0SXf2jBoqg7o6bjfMtqAU6lpDfuykCvBl
 Z6yizTDMJfgnVrgtH9mR/3dcJ3Eg/bfWEQ5hZolHpp5tksWOgILQy33CNke/iS5C8pHv
 u63Q==
X-Gm-Message-State: APjAAAXujpnjApu+b6Xl+fD3YKkTn4Thr7pGINncwcK6SJ+K+/vT9D4a
 QanjrT0oM36cJ2zQsgYUhrQ=
X-Google-Smtp-Source: APXvYqwK9WVBPcX04lSMvTX1UaJFpDxELWBO9NIY8ASoZdmWoM28TMgtS0XVuMkjKrqfWlpAstg00w==
X-Received: by 2002:a63:1f1f:: with SMTP id f31mr15666683pgf.353.1565328266466; 
 Thu, 08 Aug 2019 22:24:26 -0700 (PDT)
Received: from localhost.localdomain ([122.163.44.6])
 by smtp.gmail.com with ESMTPSA id h13sm65710491pfn.13.2019.08.08.22.24.24
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Thu, 08 Aug 2019 22:24:26 -0700 (PDT)
From: Nishka Dasgupta <nishkadg.linux@gmail.com>
To: larry.finger@lwfinger.net, florian.c.schilhabel@googlemail.com,
 gregkh@linuxfoundation.org, devel@driverdev.osuosl.org
Subject: [PATCH 08/11] staging: rtl8712: r8712_construct_txaggr_cmd_hdr():
 Change return type
Date: Fri,  9 Aug 2019 10:53:50 +0530
Message-Id: <20190809052353.5308-8-nishkadg.linux@gmail.com>
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

Change return type of r8712_construct_txaggr_cmd_hdr from u8 to void as
it always returns _SUCCESS and its return value is never used.

Signed-off-by: Nishka Dasgupta <nishkadg.linux@gmail.com>
---
 drivers/staging/rtl8712/rtl8712_xmit.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/staging/rtl8712/rtl8712_xmit.c b/drivers/staging/rtl8712/rtl8712_xmit.c
index 87278438bc48..04e70048f0dd 100644
--- a/drivers/staging/rtl8712/rtl8712_xmit.c
+++ b/drivers/staging/rtl8712/rtl8712_xmit.c
@@ -262,7 +262,7 @@ void r8712_construct_txaggr_cmd_desc(struct xmit_buf *pxmitbuf)
 	ptx_desc->txdw1 |= cpu_to_le32((0x13 << QSEL_SHT) & 0x00001f00);
 }
 
-u8 r8712_construct_txaggr_cmd_hdr(struct xmit_buf *pxmitbuf)
+void r8712_construct_txaggr_cmd_hdr(struct xmit_buf *pxmitbuf)
 {
 	struct xmit_frame *pxmitframe = (struct xmit_frame *)
 		pxmitbuf->priv_data;
@@ -276,8 +276,6 @@ u8 r8712_construct_txaggr_cmd_hdr(struct xmit_buf *pxmitbuf)
 	pcmd_hdr->cmd_dw0 = cpu_to_le32((GEN_CMD_CODE(_AMSDU_TO_AMPDU) << 16) |
 					(pcmdpriv->cmd_seq << 24));
 	pcmdpriv->cmd_seq++;
-
-	return _SUCCESS;
 }
 
 u8 r8712_append_mpdu_unit(struct xmit_buf *pxmitbuf,
-- 
2.19.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
