Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id DDDA3472BE
	for <lists+driverdev-devel@lfdr.de>; Sun, 16 Jun 2019 04:54:40 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 83515203F8;
	Sun, 16 Jun 2019 02:54:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id MOAqiJ-q7Uxd; Sun, 16 Jun 2019 02:54:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id BE747203F4;
	Sun, 16 Jun 2019 02:54:37 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 72EE71BF5A4
 for <devel@linuxdriverproject.org>; Sun, 16 Jun 2019 02:54:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 7010683713
 for <devel@linuxdriverproject.org>; Sun, 16 Jun 2019 02:54:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 4bP3n2uWMrND for <devel@linuxdriverproject.org>;
 Sun, 16 Jun 2019 02:54:36 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f193.google.com (mail-pf1-f193.google.com
 [209.85.210.193])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 0B41983616
 for <devel@driverdev.osuosl.org>; Sun, 16 Jun 2019 02:54:36 +0000 (UTC)
Received: by mail-pf1-f193.google.com with SMTP id m30so3728819pff.8
 for <devel@driverdev.osuosl.org>; Sat, 15 Jun 2019 19:54:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:subject:message-id:mime-version:content-disposition
 :user-agent; bh=AJZkUctyy1iP4lj+ZenQcgI+EZnxpcZPG/pF3IUKv5E=;
 b=l4ftvjkpJgj5rZAm91YeYiwItgta1YkWhD5Hhj3IUGTVf2hQU0rT+3AMcPNxEPPXzb
 /VA8+jWu+M3wP8+GjEFqA/8NixPqi4WeiNCkFM8FJy9uC9PesmHU63INRMN8GuqsY1UJ
 V6G7ubHaKZlnKWggYFU1m4zaVVo08ZbPKsOQVLn2eS90NV8kDzCdR+BSu4l8+pxk63Db
 q6eVvGabGFAcGMe4NycT8G/1zUuhW34jNhW0KIr3wVIXkM4JseY2ikEQDtgN4NQWveuc
 lHweGxFRp0WwrNyGYNRvdbiuLTwDOGfVHcNmYvQ4EDxOp+ByhHLhf+NZAaZsqzzAoW8P
 Ox3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=AJZkUctyy1iP4lj+ZenQcgI+EZnxpcZPG/pF3IUKv5E=;
 b=PDPCoz3T9nm+p3GFVCnan3DLgrxj2ZiFFr/RvgMheY5Sb1PfUcK5ew88jmwssd4vOK
 5OoqNiCs4fmmeqy35/su1Vu/orzXX/Cp029bJxU69xW0muxuY9P5V6nFk+r5GKMssGA9
 DOVB9VQ3eipm4xDumh7wZviHtxX3L7eNeiGnKu8g7ozeQV/enDgu6Q710y2liAvsVYHX
 yHz+fCKoKafRLMbHhUZCXqrchvMcCkerbzNAI/jg3+1bJKywQ2+p05kkCORc3OI7R+iZ
 jVWiUiTwRyt6aqgh9AcpGittRjRfC/SggPacaqhAaWQrfSLEimYnIOTaimNyOac2/RWF
 mefg==
X-Gm-Message-State: APjAAAWEMaZnZhXDfnnMpG8EAb3sqeD9HEeLuFv9cvB7ApNUJuE6xBTs
 D2Iyp+79yIKkU8UnSC8yXdc=
X-Google-Smtp-Source: APXvYqxGRYZhS2UOeRpczM60OIdcHbw5BBaUsoBjafkMjsWWzIMlqZaWgpun9OhIwsGxmqks0AFaMA==
X-Received: by 2002:a65:510c:: with SMTP id f12mr41514186pgq.92.1560653675662; 
 Sat, 15 Jun 2019 19:54:35 -0700 (PDT)
Received: from hari-Inspiron-1545 ([183.83.89.153])
 by smtp.gmail.com with ESMTPSA id p15sm6647513pgj.61.2019.06.15.19.54.33
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 15 Jun 2019 19:54:35 -0700 (PDT)
Date: Sun, 16 Jun 2019 08:24:31 +0530
From: Hariprasad Kelam <hariprasad.kelam@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Hariprasad Kelam <hariprasad.kelam@gmail.com>,
 Josenivaldo Benito Jr <jrbenito@benito.qsl.br>,
 Larry Finger <Larry.Finger@lwfinger.net>,
 Himadri Pandya <himadri18.07@gmail.com>, devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org
Subject: [Patch v2 2/2] staging: rtl8723bs: hal: fix Using comparison to
 false is error prone
Message-ID: <20190616025430.GA12034@hari-Inspiron-1545>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)
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

fix below issue reported by checkpatch

CHECK: Using comparison to false is error prone

Signed-off-by: Hariprasad Kelam <hariprasad.kelam@gmail.com>
---
changes in v2: break the patch for specific change
----
---
 drivers/staging/rtl8723bs/hal/rtl8723bs_recv.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8723bs/hal/rtl8723bs_recv.c b/drivers/staging/rtl8723bs/hal/rtl8723bs_recv.c
index 07bee19..e23b39a 100644
--- a/drivers/staging/rtl8723bs/hal/rtl8723bs_recv.c
+++ b/drivers/staging/rtl8723bs/hal/rtl8723bs_recv.c
@@ -175,7 +175,7 @@ static void rtl8723bs_c2h_packet_handler(struct adapter *padapter,
 
 	res = rtw_c2h_packet_wk_cmd(padapter, tmp, length);
 
-	if (res == false)
+	if (!res)
 		kfree(tmp);
 
 	/* DBG_871X("-%s res(%d)\n", __func__, res); */
-- 
2.7.4

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
