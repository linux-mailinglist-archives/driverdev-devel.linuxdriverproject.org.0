Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 7136E339F69
	for <lists+driverdev-devel@lfdr.de>; Sat, 13 Mar 2021 18:15:15 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3A4E94DB65;
	Sat, 13 Mar 2021 17:15:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id L4BQ0J3PmMte; Sat, 13 Mar 2021 17:15:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id ECC8C4D81E;
	Sat, 13 Mar 2021 17:15:09 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 4A8721BF573
 for <devel@linuxdriverproject.org>; Sat, 13 Mar 2021 17:15:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 38FC183B3F
 for <devel@linuxdriverproject.org>; Sat, 13 Mar 2021 17:15:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id TwMiCX8VMcnh for <devel@linuxdriverproject.org>;
 Sat, 13 Mar 2021 17:14:59 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-pj1-x102c.google.com (mail-pj1-x102c.google.com
 [IPv6:2607:f8b0:4864:20::102c])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 807F583B3A
 for <devel@driverdev.osuosl.org>; Sat, 13 Mar 2021 17:14:59 +0000 (UTC)
Received: by mail-pj1-x102c.google.com with SMTP id gb6so6694634pjb.0
 for <devel@driverdev.osuosl.org>; Sat, 13 Mar 2021 09:14:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:mime-version:content-disposition;
 bh=nT5JOdOGE7vNld2SAFCD+UmB6bIy2oklK2SEW9uMfXY=;
 b=vUD0Sa1mRkMVokQLx+Lx3h7Xtf1LWgIJDCvxT6YzknQPco05uk/KjoWZ2/+jWbeUs5
 OKqea6iQk9/r5DmQYba32Qc/vlcwaWwxqXnaCYw1g8d1T2ZkoZoBATQKAMLfrcl8A2H0
 cUQX7R7KP4xp/2yUABFlbyAcK77YbJb4tlO3S5ChB6Y8Pl2qS3VIoLu38FoH+u1AlFGp
 gnqf3tz5LOimQnYSlEQgx5kpoKYyRtA/xUUy8HzfLKTGYm6+nhMYdgcGxWayJNLME5PG
 h12u89fNPW5As7OVUBlO6obOCuhiDpeednd3NcHlJIfrNIpCTSRhs7ftOOsqwF8ggqh1
 dXUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
 :content-disposition;
 bh=nT5JOdOGE7vNld2SAFCD+UmB6bIy2oklK2SEW9uMfXY=;
 b=FQSFMypCQvsdhSgRdGsVM4CR7qk8OeAsK/N3sEZv4veUNM2Y+e/91mG5lfzWs0bQyi
 uGCx3ZaMlBJjNKau3giWqSuVhnRFmiuXdOwit6Zx8RfVPor1bssPkfN3U2jpsmYdYWIb
 OOPhr+RWyqffC1xn/k6WL1zLOeXlnbUfAs+Hk8pFu0K/ApHUJZslGvF0NWlprkgUjAvS
 goCIbRFvFtvT/Va+ZL0um71Cy9V6Kx8cX6OYPB4veD17noG/pCuREyDBdisHqqEp1PqK
 URtQ7nGicK2kSJG88DSwkgFIzjI6QTd3xJqjwjVpFSxYdvgJvoW/jN66lrlSeG64Pzo1
 sHgw==
X-Gm-Message-State: AOAM531D3wkjUzuFYx0tgySlCpKWhaG4kj8seFu2DQ/tcATPoPi3spB1
 egz6zK31VBIYLa65gnfvmdM=
X-Google-Smtp-Source: ABdhPJxJl5D2JQCsAaB8jLtVXXjSpWNcdqH1RLejHHAhCK/jkKJcSQ30ND2y9AuUFp98xrLPE8lqIw==
X-Received: by 2002:a17:903:22c1:b029:e6:8800:37c7 with SMTP id
 y1-20020a17090322c1b02900e6880037c7mr3929904plg.61.1615655699049; 
 Sat, 13 Mar 2021 09:14:59 -0800 (PST)
Received: from shreya-VirtualBox ([49.207.200.51])
 by smtp.gmail.com with ESMTPSA id q205sm9456552pfc.126.2021.03.13.09.14.56
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 13 Mar 2021 09:14:58 -0800 (PST)
Date: Sat, 13 Mar 2021 22:44:53 +0530
From: Shreya <shreya.ajithchb@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH] staging:rtl8723bs:core:rtw_wlan_util:fixed indentation
 coding style issue
Message-ID: <20210313171453.GA2640@shreya-VirtualBox>
MIME-Version: 1.0
Content-Disposition: inline
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
Cc: devel@driverdev.osuosl.org, gregkh@linuxfoundation.org,
 bkkarthik@pesu.pes.edu, d.straghkov@ispras.ru, linux-kernel@vger.kernel.org,
 dan.carpenter@oracle.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Fixed the indentation of the else part of the conditional statement.

Signed-off-by: Shreya Ajith <shreya.ajithchb@gmail.com>
---
 drivers/staging/rtl8723bs/core/rtw_wlan_util.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8723bs/core/rtw_wlan_util.c b/drivers/staging/rtl8723bs/core/rtw_wlan_util.c
index 975f2830e29e..4b5afaeac916 100644
--- a/drivers/staging/rtl8723bs/core/rtw_wlan_util.c
+++ b/drivers/staging/rtl8723bs/core/rtw_wlan_util.c
@@ -1760,7 +1760,7 @@ void update_wireless_mode(struct adapter *padapter)
 
 	if (pmlmeext->cur_wireless_mode & WIRELESS_11B)
 		update_mgnt_tx_rate(padapter, IEEE80211_CCK_RATE_1MB);
-	 else
+	else
 		update_mgnt_tx_rate(padapter, IEEE80211_OFDM_RATE_6MB);
 }
 
-- 
2.25.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
