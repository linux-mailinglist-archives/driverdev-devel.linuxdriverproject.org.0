Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A4732DF205
	for <lists+driverdev-devel@lfdr.de>; Sat, 19 Dec 2020 23:44:02 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id B70A887640;
	Sat, 19 Dec 2020 22:43:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id GmObuP0n7v1x; Sat, 19 Dec 2020 22:43:59 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 1552D8760E;
	Sat, 19 Dec 2020 22:43:59 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 4560C1BF3BE
 for <devel@linuxdriverproject.org>; Sat, 19 Dec 2020 22:43:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 361AA86EC4
 for <devel@linuxdriverproject.org>; Sat, 19 Dec 2020 22:43:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id OXweRvJv72-G for <devel@linuxdriverproject.org>;
 Sat, 19 Dec 2020 22:43:55 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pj1-f50.google.com (mail-pj1-f50.google.com
 [209.85.216.50])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 944F686EBA
 for <devel@driverdev.osuosl.org>; Sat, 19 Dec 2020 22:43:55 +0000 (UTC)
Received: by mail-pj1-f50.google.com with SMTP id f14so3433603pju.4
 for <devel@driverdev.osuosl.org>; Sat, 19 Dec 2020 14:43:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=d7xAXTq6oLbMMb4o4VTUrJwgMbwIvvfYtXcld/9daYw=;
 b=W5XOrx7MV7X7mAciJ5Ggx747j7pcafuxRqe4ePHnrHA49kQ+bWJ2zJUmb68Nygvzqx
 yjj0jcxpLbwY85fBJv0Mdsgj09uh5wfBfAfXPLriju6UW63g7IBo0TaAk9NgqahZOy3V
 xBIbmYK+PSqs8VoAjgKi1PAJgU8BxWO9hrzK6xFOV0iKtsVWl1yQJ1NSzddLRIwTFirr
 0r/Cy2tRZgaI+1Ynghl8llYglJr7lNE6p69Z3V+dobl1EJrJM5xFn5yU9IH4KCwjzeIt
 wv1p/Fo7nJQDdBaCB9iQ6fDecVf8vP7dRnoUQIHk+lk9MBgtyrRWijw/OzJyOJoFsNjX
 8wjw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=d7xAXTq6oLbMMb4o4VTUrJwgMbwIvvfYtXcld/9daYw=;
 b=Rrj+ucoC07bBdrFjfI1mB1/lnUwPNYsQvPYr5N5n+gb1AdYoeurvj99n5IxsU+vGxg
 d3o1YEBt0QVuTttYT10qeYdDdKiayVC46fMNVgPHpoPoGfMFd1YkOLAa9eUGh6do/CrH
 5S68NOMWBsztitymoVSOviMkT0HfB/67Lc4dAteyN5quWTVWWEFVjBRtQC5qEnVu69Su
 Z+b0mu2joAAYmfZ6ZGpxN5gWDsFoqv/beRLolQQt0MiJWdFpMIKEuQGPhGEQbs1UZUdP
 2pfGDMiQEA2dPuy/daJIPqE8CXVPu/cH+qaHt1LMzvjuMUm800Ib6tYzwmGfJMELd2Pn
 00bg==
X-Gm-Message-State: AOAM531iSG3hAvsRtgb6Cs54FO99i03/zXunEkDBDnNPsPOYO5lCed3T
 THGRCE+3C3tWl16c7bu2UdU=
X-Google-Smtp-Source: ABdhPJz4l6IFPztYnmDHirOvj4UledmMCdc2lDgJ/roUSS6sJMS9j41xK6Bg8tIHWM7UlYGjAFEyfA==
X-Received: by 2002:a17:90b:fd5:: with SMTP id
 gd21mr11083670pjb.139.1608417835230; 
 Sat, 19 Dec 2020 14:43:55 -0800 (PST)
Received: from localhost.localdomain (c-24-16-167-223.hsd1.wa.comcast.net.
 [24.16.167.223])
 by smtp.gmail.com with ESMTPSA id c6sm12813346pgl.38.2020.12.19.14.43.54
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 19 Dec 2020 14:43:54 -0800 (PST)
From: Daniel West <daniel.west.dev@gmail.com>
To: Larry.Finger@lwfinger.net
Subject: [PATCH 8455/8455] staging: rtl8188eu: core: fixed a comment format
 issue.
Date: Sat, 19 Dec 2020 14:43:12 -0800
Message-Id: <20201219224312.380126-1-daniel.west.dev@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
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
Cc: devel@driverdev.osuosl.org, insafonov@gmail.com, gregkh@linuxfoundation.org,
 gustavoars@kernel.org, andrealmeidap1996@gmail.com,
 linux-kernel@vger.kernel.org, daniel.west.dev@gmail.com, yepeilin.cs@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Fixed a checkpatch warning:

WARNING: Block comments use * on subsequent lines
 #4595: FILE: drivers/staging/rtl8188eu/core/rtw_mlme_ext.c:4595:
+/****************************************************************************
+

The code is full of comments like this. Should the coding style
be inforced here, even when there is a logic to the way the code
was broken up?

Signed-off-by: Daniel West <daniel.west.dev@gmail.com>
---
 drivers/staging/rtl8188eu/core/rtw_mlme_ext.c | 9 ++++-----
 1 file changed, 4 insertions(+), 5 deletions(-)

diff --git a/drivers/staging/rtl8188eu/core/rtw_mlme_ext.c b/drivers/staging/rtl8188eu/core/rtw_mlme_ext.c
index 8794907a39f4..adf2788a416f 100644
--- a/drivers/staging/rtl8188eu/core/rtw_mlme_ext.c
+++ b/drivers/staging/rtl8188eu/core/rtw_mlme_ext.c
@@ -4591,11 +4591,10 @@ void mlmeext_sta_del_event_callback(struct adapter *padapter)
 	}
 }
 
-/****************************************************************************
-
-Following are the functions for the timer handlers
-
-*****************************************************************************/
+/*
+ *
+ *Following are the functions for the timer handlers
+ */
 
 static u8 chk_ap_is_alive(struct adapter *padapter, struct sta_info *psta)
 {
-- 
2.25.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
