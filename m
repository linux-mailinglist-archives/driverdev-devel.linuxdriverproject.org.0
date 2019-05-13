Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 025C11BE1B
	for <lists+driverdev-devel@lfdr.de>; Mon, 13 May 2019 21:38:25 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id E719E87877;
	Mon, 13 May 2019 19:38:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id sqObvjV2i6la; Mon, 13 May 2019 19:38:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 5BF2086F85;
	Mon, 13 May 2019 19:38:22 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 22E221BF3ED
 for <devel@linuxdriverproject.org>; Mon, 13 May 2019 19:38:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 1F9E28634E
 for <devel@linuxdriverproject.org>; Mon, 13 May 2019 19:38:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 2SpKhAd297Wz for <devel@linuxdriverproject.org>;
 Mon, 13 May 2019 19:38:19 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f196.google.com (mail-pl1-f196.google.com
 [209.85.214.196])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 6D7818632F
 for <devel@driverdev.osuosl.org>; Mon, 13 May 2019 19:38:19 +0000 (UTC)
Received: by mail-pl1-f196.google.com with SMTP id d21so6995767plr.3
 for <devel@driverdev.osuosl.org>; Mon, 13 May 2019 12:38:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:mime-version:content-disposition
 :user-agent; bh=9ARjkiz0r48V+mdDoA74X8g+NRgxY+xBVVqehLHawvc=;
 b=qyRsh9f7eJjB9fSRoh0ufZRfpptTS8DaZple8ren4XqwcKPfqMGOa2sSbIAgBdPZ+E
 t+WF8KplqyTd7J8K8F3C6hwEMx6LDAdLxqf/mD/hnDohlm16gCu1++eib5bhocuZ4Znr
 9NvjYeY/5JcGqydf9jzMV2FBcNpO1VmYKV1evEApYX6Kf0A55mPoG46waQ/SWTmpR2an
 h7zJWXCk2fo08dDmbqCGb9XdBQ62qJdMXC9IB7LTHcje+xLXh5Qui0w2hT43HQNndAxd
 YmOQi60JrC6lI9crIidhZ/Lfx392/yyscE/Z60P9qxFBMH+rvhIIeFKnz82b/ks+Af6f
 d5oQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=9ARjkiz0r48V+mdDoA74X8g+NRgxY+xBVVqehLHawvc=;
 b=iNa3i9vrycPmheSuFYuQbluhyQL2lrEpP331B0FYLYei8qqU/xQnI6x7mgc6/gRMHl
 zDCOyMqcNspXPpoTixjqDogaYod34rxbg0bb09AoX6Q0dfiRIlXg+zxVXXnY22Ibs9uc
 Tt58o3IH0OAgqivLtoKGSXDCJRarnC5hWpH/yveNn3/QiC1Ha6S/xM13feux/7Wxrkiq
 Beg1p8WTIaELJ2WTJ7+zrSzmLPXiEDsp5AcsPoKr/gBoh0MqKazmtNnjrtkSo5GuYAx3
 47XSYyw1w27/VkKqiLplPbwdy0cy0TVKrQ9b/+n9DL7xgCmSv1ui443ToDAXgAmLGMLW
 arKA==
X-Gm-Message-State: APjAAAV4BmIKJMlGIdv5Uh0U4xcYXrp8tP1fCU8s+7dlUob2qMCF+5CS
 yCAx4H//8ls7WkkTVUabu2E=
X-Google-Smtp-Source: APXvYqwB2Uvd0rIfPMcz9uN+AWlWFb2MMefN3LL37RAryTQYRgY7GWESDWvl0iqNxCUZxf31mi9Crg==
X-Received: by 2002:a17:902:be0e:: with SMTP id
 r14mr15655249pls.152.1557776298865; 
 Mon, 13 May 2019 12:38:18 -0700 (PDT)
Received: from arch ([2405:204:7102:1ca6:a53f:1f68:43dd:48ab])
 by smtp.gmail.com with ESMTPSA id g2sm21405884pfd.134.2019.05.13.12.38.15
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 13 May 2019 12:38:18 -0700 (PDT)
Date: Tue, 14 May 2019 01:08:11 +0530
From: Puranjay Mohan <puranjay12@gmail.com>
To: greg@kroah.com
Subject: [PATCH 1/5] Staging: rtl8192u: ieee80211: Fix coding style warning
Message-ID: <20190513193806.GA29194@arch>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.11.4 (2019-03-13)
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

Remove braces around a single if statement to fix following
checkpatch.pl warning.
WARNING: braces {} are not necessary for single statement blocks

Signed-off-by: Puranjay Mohan <puranjay12@gmail.com>
---
 drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c b/drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c
index 0e762e559675..bd97531a254f 100644
--- a/drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c
+++ b/drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c
@@ -2577,9 +2577,9 @@ static inline void ieee80211_process_probe_response(
 	spin_unlock_irqrestore(&ieee->lock, flags);
 	if (is_beacon(beacon->header.frame_ctl)&&is_same_network(&ieee->current_network, network, ieee)&&\
 		(ieee->state == IEEE80211_LINKED)) {
-		if (ieee->handle_beacon != NULL) {
+		if (ieee->handle_beacon != NULL)
 			ieee->handle_beacon(ieee->dev,beacon,&ieee->current_network);
-		}
+
 	}
 
 out:
-- 
2.21.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
