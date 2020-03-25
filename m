Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 84591193293
	for <lists+driverdev-devel@lfdr.de>; Wed, 25 Mar 2020 22:23:06 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 5EF81253F9;
	Wed, 25 Mar 2020 21:23:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id BSUqgckpzFXu; Wed, 25 Mar 2020 21:23:03 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 331432156E;
	Wed, 25 Mar 2020 21:23:03 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 10B051BF2C5
 for <devel@linuxdriverproject.org>; Wed, 25 Mar 2020 21:23:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 0D4D22156E
 for <devel@linuxdriverproject.org>; Wed, 25 Mar 2020 21:23:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id rLXPhNrmkWjo for <devel@linuxdriverproject.org>;
 Wed, 25 Mar 2020 21:23:00 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pj1-f66.google.com (mail-pj1-f66.google.com
 [209.85.216.66])
 by silver.osuosl.org (Postfix) with ESMTPS id 7FB1821543
 for <devel@driverdev.osuosl.org>; Wed, 25 Mar 2020 21:23:00 +0000 (UTC)
Received: by mail-pj1-f66.google.com with SMTP id g9so1548552pjp.0
 for <devel@driverdev.osuosl.org>; Wed, 25 Mar 2020 14:23:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:subject:message-id:mime-version:content-disposition
 :user-agent; bh=D50Ea1KkZKi7MRIpZ2tdbEpQFy9vwTNoscFn6swOS/0=;
 b=EMvoS3tq9nhI2rqp5Wg+ogOhZR97+iLl7eEsa2La3ApbUDZFA/dOSiObyzdlJ2ZPXK
 2OPPTjtyXsxvP4+WJXOzeABy4EuHuPtg7ffJfknHfk7CJ4s2GPVTYIiv/7FgypPBNg9L
 farz9a7IOdydKsycs7pw2emyg7iZ9+bz0rx+JjHp96HcmnElRd/TDAI2CzobHLjl+MeH
 BsI92ipo15AxcEp2HM/PsMDE8wRpApQfW5lYPVVqTrhHPOMJbMIoPM7muPZxdvrUDnMK
 c3AX+vGHZe6RcPSJ0IKwA5+oC4JPjL4939SEIbjKj2IDX8h+SDZsfdbw26BRKkmAQu1u
 jYOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=D50Ea1KkZKi7MRIpZ2tdbEpQFy9vwTNoscFn6swOS/0=;
 b=Zi4rMp+Zxk2eoTYBRwFYq0ybyr+wAD0vSpFUizVt6DKDcSt0wBAe/v5w4RsOyADuqy
 K4g6goqPk4WW9vPf1kpXB6qRBr95SVl2Amfi85AAKMIexP99/Bp4MAif/Ic2INS7vmNG
 3sPWXF++gMmD+FfKMwcE+oNwZl0hiFcJCCht193s3XabXJ0TQcwwPobT+3DmIpbH7Di1
 BR20gEGewbOMulnGUWltHk3/+i8reRrtj2j+28JX80faPWdVpy59fPtw5g8lBD1VDvbJ
 +UgUVZYpmhm9KEwKCnUPHhg2SJjS4ZeOlG7avWTEFFyNxJw89nYFHrorzsi/XYHkdkJm
 saIw==
X-Gm-Message-State: ANhLgQ2zi1SDu/aF9AVggAcT5M4XSrqUGvqY9tnLkF4PaH3ZmpS7Dgtp
 /p0vRp7S2c1IQiOgcsjMM/k=
X-Google-Smtp-Source: ADFU+vtGiKx+fvpLni/eId9KdGRM9bn4thszOD2hOrFGUDIqycCDJkcyspUHr6OuWqonoWDLtgHohg==
X-Received: by 2002:a17:902:7008:: with SMTP id
 y8mr5096140plk.279.1585171379953; 
 Wed, 25 Mar 2020 14:22:59 -0700 (PDT)
Received: from simran-Inspiron-5558 ([2409:4052:78f:bb47:8124:5e4b:ea06:7595])
 by smtp.gmail.com with ESMTPSA id s14sm77650pgl.4.2020.03.25.14.22.57
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 25 Mar 2020 14:22:58 -0700 (PDT)
Date: Thu, 26 Mar 2020 02:52:53 +0530
From: Simran Singhal <singhalsimran0@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
 outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: rtl8723bs: rtw_cmd: Compress lines for immediate
 return
Message-ID: <20200325212253.GA8175@simran-Inspiron-5558>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.9.4 (2018-02-28)
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

Compress two lines into a single line if immediate return statement is found.
It also removes variable cmd_obj as it is no longer needed.

It is done using script Coccinelle.
And coccinelle uses following semantic patch for this compression function:

@@
expression ret;
identifier f;
@@

-ret =
+return
     f(...);
-return ret;

Signed-off-by: Simran Singhal <singhalsimran0@gmail.com>
---
 drivers/staging/rtl8723bs/core/rtw_cmd.c | 6 +-----
 1 file changed, 1 insertion(+), 5 deletions(-)

diff --git a/drivers/staging/rtl8723bs/core/rtw_cmd.c b/drivers/staging/rtl8723bs/core/rtw_cmd.c
index 744b40dd4cf0..42b0ea8abd9c 100644
--- a/drivers/staging/rtl8723bs/core/rtw_cmd.c
+++ b/drivers/staging/rtl8723bs/core/rtw_cmd.c
@@ -362,11 +362,7 @@ int rtw_enqueue_cmd(struct cmd_priv *pcmdpriv, struct cmd_obj *cmd_obj)
 
 struct	cmd_obj	*rtw_dequeue_cmd(struct cmd_priv *pcmdpriv)
 {
-	struct cmd_obj *cmd_obj;
-
-	cmd_obj = _rtw_dequeue_cmd(&pcmdpriv->cmd_queue);
-
-	return cmd_obj;
+	return _rtw_dequeue_cmd(&pcmdpriv->cmd_queue);
 }
 
 void rtw_free_cmd_obj(struct cmd_obj *pcmd)
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
