Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 872B17ECCF
	for <lists+driverdev-devel@lfdr.de>; Fri,  2 Aug 2019 08:42:46 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 101ED868DC;
	Fri,  2 Aug 2019 06:42:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id pUjt4e5qEsqV; Fri,  2 Aug 2019 06:42:44 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 906B8868D3;
	Fri,  2 Aug 2019 06:42:43 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 6221D1BF27A
 for <devel@linuxdriverproject.org>; Fri,  2 Aug 2019 06:42:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 5E4A988442
 for <devel@linuxdriverproject.org>; Fri,  2 Aug 2019 06:42:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id CaeZw5+6iMNR for <devel@linuxdriverproject.org>;
 Fri,  2 Aug 2019 06:42:41 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f193.google.com (mail-pg1-f193.google.com
 [209.85.215.193])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 0044F88427
 for <devel@driverdev.osuosl.org>; Fri,  2 Aug 2019 06:42:40 +0000 (UTC)
Received: by mail-pg1-f193.google.com with SMTP id n190so435296pgn.0
 for <devel@driverdev.osuosl.org>; Thu, 01 Aug 2019 23:42:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=K0P81IZqLtRIm16Ci/pEoIUQrxpbWrgIZclwYjfAszg=;
 b=N6YcKuKgGqlOWmsF4XhYjDZxM6FJofhAdRt/NxZT2hWYDd1Yj/EF/JIeotdLA0V43U
 mgrsVqRH1Z0JcNKRP4u/Yo5rEtsTgxOZrgdaukRZ3pCg5Z5WqABcmZqhIbnUuVvwg6kx
 IQk+U/uieZG70D955C+nD/1wv60pd8wQfy2fZEA/nXy5jdzFEXi+yObdrJAiCZlnq3Ub
 omxIXu0TSnRkqS7q4yCo9PJzMQ82A0eDzUQOGH6oxWzM8UbMsYwAd8U7O0SwUMDt4GJ0
 Yfy8pNH5i1w45BMmlpFaz/kUS+IgAg5YqmdSh0ZUGy0aXUton+VdVBtI4B6/A4Pk4ODR
 rYzg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=K0P81IZqLtRIm16Ci/pEoIUQrxpbWrgIZclwYjfAszg=;
 b=XOAQZ77ITcErZC7ZZkWdOJ5BOibUYB4dTK5SjybXP3DMOX9dZnit8lwRlFFYsC+Q9v
 0sytCBp3kqjEAYB+V+kBHJZfEnEM6fZX/lv7HjzCUK1gch2kz/AKczN2bW+Y7J2QTzuD
 qTVXpnNkCr8B9QC/MU/tx+p3YCLajsw6zBB7UH1eDPrja6zpAv8A7TLoG+FRQBJ1Q6wU
 loer9K4vYDU4QnHD55ZgrMr7AzMd915Uf4xL9P7eboKwKBinprl6XQRQZTnWe8kLkmyP
 cSJ+GG2hCdrELjIrgrwCmBST+YHNvnlHrt6bmWkWj40CtVtLevPbcX+tyQKCMxgZSfm5
 YBqw==
X-Gm-Message-State: APjAAAX1aDxKTTMymKW4C8xl6/sEOcYI0Vj6/Q6+ClYPk4FHqOq8Vqbu
 lrxEJs5+xAlHDaYdOYGkTUjMscam1FY=
X-Google-Smtp-Source: APXvYqyHZDY6v8x7g1YgfCjBRXxBTKbQ9n0FYm08Rm9Y+4JNKQCTU2J7HHfuyEvk93cBvIlGP+6+yw==
X-Received: by 2002:a17:90a:a404:: with SMTP id
 y4mr2907788pjp.58.1564728160691; 
 Thu, 01 Aug 2019 23:42:40 -0700 (PDT)
Received: from localhost.localdomain ([122.163.105.8])
 by smtp.gmail.com with ESMTPSA id v138sm84934268pfc.15.2019.08.01.23.42.38
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Thu, 01 Aug 2019 23:42:40 -0700 (PDT)
From: Nishka Dasgupta <nishkadg.linux@gmail.com>
To: larry.finger@lwfinger.net, florian.c.schilhabel@googlemail.com,
 gregkh@linuxfoundation.org, devel@driverdev.osuosl.org
Subject: [PATCH 7/9] staging: rtl8712: aes_cipher(): Change return type
Date: Fri,  2 Aug 2019 12:12:10 +0530
Message-Id: <20190802064212.30476-7-nishkadg.linux@gmail.com>
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

Change return type of aes_cipher from sint to void as it always returns
_SUCCESS and its return value is never used.

Signed-off-by: Nishka Dasgupta <nishkadg.linux@gmail.com>
---
 drivers/staging/rtl8712/rtl871x_security.c | 5 ++---
 1 file changed, 2 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/rtl8712/rtl871x_security.c b/drivers/staging/rtl8712/rtl871x_security.c
index 66586a9d9f73..8f3781c5dd25 100644
--- a/drivers/staging/rtl8712/rtl871x_security.c
+++ b/drivers/staging/rtl8712/rtl871x_security.c
@@ -1011,8 +1011,8 @@ static void bitwise_xor(u8 *ina, u8 *inb, u8 *out)
 		out[i] = ina[i] ^ inb[i];
 }
 
-static sint aes_cipher(u8 *key, uint	hdrlen,
-			u8 *pframe, uint plen)
+static void aes_cipher(u8 *key, uint hdrlen,
+		       u8 *pframe, uint plen)
 {
 	uint qc_exists, a4_exists, i, j, payload_remainder;
 	uint num_blocks, payload_index;
@@ -1132,7 +1132,6 @@ static sint aes_cipher(u8 *key, uint	hdrlen,
 	bitwise_xor(aes_out, padded_buffer, chain_buffer);
 	for (j = 0; j < 8; j++)
 		pframe[payload_index++] = chain_buffer[j];
-	return _SUCCESS;
 }
 
 u32 r8712_aes_encrypt(struct _adapter *padapter, u8 *pxmitframe)
-- 
2.19.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
