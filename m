Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 8186E33ECF1
	for <lists+driverdev-devel@lfdr.de>; Wed, 17 Mar 2021 10:26:59 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 563016F6B5;
	Wed, 17 Mar 2021 09:26:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id uCPNv2GXlNJL; Wed, 17 Mar 2021 09:26:56 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id A82216F6B2;
	Wed, 17 Mar 2021 09:26:55 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id C423C1BF831
 for <devel@linuxdriverproject.org>; Wed, 17 Mar 2021 09:26:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id AD5B083F21
 for <devel@linuxdriverproject.org>; Wed, 17 Mar 2021 09:26:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id kSh8gfhl244x for <devel@linuxdriverproject.org>;
 Wed, 17 Mar 2021 09:26:45 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-qk1-x731.google.com (mail-qk1-x731.google.com
 [IPv6:2607:f8b0:4864:20::731])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 1084983F1B
 for <devel@driverdev.osuosl.org>; Wed, 17 Mar 2021 09:26:44 +0000 (UTC)
Received: by mail-qk1-x731.google.com with SMTP id n24so7999693qkh.9
 for <devel@driverdev.osuosl.org>; Wed, 17 Mar 2021 02:26:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=IrBUuxJ0/tOe5JMdV3oCdZMLR5yrFFt6tQhg6SF9S0A=;
 b=dE1SinEo08zAhMWg4UnYbEdt73S+JsqxL7ePe//MGRGo/jF76RBPZksVsKotwsRkI/
 iDezvBg0TBTIrASc1UE0m6ayW9GSMfVhVDXpb0V5jWEjqVhoOclFuHADK+evUBlvAp72
 7Iqd1T8Z8NQ88yNmJTsX06/rzMi6gv+v4jEpPepPr16bLloTrdas1MKYQZe4IgO/fzzX
 rZdDLzx4acmNb/Be862nf2LM70PgxJxqgNCgBSjBi5WaZQHQ89HiWxxCLx2QqY5+9BRS
 qYb82yp9p76wIjj5XtSAi4PWIdUCeygHb6NNwQ3EMX4a/Lt4MLzjNoQRYlLPthhvnbo6
 qm9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=IrBUuxJ0/tOe5JMdV3oCdZMLR5yrFFt6tQhg6SF9S0A=;
 b=g4wEs2pUh7y8BPis43FxRxhDZppEqIzGtUL5KAhbdpXqj72/0euJxnwDLmU9IDNJ1E
 XCwH3w8CN8zn4TeKdkaK0lJcXmoR/PZXS3Ffuy3Qdtw1Pg2eGKoy1SfjaUM0tBLXIlWW
 ELIAA1wgDKtgy2iV/7n/fPn94dLbVrjOhcF6BLeq64VqDl4IlsR7K5d+NYfJltrxCIPp
 xuQli0Zq4T+9WidNwE/125//a5wywepF2W+JyVeReQ+C8LYvrrtyPO8ZdxT40Hie2K7a
 KDBXRPkxyurM6Aek/gnAOD2elFSHiYEAzTjpXNJTVm26HHgGTDfGakTIrX9M+Atz5vi5
 n6pw==
X-Gm-Message-State: AOAM533RfVBtdj/fLBtCW1y4fQR+8y0z9+Y7DbjWyZSC7wbB0INLf5/3
 8V5CZgwZhQbcf5VvWl5GIbg=
X-Google-Smtp-Source: ABdhPJxTZ/kq8GIiLUeaxd9POUK/w++5tslHHZ3DZ0Y4syQpAclRJmIdQKDKwVf2q9AX7OHPLAPEJg==
X-Received: by 2002:a37:7745:: with SMTP id s66mr3669503qkc.18.1615973203980; 
 Wed, 17 Mar 2021 02:26:43 -0700 (PDT)
Received: from localhost.localdomain ([37.19.198.48])
 by smtp.gmail.com with ESMTPSA id 1sm7536340qtw.3.2021.03.17.02.26.39
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 17 Mar 2021 02:26:43 -0700 (PDT)
From: Bhaskar Chowdhury <unixbhaskar@gmail.com>
To: gregkh@linuxfoundation.org, colin.king@canonical.com, davem@davemloft.net,
 johannes@sipsolutions.net, arnd@arndb.de, unixbhaskar@gmail.com,
 lee.jones@linaro.org, devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH] staging: wimax: i2400m: Mundane typo fix in the file driver.c
Date: Wed, 17 Mar 2021 14:56:24 +0530
Message-Id: <20210317092624.1138207-1-unixbhaskar@gmail.com>
X-Mailer: git-send-email 2.30.2
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>


s/procesing/processing/

Signed-off-by: Bhaskar Chowdhury <unixbhaskar@gmail.com>
---
 drivers/staging/wimax/i2400m/driver.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/wimax/i2400m/driver.c b/drivers/staging/wimax/i2400m/driver.c
index f5186458bb3d..8091106212f9 100644
--- a/drivers/staging/wimax/i2400m/driver.c
+++ b/drivers/staging/wimax/i2400m/driver.c
@@ -96,7 +96,7 @@ MODULE_PARM_DESC(barkers,
  *
  * This function just verifies that the header declaration and the
  * payload are consistent and then deals with it, either forwarding it
- * to the device or procesing it locally.
+ * to the device or processing it locally.
  *
  * In the i2400m, messages are basically commands that will carry an
  * ack, so we use i2400m_msg_to_dev() and then deliver the ack back to
--
2.30.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
