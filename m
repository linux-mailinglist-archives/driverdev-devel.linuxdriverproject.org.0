Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id E7BBB193F99
	for <lists+driverdev-devel@lfdr.de>; Thu, 26 Mar 2020 14:19:04 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 880058916D;
	Thu, 26 Mar 2020 13:19:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id voiJdSdYROHJ; Thu, 26 Mar 2020 13:19:02 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id B1A2088F93;
	Thu, 26 Mar 2020 13:19:01 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id B92971BF316
 for <devel@linuxdriverproject.org>; Thu, 26 Mar 2020 13:18:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id A952A8681A
 for <devel@linuxdriverproject.org>; Thu, 26 Mar 2020 13:18:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id kXmFoccGPR2s for <devel@linuxdriverproject.org>;
 Thu, 26 Mar 2020 13:18:59 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f196.google.com (mail-pf1-f196.google.com
 [209.85.210.196])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 2184D86816
 for <devel@driverdev.osuosl.org>; Thu, 26 Mar 2020 13:18:59 +0000 (UTC)
Received: by mail-pf1-f196.google.com with SMTP id u68so2764391pfb.2
 for <devel@driverdev.osuosl.org>; Thu, 26 Mar 2020 06:18:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=MJkPkspqNdlTX6vjl/CVTE6MfOICpoMgsRanROYZDJA=;
 b=ZYY3K1M9iitRcd6EivzWhtByjMfUm2QC7nJEzEqvmNi2BHtKjw1D0VwPlxDevm8XOG
 KY4kQmj1iOIlds+/r4wrch6lekBHMbNitd3cN/kLcDufaa75xMkzl5e1KLXAArD4Gv8o
 aOHFBtR7LGGQraP4yoK3Dxc4XUQCbA/APDgYzaGcETq6t9ljs+za/0OUXM9I9YwQOnVE
 KDGylfbCV7K6CbpXLpGCAG5KVzrRjPD/B84860n66Go1yoP7Kp7UQIPada57eU/nWDJp
 xoJzQOGllCn8LGGI1ZT2HmvnQaeCdZgUUDKU7fFmm5bamNufQ7cX3qdULpaNNbSw3Gom
 toCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=MJkPkspqNdlTX6vjl/CVTE6MfOICpoMgsRanROYZDJA=;
 b=YSnzSIpIgiYEPRkTaT7f/8iDjXEzHHE8keDZEiNyQb6NQBXkUdLPph58dcIdeVJiso
 KEfifnJJ4aT2c/82JL8m25cdoLA5vibBNmVVhMFmxeSEcoOat0e1tLUnqsxT3cAs4AdU
 CAFOR9nC0brn3TPPcS0JprS5ZY8P3LO4iyq14hc4ytGylS3v10O4JqOolU0770Y609BY
 nElDOj+zWlD/W5TWtSyc2C5iSZt/ro1vff4FAw25lDs1ihCAtaRTaHfP1kZnYnYVFnjX
 nY35q0Sg44M9HI52xwPQw1q4lxWUMWZ/++B8YT/0UKP6G9inaHxh9Pw4E8sHXnFg/xt1
 S1hQ==
X-Gm-Message-State: ANhLgQ2N4gaBagp4eMldB0Ff0VzncjQFisvOtYAz1NGQ8SLvAHhBdY/i
 gF4/8tqq08H5P/lLhEJFyZc=
X-Google-Smtp-Source: ADFU+vv8m75ygmS8rrbmOipJ/tGjAPTnpiZRwqj+1WUUWC8ibM7gtgVFzk0L6TywhtjKUZljawW/4Q==
X-Received: by 2002:a63:2166:: with SMTP id s38mr8012574pgm.83.1585228738689; 
 Thu, 26 Mar 2020 06:18:58 -0700 (PDT)
Received: from localhost ([161.117.239.120])
 by smtp.gmail.com with ESMTPSA id h4sm1669270pgk.72.2020.03.26.06.18.57
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Thu, 26 Mar 2020 06:18:58 -0700 (PDT)
From: Qiujun Huang <hqjagain@gmail.com>
To: gregkh@linuxfoundation.org,
	osdevtc@gmail.com
Subject: [PATCH] staging: wlan-ng: fix use-after-free Read in
 hfa384x_usbin_callback
Date: Thu, 26 Mar 2020 21:18:50 +0800
Message-Id: <20200326131850.17711-1-hqjagain@gmail.com>
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
Cc: devel@driverdev.osuosl.org, Qiujun Huang <hqjagain@gmail.com>,
 anenbupt@gmail.com, linux-kernel@vger.kernel.org, hdanton@sina.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

We can't handle the case length > WLAN_DATA_MAXLEN.
Because the size of rxfrm->data is WLAN_DATA_MAXLEN(2312), and we can't
read more than that.

Thanks-to: Hillf Danton <hdanton@sina.com>
Reported-and-tested-by: syzbot+7d42d68643a35f71ac8a@syzkaller.appspotmail.com
Signed-off-by: Qiujun Huang <hqjagain@gmail.com>
---
 drivers/staging/wlan-ng/hfa384x_usb.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/staging/wlan-ng/hfa384x_usb.c b/drivers/staging/wlan-ng/hfa384x_usb.c
index b71756ab0394..7fe64fcd385d 100644
--- a/drivers/staging/wlan-ng/hfa384x_usb.c
+++ b/drivers/staging/wlan-ng/hfa384x_usb.c
@@ -3372,6 +3372,8 @@ static void hfa384x_int_rxmonitor(struct wlandevice *wlandev,
 	     WLAN_HDR_A4_LEN + WLAN_DATA_MAXLEN + WLAN_CRC_LEN)) {
 		pr_debug("overlen frm: len=%zd\n",
 			 skblen - sizeof(struct p80211_caphdr));
+
+		return;
 	}
 
 	skb = dev_alloc_skb(skblen);
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
