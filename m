Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B6BA3198CD
	for <lists+driverdev-devel@lfdr.de>; Fri, 12 Feb 2021 04:33:11 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 84F3386E76;
	Fri, 12 Feb 2021 03:33:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id xN7WPJbPNwXX; Fri, 12 Feb 2021 03:33:08 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 9B3CE86E71;
	Fri, 12 Feb 2021 03:33:07 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id F0B911BF334
 for <devel@linuxdriverproject.org>; Fri, 12 Feb 2021 03:33:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id DE87C6F6B2
 for <devel@linuxdriverproject.org>; Fri, 12 Feb 2021 03:33:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 4RMfE_d2u_sH for <devel@linuxdriverproject.org>;
 Fri, 12 Feb 2021 03:33:05 +0000 (UTC)
Received: by smtp3.osuosl.org (Postfix, from userid 1001)
 id 3AB406F6C4; Fri, 12 Feb 2021 03:33:05 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail-pl1-f171.google.com (mail-pl1-f171.google.com
 [209.85.214.171])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 17CE36F6B2
 for <devel@driverdev.osuosl.org>; Fri, 12 Feb 2021 03:33:04 +0000 (UTC)
Received: by mail-pl1-f171.google.com with SMTP id a24so2500655plm.11
 for <devel@driverdev.osuosl.org>; Thu, 11 Feb 2021 19:33:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=+k2EVCWavlGQSSplECmMOLFV14dV8eLZdDl9Lm/0vCU=;
 b=dC5i+gWofwtMMN4P1igX9soRn8hQ5Wbvgq3ing4Gu8mBc+DUFbJUCypx0CdiiPHALc
 vXxTXvKUbY2c+mH0wDwcF2MfLKeaLj9ehhxw6j5xml32aDG7bDd/ylmOzjSrIYUs3W4L
 JEIG0DeVTw2rRBB9uwX52eXtx6CE598bu8aRJ8y5YqG5M7yK/TfcNIaWsQWJW5L68Gl/
 duwKm8FJvNGDnw6DaL0QA2ScS8LqL/GUq4f/rql4v9GliGJkkyGEFvNOVumTfFY+UkKC
 8nRpz5W6HRzFM+2OIx2DXSMaV9UbkoeOK4dxeUjP/vlIpXsAPkzzD54VUK0mA3v2a60w
 mUkA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=+k2EVCWavlGQSSplECmMOLFV14dV8eLZdDl9Lm/0vCU=;
 b=Ttq4+FLMqSyzOmGTK2IkoYYMwY57ZgYlS7xh5oo39/30+2lDTNEEu1gU/0R0xsenIh
 8X+U8EeRO4B98Xd7So7SqmRDWc41BZcFcY/yoTKdNyIkkfyzHirp6fbcpG+raSV871Eg
 3+g/7K/BElRzQuwkrx9tnw1DhzWwSMSGNKOHG68TV0zw+tF+Pei2CPGcRr2oOvYPkprX
 Owru9kUZOt12u0ytGhMW64IBO0j0dM1lBND9XR9tFRHPhWEtg1+y3q/yyjmOwgfOYZe1
 NtcjQ2chU9EgdY1oCvFhUJXBqGCEyM4lL75YJCLctm/6bh+iJMsNn60wGuQOD40pQD3f
 baMQ==
X-Gm-Message-State: AOAM530fA5lQt9T9LaIFqR7cmICrYtvW/WA+oCduhmuAwp7rQGzHbcZM
 ARqdb6Cv26OkQ57vbYkW76s=
X-Google-Smtp-Source: ABdhPJyCo1ysklJEzL+xTQk3OXzvJHYJ/bPrpeUbIpxVp0iGJdGssitiBCeQRT6IMgK8AQiVLwaTVA==
X-Received: by 2002:a17:902:6b45:b029:e0:7a3:a8c with SMTP id
 g5-20020a1709026b45b02900e007a30a8cmr1023503plt.1.1613100783450; 
 Thu, 11 Feb 2021 19:33:03 -0800 (PST)
Received: from localhost.localdomain ([116.75.214.250])
 by smtp.gmail.com with ESMTPSA id t21sm7726215pfc.92.2021.02.11.19.32.59
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 11 Feb 2021 19:33:03 -0800 (PST)
From: Hemansh Agnihotri <hemanshagnihotri27@gmail.com>
To: gregkh@linuxfoundation.org, lee.jones@linaro.org,
 johannes@sipsolutions.net, kuba@kernel.org, arnd@arndb.de,
 mail@anirudhrb.com
Subject: [PATCH] staging: wimax: Fix some coding style problem
Date: Fri, 12 Feb 2021 09:02:56 +0530
Message-Id: <20210212033256.2116-1-hemanshagnihotri27@gmail.com>
X-Mailer: git-send-email 2.30.0
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
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

This fixes checkpatch error "open brace '{' following struct go on
the same line" in file drivers/staging/wimax/i2400m/rx.c .

Signed-off-by: Hemansh Agnihotri <hemanshagnihotri27@gmail.com>
---
 drivers/staging/wimax/i2400m/rx.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/staging/wimax/i2400m/rx.c b/drivers/staging/wimax/i2400m/rx.c
index 5b3a85035f6a..702a1e2fabcd 100644
--- a/drivers/staging/wimax/i2400m/rx.c
+++ b/drivers/staging/wimax/i2400m/rx.c
@@ -485,8 +485,7 @@ struct i2400m_roq_data {
  * store the sequence number (sn) and the cs (packet type) coming from
  * the RX payload header from the device.
  */
-struct i2400m_roq
-{
+struct i2400m_roq {
 	unsigned ws;
 	struct sk_buff_head queue;
 	struct i2400m_roq_log *log;
-- 
2.30.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
