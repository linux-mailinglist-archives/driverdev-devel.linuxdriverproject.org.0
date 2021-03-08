Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id E1618331133
	for <lists+driverdev-devel@lfdr.de>; Mon,  8 Mar 2021 15:49:16 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 222A16F483;
	Mon,  8 Mar 2021 14:49:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id WnfmkS3TnmGA; Mon,  8 Mar 2021 14:49:13 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 61F076069B;
	Mon,  8 Mar 2021 14:49:12 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id B5A801BF20B
 for <devel@linuxdriverproject.org>; Mon,  8 Mar 2021 14:49:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id B25D5605D9
 for <devel@linuxdriverproject.org>; Mon,  8 Mar 2021 14:49:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id X4Qi5HOUtZhc for <devel@linuxdriverproject.org>;
 Mon,  8 Mar 2021 14:49:00 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-oi1-x22a.google.com (mail-oi1-x22a.google.com
 [IPv6:2607:f8b0:4864:20::22a])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 7732760093
 for <devel@driverdev.osuosl.org>; Mon,  8 Mar 2021 14:49:00 +0000 (UTC)
Received: by mail-oi1-x22a.google.com with SMTP id z126so11193014oiz.6
 for <devel@driverdev.osuosl.org>; Mon, 08 Mar 2021 06:49:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=xAh0I5DS+zUHC62ocr0PUp7sELSwN0QnCXeTf8c6hZU=;
 b=gfdrD/m+jOEfPBuT9MjkC6Z+Z099DgmFyK5Zv9JQ/RgWcFQIL2jaWRpqAV1+I0BrDg
 357Hj6YeEjkXSKcumz0afvsEf8tmPfxzA5YzPgzOlU8qa6nDpIZY+99jzFILl28C6dLL
 hzjNsHWUsYLjdQSXya8BSBhZIjhyY1xxBhT/Ahz8+5m7+b5rsvkTkjaJ+b3l36xNHdku
 Nba4T9Rx0be54/vrf9S3D85R9kfxrjvbHAggA+kJZtpSB4uvxDqfA9TkAYAlaFdKLP8A
 90saDinbFHffFXEBoTCvWcH8lNxS5hWlVACd4OoNT7daEC3Ht1ZdPzVM/z356vB4oZdc
 h9jQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=xAh0I5DS+zUHC62ocr0PUp7sELSwN0QnCXeTf8c6hZU=;
 b=eYsciPYNWw68WuBDIA4aMXQoMPLm5PFY61nYeBH3Bhb0b9a/Uk/wQtDkmDVVz3a9e0
 zRAZp30jYkZvzaFlzOcNzprGacIs68X+707q/fU1aSy9knPfwIbu3Tv0zWteGSx9JhuC
 x6V/884yVr5ZB+17QUxTNFJGPsHqDLz7ahXew9h6aXBKso7i61GLEVa5tGDX3VdjOc4y
 4SMkqTGxnqBdHXAqe5yQA7Q1KHxD9gDRCx0izz7Qykp76Wt0z70h4RUNqBPjylKcumyE
 UrFYuQpNCPeveBHW2A1jd3Q0MSkXqJO/UuZcumgx3GlCKhDK7kEBuzoGvhM86vbBOaej
 zxeQ==
X-Gm-Message-State: AOAM531jMEOMzFOdEZP3JJ6qccc6AjpytFiCd/NRwRRwCBGBhHUw2YfY
 xN+UVBp6YKYJdaWLzhT0QtOshuV68pri3A==
X-Google-Smtp-Source: ABdhPJzhZDKswostOqOXCkbPF/Q5nddo3RXpozN5thSqIHYesa9mGm1tDx0/P3MMkCasnk9riDr5ZQ==
X-Received: by 2002:aca:d5d1:: with SMTP id
 m200mr16966046oig.102.1615214938883; 
 Mon, 08 Mar 2021 06:48:58 -0800 (PST)
Received: from elysium.agostinelli.home.saggio.net
 (2603-8080-4208-0193-f7c3-366a-30e3-d407.res6.spectrum.com.
 [2603:8080:4208:193:f7c3:366a:30e3:d407])
 by smtp.gmail.com with ESMTPSA id i1sm2481961oii.52.2021.03.08.06.48.57
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 08 Mar 2021 06:48:57 -0800 (PST)
From: "Darryl T. Agostinelli" <dagostinelli@gmail.com>
To: devel@driverdev.osuosl.org
Subject: [PATCH] staging: wimax: i2400m: fix some incorrect type warnings
Date: Mon,  8 Mar 2021 08:48:39 -0600
Message-Id: <20210308144839.2364329-1-dagostinelli@gmail.com>
X-Mailer: git-send-email 2.29.2
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
Cc: gregkh@linuxfoundation.org, lee.jones@linaro.org,
 "Darryl T. Agostinelli" <dagostinelli@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Fix some "incorrect type in assignment" warnings reported by sparse in fw.c

sparse warnings:
wimax/i2400m/fw.c:266:27: warning: cast to restricted __le32
wimax/i2400m/fw.c:266:25: warning: incorrect type in assignment (different base types)
wimax/i2400m/fw.c:267:27: warning: cast to restricted __le32
wimax/i2400m/fw.c:267:25: warning: incorrect type in assignment (different base types)
wimax/i2400m/fw.c:268:27: warning: cast to restricted __le32
wimax/i2400m/fw.c:268:25: warning: incorrect type in assignment (different base types)
wimax/i2400m/fw.c:269:27: warning: cast to restricted __le32
wimax/i2400m/fw.c:269:25: warning: incorrect type in assignment (different base types)

Signed-off-by: Darryl T. Agostinelli <dagostinelli@gmail.com>
---
 drivers/staging/wimax/i2400m/fw.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/wimax/i2400m/fw.c b/drivers/staging/wimax/i2400m/fw.c
index 92ea5c101e76..f0e43dbd02f6 100644
--- a/drivers/staging/wimax/i2400m/fw.c
+++ b/drivers/staging/wimax/i2400m/fw.c
@@ -263,10 +263,10 @@ int i2400m_barker_db_add(u32 barker_id)
 			return result;
 	}
 	barker = i2400m_barker_db + i2400m_barker_db_used++;
-	barker->data[0] = le32_to_cpu(barker_id);
-	barker->data[1] = le32_to_cpu(barker_id);
-	barker->data[2] = le32_to_cpu(barker_id);
-	barker->data[3] = le32_to_cpu(barker_id);
+	barker->data[0] = cpu_to_le32(barker_id);
+	barker->data[1] = cpu_to_le32(barker_id);
+	barker->data[2] = cpu_to_le32(barker_id);
+	barker->data[3] = cpu_to_le32(barker_id);
 	return 0;
 }
 
-- 
2.29.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
