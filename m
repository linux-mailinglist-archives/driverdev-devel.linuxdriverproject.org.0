Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id A6D57442928
	for <lists+driverdev-devel@lfdr.de>; Tue,  2 Nov 2021 09:13:30 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 00C4B4013F;
	Tue,  2 Nov 2021 08:13:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 2IwkPnVh9Q7F; Tue,  2 Nov 2021 08:13:27 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id F1F7A400C7;
	Tue,  2 Nov 2021 08:13:25 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 565311BF2BA
 for <devel@linuxdriverproject.org>; Tue,  2 Nov 2021 08:13:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 4357E40132
 for <devel@linuxdriverproject.org>; Tue,  2 Nov 2021 08:13:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id yt08KvrhkG1a for <devel@linuxdriverproject.org>;
 Tue,  2 Nov 2021 08:13:15 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-pg1-x532.google.com (mail-pg1-x532.google.com
 [IPv6:2607:f8b0:4864:20::532])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 7B153400C7
 for <devel@driverdev.osuosl.org>; Tue,  2 Nov 2021 08:13:15 +0000 (UTC)
Received: by mail-pg1-x532.google.com with SMTP id f5so19444832pgc.12
 for <devel@driverdev.osuosl.org>; Tue, 02 Nov 2021 01:13:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=message-id:from:to:cc:subject:date:mime-version
 :content-transfer-encoding;
 bh=6BWDcbdqy5JG3JwyFHsYETyMufKhQtLqc84w/fEE4Y4=;
 b=GwV1jui6Nkkqsy06UF83v23ARLTHNbSyfAFmH/gOcYu29UO1Y7B+qMHEwEPnU1PbX/
 zqcPq+L1TxCu6oUSwIQ+nftz5Snj0xXO+E/zIiPMIiz2Yo60N+kZ5NS8peaa3RhAyyr5
 W2rF9k/ymjfAc2XbL+dE2zXM7ZGGZWzq9oJnxlCFlqwOljnwNSG7XwYCENmSANYja62v
 TXWP+pfOIuB5JkvB6+IRY3fAF0JDWUJ+HFSSX+TOu1ovpeqFIn1UV46uhqRnmGvE7UPT
 O5nj7ARix335JIZaO3yqbXHOMlZi7a2syEvH7icJounOtfOTazMsAclv83hOMlgmAAG8
 crrg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:from:to:cc:subject:date:mime-version
 :content-transfer-encoding;
 bh=6BWDcbdqy5JG3JwyFHsYETyMufKhQtLqc84w/fEE4Y4=;
 b=zU7ye2ehlvd6aed8H5Gpb1iJxltyFE9N+4wamllTTBdHE1n57zMvCG3QKxdwH8iwYw
 PXfNphzof8iipI9DRZHsUQlmlV7+QI49gMJsY6R8+LcZkd0nvGT2Z+VO7Yidyc2rcdy7
 qpHi8sReDUPoNWVQ+t4TP2wwcT3aRVhsfq5aDALarjZqJvkMIgYyl3xcs4xo4gnxNBpE
 eAszVzDygs0/DJiuusEABb07Xze+/oxCyJVVJu/b6lgFckvmBi2ZFfJQruAC4xESAXla
 HgIlUW8WsCVYdVG7oAAtBj9Mi3EPtxkZ1QNl65xX1uEwxsxl8GoZKA2r+HSehHG+6r3E
 hO3w==
X-Gm-Message-State: AOAM531b6o1f03IxWsfI0F2qikG1C2U6+2a43qF6GWkuQVRwCuCVekvv
 syDvRxlpAlMnvQ6vB0iew34=
X-Google-Smtp-Source: ABdhPJwYCo0cMv9SqRxKPalxKe8bMUf5UMYhaqsKJSCxxkXC7SRQIRjcC7tf2/BMObIqn5jyZjpizA==
X-Received: by 2002:a63:b002:: with SMTP id h2mr26316295pgf.464.1635840794991; 
 Tue, 02 Nov 2021 01:13:14 -0700 (PDT)
Received: from surfacebook2-fedora.ncku.edu.tw ([140.116.1.141])
 by smtp.gmail.com with ESMTPSA id b13sm1762097pjl.15.2021.11.02.01.13.13
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 02 Nov 2021 01:13:14 -0700 (PDT)
Message-ID: <6180f31a.1c69fb81.7f7e.541c@mx.google.com>
X-Google-Original-Message-ID: <20211102081259.55598-1-Hoshinomori-Owari>
From: hoshinomorimorimo@gmail.com
X-Google-Original-From: Hoshinomori-Owari
To: gregkh@linuxfoundation.org
Subject: [PATCH] staging: rtl8723bs: Remove redundant indentation
Date: Tue,  2 Nov 2021 16:12:59 +0800
X-Mailer: git-send-email 2.31.1
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
 Hoshinomori-Owari <hoshinomorimorimo@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

From: Hoshinomori-Owari <hoshinomorimorimo@gmail.com>

Remove redundant indentation in
drivers/staging/rtl8723bs/core/rtw_ap.c:1139.
Issue found by checkpatch.pl

Signed-off-by: Hoshinomori-Owari <hoshinomorimorimo@gmail.com>
---
 drivers/staging/rtl8723bs/core/rtw_ap.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8723bs/core/rtw_ap.c b/drivers/staging/rtl8723bs/core/rtw_ap.c
index a76e81330756..4345dca1b552 100644
--- a/drivers/staging/rtl8723bs/core/rtw_ap.c
+++ b/drivers/staging/rtl8723bs/core/rtw_ap.c
@@ -1137,7 +1137,7 @@ int rtw_check_beacon_data(struct adapter *padapter, u8 *pbuf,  int len)
 		}
 
 		if ((p == NULL) || (ie_len == 0))
-				break;
+			break;
 	}
 
 	/* wmm */
-- 
2.31.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
