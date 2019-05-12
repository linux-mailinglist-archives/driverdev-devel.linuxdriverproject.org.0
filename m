Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 92BE31ABEE
	for <lists+driverdev-devel@lfdr.de>; Sun, 12 May 2019 13:33:04 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id D38B086101;
	Sun, 12 May 2019 11:33:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id rnPraSfZjWpm; Sun, 12 May 2019 11:33:01 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 2F376852FC;
	Sun, 12 May 2019 11:33:01 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 04DA81BF3E3
 for <devel@linuxdriverproject.org>; Sun, 12 May 2019 11:32:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id F385F852FC
 for <devel@linuxdriverproject.org>; Sun, 12 May 2019 11:32:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id eAoSwu+NfACs for <devel@linuxdriverproject.org>;
 Sun, 12 May 2019 11:32:52 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f194.google.com (mail-pf1-f194.google.com
 [209.85.210.194])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 1EA2084E27
 for <devel@driverdev.osuosl.org>; Sun, 12 May 2019 11:32:52 +0000 (UTC)
Received: by mail-pf1-f194.google.com with SMTP id t87so5642903pfa.2
 for <devel@driverdev.osuosl.org>; Sun, 12 May 2019 04:32:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:subject:message-id:mime-version:content-disposition
 :user-agent; bh=9f00UOD9NYVcNSwcRACXhgj+F1rjTUSAOxdcAQilGeM=;
 b=JRNU8ttkWu7WYhoYidiWjaf7gI8eubmh7Jdu0XhMfjo9ZJOXo7weoUF5vf5sHZHjSC
 +xY05/2mnT0IRHTMvwwIVeeD/7LLfrIGnoyQYmRnx3L+N5itN2vk5K6LjvbShE0UkYuw
 sZUWrmSizlJG+JD/HkOfAKinUMpTyfWH+aCmuVZScL3CubDfIxbqlDpoWl+XXCIP49Mp
 NNr2Bz8nsV8LEUcGFhsFQe7YChx71iySn5pxFd79GklhnbqUrT3MGedQBBSdqSvqegqS
 9HMIjmEXN7zy6ZHNAj7pZma3wElB0je+khcTsdjgd541Me0H0XyCTffHqwtcn9+wzewO
 qYQw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=9f00UOD9NYVcNSwcRACXhgj+F1rjTUSAOxdcAQilGeM=;
 b=lYZ1j+zgwZD6uhM8OwjMvR4cqX/NcPF2KgzCfSRXJz8ULHm+iuCrBxsz+Hdhfbz12L
 Q7ynSaplLkiNy6aJnlH/OmbnLNVIauslRrJ35aYGsS0H56nkHuxtnGkR3mki90ksvZ+0
 ur/hczcW1zKKde0u88HpX0QbR/X4Uibozl3g4iyVeYfooizylgHoKwCQ67EtvJt+qE7i
 TksFsZ9vcRKcNYtbG4P/OTvM+VacTJK/ae7Y+hvLhnQ+fv7Rd/dZxeVwfWB/E/FWcB4X
 94WrMRjvzuNR9quC9oewYgXsskNlkcSufAlxje7ZJKsqVnQ1cjqim1XOA1vDD8fXY5A3
 e2aA==
X-Gm-Message-State: APjAAAXc7SpXQNi6DnKVv+4tis5KwXuxbVjuAIWjPYuoRtrzFn8U9BTS
 U6c2oEwJcA4BKGHRE0OiroCafEh5
X-Google-Smtp-Source: APXvYqyGJVBBZgQTr9jm/+R79kKhJgnd51p0UtxYhjrxIAptXX2ztH88Uv5uVfzeY9KfD9VFeIAxuA==
X-Received: by 2002:a62:579b:: with SMTP id i27mr27587948pfj.205.1557660771833; 
 Sun, 12 May 2019 04:32:51 -0700 (PDT)
Received: from hari-Inspiron-1545 ([183.83.92.73])
 by smtp.gmail.com with ESMTPSA id s137sm12577493pfc.119.2019.05.12.04.32.48
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 12 May 2019 04:32:51 -0700 (PDT)
Date: Sun, 12 May 2019 17:02:45 +0530
From: Hariprasad Kelam <hariprasad.kelam@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Michael Straube <straube.linux@gmail.com>,
 Mamta Shukla <mamtashukla555@gmail.com>,
 Emanuel Bennici <benniciemanuel78@gmail.com>,
 Wen Yang <wen.yang99@zte.com.cn>, Jia-Ju Bai <baijiaju1990@gmail.com>,
 Hariprasad Kelam <hariprasad.kelam@gmail.com>,
 devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
 viswanath.barenkala@gmail.com
Subject: [PATCH] drivers: staging :rtl8723bs :os_dep Remove Unneeded variable
 ret
Message-ID: <20190512113245.GA2221@hari-Inspiron-1545>
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

drivers/staging/rtl8723bs/os_dep/ioctl_linux.c:2685:5-8: Unneeded
variable: "ret". Return "0" on line 3266

Signed-off-by: Hariprasad Kelam <hariprasad.kelam@gmail.com>
---
 drivers/staging/rtl8723bs/os_dep/ioctl_linux.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c b/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c
index e3d3569..3f1ab6e 100644
--- a/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c
+++ b/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c
@@ -2682,7 +2682,6 @@ static int rtw_dbg_port(struct net_device *dev,
                                struct iw_request_info *info,
                                union iwreq_data *wrqu, char *extra)
 {
-	int ret = 0;
 	u8 major_cmd, minor_cmd;
 	u16 arg;
 	u32 extra_arg, *pdata, val32;
@@ -3263,7 +3262,7 @@ static int rtw_dbg_port(struct net_device *dev,
 	}
 
 
-	return ret;
+	return 0;
 
 }
 
-- 
2.7.4

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
