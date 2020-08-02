Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 1EFC5235A12
	for <lists+driverdev-devel@lfdr.de>; Sun,  2 Aug 2020 20:56:58 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 0685420431;
	Sun,  2 Aug 2020 18:56:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id spI7JxzNI4hm; Sun,  2 Aug 2020 18:56:54 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 091022041B;
	Sun,  2 Aug 2020 18:56:53 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 68C711BF38D
 for <devel@linuxdriverproject.org>; Sun,  2 Aug 2020 18:56:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 601B3867C5
 for <devel@linuxdriverproject.org>; Sun,  2 Aug 2020 18:56:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id H4otOLkhQxVj for <devel@linuxdriverproject.org>;
 Sun,  2 Aug 2020 18:56:50 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ej1-f65.google.com (mail-ej1-f65.google.com
 [209.85.218.65])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 41044864C1
 for <devel@driverdev.osuosl.org>; Sun,  2 Aug 2020 18:56:50 +0000 (UTC)
Received: by mail-ej1-f65.google.com with SMTP id a21so36401354ejj.10
 for <devel@driverdev.osuosl.org>; Sun, 02 Aug 2020 11:56:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=cnCjYRNqnIWIP18OeomXg3bwbUwwai9RTXGWxuiPisM=;
 b=ALqaq4PTH00unplMpME8tHNS9X8OOg0HZP+6krndLVEy3yDxsNEaOV4vVyY8q8Fti5
 4O4AtnePguod3q2M41EKFibv5iB8M7hHbPbIrBjfsqhQpooXd8EKR1TrrjjzDvw/Xeew
 hEB8IW35mX1RqWqmpi8YOMl9I6uokLGDjt3ruBw8JF8JQC/sMjxUKjBkuffH4rJ7RjB3
 M7ZPw6T04iUnGtW8UP15nFSRpJeWfHczhmgTsAL4E1YvlvTBzhLv3GNJPAe4unZn+Tnt
 C6/OYIzePv46E4dDXmKTHHdwrq/UTfrpvvzda/E+tNHKgot3RlFQESu7Q3qIGU243aNb
 AdwA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=cnCjYRNqnIWIP18OeomXg3bwbUwwai9RTXGWxuiPisM=;
 b=rScxmXzCa4z4fBHacQKL+Lc47hE+UuQPOKUBAKVP8DyhqNGj3Lqi7shqNGgEMenntq
 1MfoMvCXhAvZGBIlQd6TWm7yO5N6GSIKHxtr0CquW27/iIVf/Ww4cFlofFFPppaACX/r
 6NVTeICyXgIWxrG4kiIMV+xtvGLxbrFxHO20SHa5uzW7YgVMqSP1SC9tHtj5Yktri1Ex
 Kc9+2lfO7fpzbLVNEInppl1F0sH6rj2pSR7+EYuZGTMxVL9qID2AU+wbjcyrfoKari7y
 YcCgznmYpoL1O9KthjxsgT3zCzTfoJ/ng2mKx82Lj2jg2IS/CLRePL3mvgwI8Ld5ZDUm
 GGkg==
X-Gm-Message-State: AOAM533Y94WgXw5lw4SzjtdvpGYQC1RsK5eEoIYPnrZjXrewDrenh3zz
 CLeD5nIeUcdGwqmPcmIzdhE=
X-Google-Smtp-Source: ABdhPJwM0nZXjFTUA6Gu1ic4tZKtq34l0GN5uN2AmSKK9x4JC23Z80/h4Ruxh+6rcP7KVA2kwHoKGQ==
X-Received: by 2002:a17:907:408c:: with SMTP id
 nt20mr13149049ejb.503.1596394608593; 
 Sun, 02 Aug 2020 11:56:48 -0700 (PDT)
Received: from localhost.localdomain ([2001:8f8:1821:5abb:3429:e2f4:15c4:b960])
 by smtp.gmail.com with ESMTPSA id f23sm2264270ejd.30.2020.08.02.11.56.46
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 02 Aug 2020 11:56:48 -0700 (PDT)
From: Mohammed Rushad <mohammedrushad@gmail.com>
To: gregkh@linuxfoundation.org, vkor@vkten.in, hdegoede@redhat.com,
 Larry.Finger@lwfinger.net, john.oldman@polehill.co.uk, yanaijie@huawei.com
Subject: [PATCH] staging: rtl8723bs: os_dep: fix coding style issue in
 xmit_linux.c
Date: Mon,  3 Aug 2020 00:26:44 +0530
Message-Id: <20200802185644.19674-1-mohammedrushad@gmail.com>
X-Mailer: git-send-email 2.17.1
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

This is a patch to the xmit_linux.c file that fixes brace and missing
line warning found by checkpatch.pl tool

Signed-off-by: Mohammed Rushad <mohammedrushad@gmail.com>
---
 drivers/staging/rtl8723bs/os_dep/xmit_linux.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/rtl8723bs/os_dep/xmit_linux.c b/drivers/staging/rtl8723bs/os_dep/xmit_linux.c
index fec8a8caaa46..b199d355e568 100644
--- a/drivers/staging/rtl8723bs/os_dep/xmit_linux.c
+++ b/drivers/staging/rtl8723bs/os_dep/xmit_linux.c
@@ -148,13 +148,13 @@ static int rtw_mlcst2unicst(struct adapter *padapter, struct sk_buff *skb)
 	/* free sta asoc_queue */
 	while (phead != plist) {
 		int stainfo_offset;
+
 		psta = LIST_CONTAINOR(plist, struct sta_info, asoc_list);
 		plist = get_next(plist);
 
 		stainfo_offset = rtw_stainfo_offset(pstapriv, psta);
-		if (stainfo_offset_valid(stainfo_offset)) {
+		if (stainfo_offset_valid(stainfo_offset))
 			chk_alive_list[chk_alive_num++] = stainfo_offset;
-		}
 	}
 	spin_unlock_bh(&pstapriv->asoc_list_lock);
 
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
