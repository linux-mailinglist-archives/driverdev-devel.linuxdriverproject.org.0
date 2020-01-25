Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id AC70C1495F9
	for <lists+driverdev-devel@lfdr.de>; Sat, 25 Jan 2020 14:46:15 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 5AD5F86D01;
	Sat, 25 Jan 2020 13:46:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id v-4cDN5kFGaS; Sat, 25 Jan 2020 13:46:13 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 653BB84995;
	Sat, 25 Jan 2020 13:46:13 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 695BE1BF27F
 for <devel@linuxdriverproject.org>; Sat, 25 Jan 2020 13:46:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 663DD847BE
 for <devel@linuxdriverproject.org>; Sat, 25 Jan 2020 13:46:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id W3BM277-GE4N for <devel@linuxdriverproject.org>;
 Sat, 25 Jan 2020 13:46:10 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pj1-f68.google.com (mail-pj1-f68.google.com
 [209.85.216.68])
 by whitealder.osuosl.org (Postfix) with ESMTPS id D1ED48471C
 for <devel@driverdev.osuosl.org>; Sat, 25 Jan 2020 13:46:10 +0000 (UTC)
Received: by mail-pj1-f68.google.com with SMTP id a6so1069910pjh.2
 for <devel@driverdev.osuosl.org>; Sat, 25 Jan 2020 05:46:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:mime-version:content-disposition
 :user-agent; bh=UseYwksRXy1FRsziRCEfauNXVKV66lcX0Z60Z80rcEQ=;
 b=U1cn2rtp5HaScqVpNnTPdupOhU3dc+A9D7CN+NmF6XB8+GBgYJsge3eioJoX/RISZc
 xXB+X534IILv5FfWeHnWwRC/HHNAPj4st1YgmNTsQ1K/hoy8nR6aETWo4ZUoVq6Yp0wa
 KZQdfsUXLlX18LTNZ692B4WvFiui/fWHzyhWr1tZcDMVv2fKLcfZCrV55awuLNHXCO8N
 NXzuH+oh30506BcVN5eB6jYdniiKrdBd3evxjWtJ6rPR8+z4r5jQderBYln9XYG9VdM4
 ek2qCp9EdIzUZ2DvtjN7lYP718oBqQc3zAGCa2lQTA29UThLlhm/Z2+o1e5BZnbbZ5Fk
 1ykg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=UseYwksRXy1FRsziRCEfauNXVKV66lcX0Z60Z80rcEQ=;
 b=r0pwkAhyqBRV8Sd4UTJA/zcqbTeTLbaE2XPNOSB1CH5SUINwb8L+P7d9ZJDUcgxs0J
 +DoonCLoGUhTWnogzUDLR4Sn7ixDkVF0r0fuvpekjTUqQfnjUwy2zM88s/tpP2M/LA1c
 aXNuIAH43eJRs1+/H5nL9wqT4sFbzBSs5J/Qhaj6CWmGcd1P8TTMjCyb/x/QQsYXzYYb
 Gz5nCtejGniAao52fO5pRJKwQxa7aaY0T6DqAXfkWxQX6IboqmKag1e4Fgu1NHdOlvJC
 95IJE77bd5ykKfd+cmMPGwd6dHqiEkeH3RXj2KgHgFzqvNn5hYu2tD+C7w/OdSXATwj+
 j/Vw==
X-Gm-Message-State: APjAAAVbE2zLC6sZTFcA1Vqq9b9273hlvJSqofGVYy7DoFU3Q1AILSa+
 iu8vAB+I1FrVx6U/T11Qcdg=
X-Google-Smtp-Source: APXvYqxwVbnj0o+6EqXP1Yh0WUy1DHDxWyfbZhcRXljqz2AsHvyWSumnbARkfiuNvF5d4vXp/trYNg==
X-Received: by 2002:a17:90a:c588:: with SMTP id
 l8mr4764866pjt.69.1579959970417; 
 Sat, 25 Jan 2020 05:46:10 -0800 (PST)
