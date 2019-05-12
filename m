Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id D9DED1AC08
	for <lists+driverdev-devel@lfdr.de>; Sun, 12 May 2019 14:25:01 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id ABCCD8657C;
	Sun, 12 May 2019 12:24:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id jGoaVBNpzHi4; Sun, 12 May 2019 12:24:58 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 0200C86132;
	Sun, 12 May 2019 12:24:57 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 071751BF41F
 for <devel@linuxdriverproject.org>; Sun, 12 May 2019 12:24:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 0168E22660
 for <devel@linuxdriverproject.org>; Sun, 12 May 2019 12:24:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 6n6AiVcd0S1G for <devel@linuxdriverproject.org>;
 Sun, 12 May 2019 12:24:55 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f196.google.com (mail-pg1-f196.google.com
 [209.85.215.196])
 by silver.osuosl.org (Postfix) with ESMTPS id 753EE2210F
 for <devel@driverdev.osuosl.org>; Sun, 12 May 2019 12:24:55 +0000 (UTC)
Received: by mail-pg1-f196.google.com with SMTP id a3so5303950pgb.3
 for <devel@driverdev.osuosl.org>; Sun, 12 May 2019 05:24:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:subject:message-id:mime-version:content-disposition
 :user-agent; bh=paH013GOd2gVWUwOGZuSguTs80alOhAT643zCT0EDfM=;
 b=uoIhMH+1+aCNFxqsoziGwT/juy8qi/hd+C1mYdyApJpsnp+/PXVXVOjJBCK9mh9EEl
 4H23uB+vzxw0zllM5Je0rZOcAA4Uuo5OrI1Jg2KL7kEJr2GzwOEeY7WC0zZScTOdMbtL
 OKOmjt4xGJLOQxPt37x/suDUmOQXRGws65PfopnmH9FT3ygPQEMXTJUel7iXcmPET3yo
 INxe1Q6HEEZO7qIyHbkzi7SynVgbg8OEk5uH7zKnMV8ND5rGqNm1Rl8rTPdpiwoJSIkr
 ZE61O2lMpFDHYgCaHnJq3fIQviy2NI3DRIURt1iJa9wfj8rWU4KF7ORlaAObFtSa5bKF
 KqKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=paH013GOd2gVWUwOGZuSguTs80alOhAT643zCT0EDfM=;
 b=lXQLyKWPIP/NVjiDXTYPWVVhZaRIAYFWUWW8ldNBDY5bm2k3ifJnV7ImguhKGVcxqY
 1ZWsdGBidon6NPMDIVF46I5oRx+/X1G3qjAiZ1WR5RGOnhn8eC8GUFT9SCgMKtp7zH43
 PwPhrmL0T2UsM+bQrmyRE2BXDLkaeGDw4KWdbXQdYe7fVmAVwCEZmN53Qer35lok8r5o
 hsTDyDTpgtLDZkgfhMLYBInI15mwkFRAcAVSi0Rpndfn21JKuVHnTvgLNIfj1f87b1CV
 kL3J+dk0gB0WqwudMI5Vjoh5VH73wcR/7mliiMAZdUgqjhh5oyVQYelH5DBW4e9xBB3b
 6Iwg==
X-Gm-Message-State: APjAAAUhopVmP1vmy/RbrCp3L1lNuOp6LTn8G/dtfeqz3z31jx/F/ij1
 56ViFYka6s/7Uw10doQ7NwQ=
X-Google-Smtp-Source: APXvYqxHUSVy5V9IPMXrfnx103n/CN+ISwfPJvPS1CuJ078l6q2X5AhsWDRQJn7Ac9+K69mL4m84ww==
X-Received: by 2002:a62:ae05:: with SMTP id q5mr26758604pff.13.1557663895110; 
 Sun, 12 May 2019 05:24:55 -0700 (PDT)
Received: from hari-Inspiron-1545 ([183.83.92.73])
 by smtp.gmail.com with ESMTPSA id q20sm19280391pfi.166.2019.05.12.05.24.51
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 12 May 2019 05:24:54 -0700 (PDT)
Date: Sun, 12 May 2019 17:54:49 +0530
From: Hariprasad Kelam <hariprasad.kelam@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Nishka Dasgupta <nishka.dasgupta@yahoo.com>,
 Hariprasad Kelam <hariprasad.kelam@gmail.com>,
 Colin Ian King <colin.king@canonical.com>, Arnd Bergmann <arnd@arndb.de>,
 Hardik Singh Rathore <hardiksingh.k@gmail.com>,
 Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>,
 Emanuel Bennici <benniciemanuel78@gmail.com>,
 devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
 viswanath.barenkala@gmail.com
Subject: [PATCH] staging: rtl8723bs: core fix warning  Comparison to bool
Message-ID: <20190512122449.GA28268@hari-Inspiron-1545>
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

fix below issue reported by coccicheck

drivers/staging/rtl8723bs/core/rtw_mlme.c:1675:6-10: WARNING: Comparison
to bool

Signed-off-by: Hariprasad Kelam <hariprasad.kelam@gmail.com>
---
 drivers/staging/rtl8723bs/core/rtw_mlme.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8723bs/core/rtw_mlme.c b/drivers/staging/rtl8723bs/core/rtw_mlme.c
index 5f78f1e..d26d8cf 100644
--- a/drivers/staging/rtl8723bs/core/rtw_mlme.c
+++ b/drivers/staging/rtl8723bs/core/rtw_mlme.c
@@ -1672,7 +1672,7 @@ void rtw_stadel_event_callback(struct adapter *adapter, u8 *pbuf)
 			roam_target = pmlmepriv->roam_network;
 		}
 
-		if (roam == true) {
+		if (roam) {
 			if (rtw_to_roam(adapter) > 0)
 				rtw_dec_to_roam(adapter); /* this stadel_event is caused by roaming, decrease to_roam */
 			else if (rtw_to_roam(adapter) == 0)
-- 
2.7.4

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
