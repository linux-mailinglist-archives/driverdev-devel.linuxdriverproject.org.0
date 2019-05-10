Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id A582A196BE
	for <lists+driverdev-devel@lfdr.de>; Fri, 10 May 2019 04:39:13 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id B3FEC884FC;
	Fri, 10 May 2019 02:39:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 3UG2s-RfyNdq; Fri, 10 May 2019 02:39:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id D6C4288239;
	Fri, 10 May 2019 02:39:10 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 54AF11BF968
 for <devel@linuxdriverproject.org>; Fri, 10 May 2019 02:39:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 4E42888252
 for <devel@linuxdriverproject.org>; Fri, 10 May 2019 02:39:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id wkDVC764uZW5 for <devel@linuxdriverproject.org>;
 Fri, 10 May 2019 02:39:06 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f196.google.com (mail-pg1-f196.google.com
 [209.85.215.196])
 by hemlock.osuosl.org (Postfix) with ESMTPS id BC70A88239
 for <devel@driverdev.osuosl.org>; Fri, 10 May 2019 02:39:06 +0000 (UTC)
Received: by mail-pg1-f196.google.com with SMTP id z16so2205053pgv.11
 for <devel@driverdev.osuosl.org>; Thu, 09 May 2019 19:39:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:subject:message-id:mime-version:content-disposition
 :user-agent; bh=KlxDSnGXbNm8XMD67N/PB5Gqb9omE7jD432RyvZTRH4=;
 b=KEl11AVN2ASiGMBKu3GkFSZiIJTZ9Rsjtj0RB4lMikrNKk2swkczxZ7f+i3+B/9lUh
 lcK0THIBUlX47t2ho/ID8CyRYxqhSK/j+ehM6YOPV1b1ZZ95Z8CJMC1Vki1tICIu+nSt
 7O4Lc9cHYCanEluHk7Y3C3YG0Crp6peEY58ozVaqaxXLaCChFW2Qu9yPCZwZJrjBOSTc
 QQIquAIa4ND6ApfcHVAR1/XiL+ezdgAaGZsOdrG7xGHmAYRkQZQtUOalsE+n5fkLRhp3
 1Vq1YplkcHxeBTWJQcFG1Lfvm34gpQ8JH+lqEqryUxI8rDLhbhDvdrsnKKXiGMyNVjGI
 hSaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=KlxDSnGXbNm8XMD67N/PB5Gqb9omE7jD432RyvZTRH4=;
 b=WA98W5SqY6x61ekYRjYY3UyE6yHktzkqsTqy+K85kq/DVWlVKshWaIpcUejcllgHcR
 kMkYBgGqtB9h3o+VeH+QjhMcU0iMfd+BgtO8WHnG6PzwtCe1e7BpBeAY+u7rhJ6e069l
 QM/MFbz8jsOEYuSOrn8rm+ENpDZX8ruZxACdAsXgcbmtU+etMb43iIxte4hADG034hii
 FDtqns56JDz+jTogortOqfV6xvISeqIkosLvIFAWNqGjU0aNdFAwg3Jrk3eXNAmSuKLl
 ahUYHgcBFy4G4/0IUs2cv2SRDu0JRVMlrW+INZuwoSmWTCWptJCPn+AFf+DDzu6Itg2O
 Q7UA==
X-Gm-Message-State: APjAAAVwiT4C9pifnS0cSaaQqczVaY+2mBhNK3Ef6PyYuDq2KLPcmzcA
 pzcJVOH29FwExUtIFZByBTQ=
X-Google-Smtp-Source: APXvYqxME2jV6vhscQVnlbFqj2TvjyVBUlJwnAwJdiMMZPY6LJbG7DUrXD15+4nDQFO7qZH4PGPlxw==
X-Received: by 2002:a63:c509:: with SMTP id f9mr10477371pgd.143.1557455946352; 
 Thu, 09 May 2019 19:39:06 -0700 (PDT)
Received: from hari-Inspiron-1545 ([183.83.92.73])
 by smtp.gmail.com with ESMTPSA id c14sm4041719pgl.43.2019.05.09.19.39.03
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 09 May 2019 19:39:05 -0700 (PDT)
Date: Fri, 10 May 2019 08:09:00 +0530
From: Hariprasad Kelam <hariprasad.kelam@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Tim Collier <osdevtc@gmail.com>, Chris Opperman <eklikeroomys@gmail.com>,
 Hariprasad Kelam <hariprasad.kelam@gmail.com>,
 devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Subject: [PATCH] staging: wlan-ng: collect return status without variable
Message-ID: <20190510023900.GA4390@hari-Inspiron-1545>
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

err and result variables are declared to collect return status
of prism2_domibset_uint32.

Check return status in if loop and return directly.

Rearragne code such that we can avoid declaring these variables.

Signed-off-by: Hariprasad Kelam <hariprasad.kelam@gmail.com>
---
 drivers/staging/wlan-ng/cfg80211.c | 17 ++++++-----------
 1 file changed, 6 insertions(+), 11 deletions(-)

diff --git a/drivers/staging/wlan-ng/cfg80211.c b/drivers/staging/wlan-ng/cfg80211.c
index 8a862f7..5dad5ac 100644
--- a/drivers/staging/wlan-ng/cfg80211.c
+++ b/drivers/staging/wlan-ng/cfg80211.c
@@ -231,17 +231,12 @@ static int prism2_set_default_key(struct wiphy *wiphy, struct net_device *dev,
 {
 	struct wlandevice *wlandev = dev->ml_priv;
 
-	int err = 0;
-	int result = 0;
-
-	result = prism2_domibset_uint32(wlandev,
-		DIDMIB_DOT11SMT_PRIVACYTABLE_WEPDEFAULTKEYID,
-		key_index);
-
-	if (result)
-		err = -EFAULT;
-
-	return err;
+	if (prism2_domibset_uint32(wlandev,
+				   DIDMIB_DOT11SMT_PRIVACYTABLE_WEPDEFAULTKEYID,
+				   key_index))
+		return -EFAULT;
+	else
+		return 0;
 }
 
 static int prism2_get_station(struct wiphy *wiphy, struct net_device *dev,
-- 
2.7.4

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