Received: from google.com ([123.201.163.7])
 by smtp.gmail.com with ESMTPSA id t187sm9959497pfd.21.2020.01.25.05.46.08
 (version=TLS1_2 cipher=AES128-SHA bits=128/128);
 Sat, 25 Jan 2020 05:46:10 -0800 (PST)
Date: Sat, 25 Jan 2020 19:16:04 +0530
From: Saurav Girepunje <saurav.girepunje@gmail.com>
To: gregkh@linuxfoundation.org, saurav.girepunje@gmail.com,
 devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Subject: [PATCH] staging: rtl8723bs: hal: fix condition with no effect
Message-ID: <20200125134604.GA4247@google.com>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.6.2-neo (NetBSD/sparc64)
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
Cc: saurav.girepunje@hotmail.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

fix warning reorted by coccicheck
WARNING: possible condition with no effect (if == else)

Signed-off-by: Saurav Girepunje <saurav.girepunje@gmail.com>
---
  drivers/staging/rtl8723bs/hal/HalBtc8723b2Ant.c | 8 --------
  1 file changed, 8 deletions(-)

diff --git a/drivers/staging/rtl8723bs/hal/HalBtc8723b2Ant.c b/drivers/staging/rtl8723bs/hal/HalBtc8723b2Ant.c
index 02da0a8..8dfa9b9 100644
--- a/drivers/staging/rtl8723bs/hal/HalBtc8723b2Ant.c
+++ b/drivers/staging/rtl8723bs/hal/HalBtc8723b2Ant.c
@@ -1610,8 +1610,6 @@ static void halbtc8723b2ant_TdmaDurationAdjust(
  						HAL_BTC8723B2ANT_DMA_DURATION_ADJUST(13);
  					else if (maxInterval == 2)
  						HAL_BTC8723B2ANT_DMA_DURATION_ADJUST(14);
-					else if (maxInterval == 3)
-						HAL_BTC8723B2ANT_DMA_DURATION_ADJUST(15);
  					else
  						HAL_BTC8723B2ANT_DMA_DURATION_ADJUST(15);
  				} else {
@@ -1619,8 +1617,6 @@ static void halbtc8723b2ant_TdmaDurationAdjust(
  						HAL_BTC8723B2ANT_DMA_DURATION_ADJUST(9);
  					else if (maxInterval == 2)
  						HAL_BTC8723B2ANT_DMA_DURATION_ADJUST(10);
-					else if (maxInterval == 3)
-						HAL_BTC8723B2ANT_DMA_DURATION_ADJUST(11);
  					else
  						HAL_BTC8723B2ANT_DMA_DURATION_ADJUST(11);
  				}
@@ -1630,8 +1626,6 @@ static void halbtc8723b2ant_TdmaDurationAdjust(
  						HAL_BTC8723B2ANT_DMA_DURATION_ADJUST(5);
  					else if (maxInterval == 2)
  						HAL_BTC8723B2ANT_DMA_DURATION_ADJUST(6);
-					else if (maxInterval == 3)
-						HAL_BTC8723B2ANT_DMA_DURATION_ADJUST(7);
  					else
  						HAL_BTC8723B2ANT_DMA_DURATION_ADJUST(7);
  				} else {
@@ -1639,8 +1633,6 @@ static void halbtc8723b2ant_TdmaDurationAdjust(
  						HAL_BTC8723B2ANT_DMA_DURATION_ADJUST(1);
  					else if (maxInterval == 2)
  						HAL_BTC8723B2ANT_DMA_DURATION_ADJUST(2);
-					else if (maxInterval == 3)
-						HAL_BTC8723B2ANT_DMA_DURATION_ADJUST(3);
  					else
  						HAL_BTC8723B2ANT_DMA_DURATION_ADJUST(3);
  				}
-- 
1.9.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
