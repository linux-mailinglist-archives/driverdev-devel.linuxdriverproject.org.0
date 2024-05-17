Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id CFBF78C852C
	for <lists+driverdev-devel@lfdr.de>; Fri, 17 May 2024 13:02:03 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id EDC2D82271;
	Fri, 17 May 2024 11:02:01 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id EyaquMq-hoXB; Fri, 17 May 2024 11:01:58 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=driverdev-devel-bounces@linuxdriverproject.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 002C0821B8
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 002C0821B8;
	Fri, 17 May 2024 11:01:57 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 5EAEA1BF841
 for <devel@linuxdriverproject.org>; Fri, 17 May 2024 11:01:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 4B4EA606EA
 for <devel@linuxdriverproject.org>; Fri, 17 May 2024 11:01:56 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id j142hqhCLxWe for <devel@linuxdriverproject.org>;
 Fri, 17 May 2024 11:01:55 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::22f; helo=mail-lj1-x22f.google.com;
 envelope-from=moharaka@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org AAD84606A9
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org AAD84606A9
Received: from mail-lj1-x22f.google.com (mail-lj1-x22f.google.com
 [IPv6:2a00:1450:4864:20::22f])
 by smtp3.osuosl.org (Postfix) with ESMTPS id AAD84606A9
 for <devel@driverdev.osuosl.org>; Fri, 17 May 2024 11:01:54 +0000 (UTC)
Received: by mail-lj1-x22f.google.com with SMTP id
 38308e7fff4ca-2db17e8767cso6740681fa.3
 for <devel@driverdev.osuosl.org>; Fri, 17 May 2024 04:01:54 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1715943712; x=1716548512;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=soH3v7AjKgEzN9pDh9CRbKA35VUs2CBjMotD1Xr5BgQ=;
 b=W9jcVWypLUjVFAHAOchkP8+LlilRQlPGHEkZC1VojjofqGcEoLtJYOF43gWrQ9/pDW
 O56nIGUTMRX7NYqDK1vt7oi3sm2BNP2WjSNeyOTAN2hCQWg6Bq9U96xRGgac9wncSqaW
 1bGnm0nlT8jnhj379rNMKGmi+P4jdMYdbUu+QdQWShUreTtNkGKWW4nCfqmSrmrmhGsB
 Y9QP/8eVU4sFFxsJ9x1YpVhqhm5uFEeACd2DUOW4ubBRjUgVu/zrqNJ0mQBaHS03WCB/
 itlhg0iXevcsnfFSKAb5QDUDNJh5oa1AGlhEQuiyCtqQ8AIIKD2tglnhwUoLjGGR7rzk
 A1nQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCXkSgvJK1wlDiJBxm4ZIgDjg1GEnQYCnCL2o2CM6MQCcZ6h/IAaDtPM4s2K+pa/8+8SRLsQ7aXp50UC+p/+4JePTL80jKxAt69Y5g==
X-Gm-Message-State: AOJu0Yx01BYS3idAn1hgYRXOVZMn05cE0AXrCBGM4dZ1Hkr9bpxV73ho
 2P0IstfgFYlmCTiV+Psg85/MNADP9P3vJlai7Tvo+/UOY1FtuMVT
X-Google-Smtp-Source: AGHT+IGWRUI+KkrY4q7GRyBZy+q4rOsmvMAtes0ZmS+o6XW+GOfg3unezpuOnZ6Zm1Gka0+HWIkwwQ==
X-Received: by 2002:a2e:9b4e:0:b0:2e3:8fa:6438 with SMTP id
 38308e7fff4ca-2e52028daa2mr138676361fa.33.1715943712034; 
 Fri, 17 May 2024 04:01:52 -0700 (PDT)
Received: from ubuntu-thinkpad-x1-carbon-6th.. ([105.99.23.217])
 by smtp.gmail.com with ESMTPSA id
 5b1f17b1804b1-41fccbe8fc6sm301201665e9.4.2024.05.17.04.01.51
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 17 May 2024 04:01:51 -0700 (PDT)
From: Mohamed Karaoui <moharaka@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH] staging: rtl8192e: Fixes a coding style error
Date: Fri, 17 May 2024 12:01:40 +0100
Message-Id: <20240517110140.81732-1-moharaka@gmail.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1715943712; x=1716548512; darn=driverdev.osuosl.org;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=soH3v7AjKgEzN9pDh9CRbKA35VUs2CBjMotD1Xr5BgQ=;
 b=IkqNOub0CkxQruZXHk8/aE3AlkGX0nnZTAoxsGyxUE4uYo1BllcArmsX0NFawJQ0v+
 JWH0sGh1IXVTBOw0PuUM5A2GTopFEGcs88Bhe4+gmoCWwr8PaD3EAomFNvDr4tYFk6zD
 ElugLluPTjDkuC/IAPyHgf0EgLrIZ7IEJTG8X8DNNoRY60FIYhuHHugutsLFFVflSK0R
 N/FuQKE6LgwOBl0VcevRsBH/rGwH1/8vmLqj6OjbEN+asAcA/2lptuOI2ClRUnJfx0kE
 lfRTDk11Yf4rWoa4/16YU33IPfb47KjRsIX08WeujX8dIkkSDSb0x7Id0wVieTmM72c/
 LRvw==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256
 header.s=20230601 header.b=IkqNOub0
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
 Mohamed Karaoui <moharaka@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Adds a space before if statement's condition

Signed-off-by: Mohamed Karaoui <moharaka@gmail.com>
---
 drivers/staging/rtl8192e/rtllib_crypt_ccmp.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8192e/rtllib_crypt_ccmp.c b/drivers/staging/rtl8192e/rtllib_crypt_ccmp.c
index 0cbf4a1a326b..b2af802b9451 100644
--- a/drivers/staging/rtl8192e/rtllib_crypt_ccmp.c
+++ b/drivers/staging/rtl8192e/rtllib_crypt_ccmp.c
@@ -278,7 +278,7 @@ static int rtllib_ccmp_decrypt(struct sk_buff *skb, int hdr_len, void *priv)
 		int aad_len, ret;
 
 		req = aead_request_alloc(key->tfm, GFP_ATOMIC);
-		if(!req)
+		if (!req)
 			return -ENOMEM;
 
 		aad_len = ccmp_init_iv_and_aad(hdr, pn, iv, aad);
-- 
2.34.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
