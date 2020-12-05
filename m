Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 74F112CFFBA
	for <lists+driverdev-devel@lfdr.de>; Sun,  6 Dec 2020 00:23:23 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 77708874D1;
	Sat,  5 Dec 2020 23:23:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id l85CfqlzOUe5; Sat,  5 Dec 2020 23:23:20 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 460ED860FF;
	Sat,  5 Dec 2020 23:23:20 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 7F9951BF361
 for <devel@linuxdriverproject.org>; Sat,  5 Dec 2020 23:23:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 78DAE86D93
 for <devel@linuxdriverproject.org>; Sat,  5 Dec 2020 23:23:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id qdWhEvbVN6Iw for <devel@linuxdriverproject.org>;
 Sat,  5 Dec 2020 23:23:17 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-io1-f68.google.com (mail-io1-f68.google.com
 [209.85.166.68])
 by whitealder.osuosl.org (Postfix) with ESMTPS id D50D286D58
 for <devel@driverdev.osuosl.org>; Sat,  5 Dec 2020 23:23:17 +0000 (UTC)
Received: by mail-io1-f68.google.com with SMTP id r9so9674091ioo.7
 for <devel@driverdev.osuosl.org>; Sat, 05 Dec 2020 15:23:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=A6Gb9QssTVbZBJs5rq2OieXqX5KqJ/j2nya93yivt40=;
 b=kpu0+uJj+r+ND5u5mNrJ6PRU/3gvPDNqyhT9u0HrPJ1AXdM6KRZrc6ThNE24RFQAKr
 Jlx766kA8q5VZEhmg6k/Oq7ukiZwTVoUTa1RVlh7LiRDt3urnS74AVfxE0qENgWzdbBX
 HrVvlDqqEa0SdcvPVjWB08MRnf9jVkpe/KGuAsOq7gxc3Mxc2gYvQiWBhEsoZKBRZjUe
 I3cQkKHzJeKF/xNu2qo9AGBTQEven4EsxvKoFct0lCGfXPTu9LgmB9p7P/xmVy/mJ937
 SVG70MJI6Wmud53lJ+CXLplcxou0OG2waTL2XXrHLE0MM6wXhgba9UHvo5sja9GKX3bC
 QqZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=A6Gb9QssTVbZBJs5rq2OieXqX5KqJ/j2nya93yivt40=;
 b=ojimz2G2dLR5+LExkz9siZLndb8Vy5nnRjvVftXUUzw0PWxF4DPHBtltBGI5XC9Ykv
 /ASBe469G4pawQdDLeswDLWsJDIppmBGpAre6dvhUTnsR3GnmHfAK5NuE0UvZCdooZlN
 w+Ay3QmRETtG3sGtVSMaFobLJETisVq13nuGaoPA9bsesxsts52xz0E7MJtDXdUGf0lb
 RFUeJ6JnvwBXNogurZRYxhNHsNqQYwqt1HYGBclMoqJngiNIMLayNwVlaaMq38EmCdV5
 fshyHwYfn2cyZa2YdQ2LmWFKVPlToNzbda/ucZjnPHdCUlnxGzExw/ARWUQmnVab78Ee
 ZBrA==
X-Gm-Message-State: AOAM530dK93ifd2VahNA0IxSTQHmtszKswu+PirJmiDke0jAkOl1JACR
 8Wnns0nnoRQkkhoVcIJlMV8=
X-Google-Smtp-Source: ABdhPJyso0+TEah9VG+gFPsWPVmW7zhOe/FYWvsLheGQ158j3Ur6vNSm8JEtkuN3yvgNAkGEZwItYw==
X-Received: by 2002:a02:ceb0:: with SMTP id z16mr13214322jaq.40.1607210596998; 
 Sat, 05 Dec 2020 15:23:16 -0800 (PST)
Received: from a ([24.13.98.51])
 by smtp.gmail.com with ESMTPSA id p9sm4226990ilq.58.2020.12.05.15.23.15
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 05 Dec 2020 15:23:16 -0800 (PST)
Date: Sat, 5 Dec 2020 17:23:14 -0600
From: Brother Matthew De Angelis <matthew.v.deangelis@gmail.com>
To: gregkh@linuxfoundation.org, hdegoede@redhat.com,
 Larry.Finger@lwfinger.net, ross.schm.dev@gmail.com, vkor@vkten.in,
 dan.carpenter@oracle.com, pterjan@google.com, amarjargal16@gmail.com
Subject: [PATCH 1/2] Staging: rtl8723bs/core: delete empty if statement
Message-ID: <1895dc8a7b44bfdcb6a46273703fabad80cbdf99.1607209336.git.matthew.v.deangelis@gmail.com>
References: <cover.1607209336.git.matthew.v.deangelis@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <cover.1607209336.git.matthew.v.deangelis@gmail.com>
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
Cc: devel@driverdev.osuosl.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Delete an if statement that was not executing anything when true.
This has the side effect of removing one checkpatch warning about braces
not being necessary.

Signed-off-by: Brother Matthew De Angelis <matthew.v.deangelis@gmail.com>
---
 drivers/staging/rtl8723bs/core/rtw_recv.c | 3 ---
 1 file changed, 3 deletions(-)

diff --git a/drivers/staging/rtl8723bs/core/rtw_recv.c b/drivers/staging/rtl8723bs/core/rtw_recv.c
index 43e67e48d2df..ce8484e0e5b9 100644
--- a/drivers/staging/rtl8723bs/core/rtw_recv.c
+++ b/drivers/staging/rtl8723bs/core/rtw_recv.c
@@ -937,9 +937,6 @@ sint ap2sta_data_frame(struct adapter *adapter, union recv_frame *precv_frame,
 			goto exit;
 		}
 
-		if ((GetFrameSubType(ptr) & WIFI_QOS_DATA_TYPE) == WIFI_QOS_DATA_TYPE) {
-		}
-
 		if (GetFrameSubType(ptr) & BIT(6)) {
 			/* No data, will not indicate to upper layer, temporily count it here */
 			count_rx_stats(adapter, precv_frame, *psta);
-- 
2.25.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
