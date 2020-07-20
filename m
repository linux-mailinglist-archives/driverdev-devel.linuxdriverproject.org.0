Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 76E31225B0B
	for <lists+driverdev-devel@lfdr.de>; Mon, 20 Jul 2020 11:14:58 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 717A387E0B;
	Mon, 20 Jul 2020 09:14:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id CJWzLv8hq31s; Mon, 20 Jul 2020 09:14:56 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id E873887D65;
	Mon, 20 Jul 2020 09:14:55 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 186451BF2FC
 for <devel@linuxdriverproject.org>; Mon, 20 Jul 2020 09:14:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 136BA86969
 for <devel@linuxdriverproject.org>; Mon, 20 Jul 2020 09:14:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 1rnYmtYKvO7d for <devel@linuxdriverproject.org>;
 Mon, 20 Jul 2020 09:14:52 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f193.google.com (mail-pl1-f193.google.com
 [209.85.214.193])
 by whitealder.osuosl.org (Postfix) with ESMTPS id A11EA8653D
 for <devel@driverdev.osuosl.org>; Mon, 20 Jul 2020 09:14:52 +0000 (UTC)
Received: by mail-pl1-f193.google.com with SMTP id 72so8413938ple.0
 for <devel@driverdev.osuosl.org>; Mon, 20 Jul 2020 02:14:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=3MJRQvkP4/KEQ3YX92tLGGCX4xlP9dMdupK8mDNvHRM=;
 b=lrwG+gcqco5EXJEp5+BBTvUvMntRPXvMd7UxLgzRohyP6Ef4S80wXxLB4VfuCt69II
 +yuHAA0b/3RLQ7yXlCVXGFuCVqN5bO/b+FVoOJz7h/P4AgrxGMIMq7SpyZ1VvV2VP90X
 RiO0Vxks+c9Nn6ZnXBjQhbTPL3oKOQgHXKXGavVkyQDdDK86PEnkDhwcRFB/FBV8PTLx
 uoDEUWZoFChv2hYOzc21xkGIjFFUurscKCGq+A6MzYP7pYdkaXzo6n4BY3+XYgGPtnUz
 hfnnpxjgUz8jHXHsiz01zvh8gPupRp+9wBAcvBM2qFsyxPraGH3DyAnESFIvno/lFJ3+
 bi8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=3MJRQvkP4/KEQ3YX92tLGGCX4xlP9dMdupK8mDNvHRM=;
 b=iADg1rXww+PUHqEZ68Hs2MzhcE0P4ucsjrPYhgKJaS1kbtloWcBdTuqzHeDEFu1260
 by95rxUyq7IpZ7vUP29LQCSojNi0OnVQSh3RRoyEOQlFkeilNQ9asLZ6ccvgEV07m7/b
 xGvEXSUAqLyh6sslD72hEY1vh24W5Lxz7hqS8jAXgX11LHSDlRBJYsIs8WbtF2LCq8Fe
 mVOlm1MeUUDtkeStHV8TPivso/qbLBk77pcnTTvH0Atd5BskFs8qNe8i+lFTEe/qpW2Y
 q+LjfyihPHBdebzkW6Z6fXSH5oeLw6nSx1xI6IqXcap8yrcetMOwqhEqNvv90N2Qx9at
 Rg3w==
X-Gm-Message-State: AOAM531nUT+U6ILRtn9elTku3zBp6vI2SXCfN+iFZi0mIYYC81qlAlCY
 zAeLgti7mx9kFJX2g4xG8dlSj29+B/EyKw==
X-Google-Smtp-Source: ABdhPJwcDdQiYZrT6Xt27ssEBjfGgjZKMTlTJiwCwuzXssXvqjudMzfeGID+NidWCek0wok0LfxCEg==
X-Received: by 2002:a17:90a:e50c:: with SMTP id
 t12mr22441080pjy.209.1595236492232; 
 Mon, 20 Jul 2020 02:14:52 -0700 (PDT)
Received: from DV.bbrouter ([117.242.250.233])
 by smtp.gmail.com with ESMTPSA id w9sm16276548pfq.178.2020.07.20.02.14.49
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 20 Jul 2020 02:14:51 -0700 (PDT)
From: Darshan D V <darshandv10@gmail.com>
To: gregkh@linuxfoundation.org, yuehaibing@huawei.com, ardb@kernel.org,
 contact@christina-quast.de
Subject: [PATCH 2/2] staging: rtl8192e: add proper code indent
Date: Mon, 20 Jul 2020 14:44:42 +0530
Message-Id: <20200720091442.19532-2-darshandv10@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200720091442.19532-1-darshandv10@gmail.com>
References: <20200720091442.19532-1-darshandv10@gmail.com>
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
Cc: devel@driverdev.osuosl.org, darshandv10@gmail.com,
 linux-kernel@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

As the code indent for a conditional statement is
not according to the preferred coding style for
the linux kernel, add code indent as necessary
after a conditional statement.

Signed-off-by: Darshan D V <darshandv10@gmail.com>
---
 drivers/staging/rtl8192e/rtllib_crypt_ccmp.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8192e/rtllib_crypt_ccmp.c b/drivers/staging/rtl8192e/rtllib_crypt_ccmp.c
index b2af802b9451..b60e2a109ce4 100644
--- a/drivers/staging/rtl8192e/rtllib_crypt_ccmp.c
+++ b/drivers/staging/rtl8192e/rtllib_crypt_ccmp.c
@@ -337,7 +337,7 @@ static int rtllib_ccmp_set_key(void *key, int len, u8 *seq, void *priv)
 		}
 		if (crypto_aead_setauthsize(data->tfm, CCMP_MIC_LEN) ||
 			crypto_aead_setkey(data->tfm, data->key, CCMP_TK_LEN))
-				return -1;
+			return -1;
 	} else if (len == 0) {
 		data->key_set = 0;
 	} else {
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
