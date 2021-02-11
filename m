Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6409431888F
	for <lists+driverdev-devel@lfdr.de>; Thu, 11 Feb 2021 11:51:01 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 0BEE787580;
	Thu, 11 Feb 2021 10:50:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id SWPE5tf+vtdf; Thu, 11 Feb 2021 10:50:58 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 636998755C;
	Thu, 11 Feb 2021 10:50:58 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 964831BF4D5
 for <devel@linuxdriverproject.org>; Thu, 11 Feb 2021 10:50:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 8BB886F530
 for <devel@linuxdriverproject.org>; Thu, 11 Feb 2021 10:50:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id KJe-va0FRxpA for <devel@linuxdriverproject.org>;
 Thu, 11 Feb 2021 10:50:45 +0000 (UTC)
Received: by smtp3.osuosl.org (Postfix, from userid 1001)
 id 58CA26F5A3; Thu, 11 Feb 2021 10:50:43 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail-wm1-f50.google.com (mail-wm1-f50.google.com
 [209.85.128.50])
 by smtp3.osuosl.org (Postfix) with ESMTPS id D27AA6F530
 for <devel@driverdev.osuosl.org>; Thu, 11 Feb 2021 10:50:36 +0000 (UTC)
Received: by mail-wm1-f50.google.com with SMTP id i9so5269854wmq.1
 for <devel@driverdev.osuosl.org>; Thu, 11 Feb 2021 02:50:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:mime-version:content-disposition;
 bh=t7YihBQxYRS5RN6jojsfJMdgONSb0gB1jZLHcnUtfmU=;
 b=JxQaCBgQTgGeHQzJyczrS5ZQmlIiROaXTn+TAiFmlS2QSQnbEMQat3nkryp9ialTHI
 onM1aykeLwAl6wZVf6eQMdaxH6yNWy9qjOK6c39QOPfmLPY5WeLT/YpmyY/EESYGqtB3
 jZO5S+hBn01NH8zazACfvnBlfkBSa50L+B74BsrFxkFxnP8uUCg0I/sFy1qzqPkvETqj
 HeglHNZNcHrjhnu3CnZs9worLJgP4E2CTRAL6cvTI1PdapGKDKs1cVZhlpTo0A8fe+xm
 VXQ4WQ4svhjmD816h4jCYjY9OcquW4p3tUeBpD6VlDMaDb+4Wi86iyMt7qm69gSKBIpM
 Kvzg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
 :content-disposition;
 bh=t7YihBQxYRS5RN6jojsfJMdgONSb0gB1jZLHcnUtfmU=;
 b=k0oIvPI15pbQzUl06BZZMScg9EnqbK74PAssTqAyEvPT3KkxX86byQU4bryCvntSlK
 5EMQE4dZLXpl+r+ijJ7KaRq9vAgbByTft0wHuYCIBD7xsDBuXT0BExzJos0KayCHi8Gg
 fcQ/Fn67jJBGrYY188W7Oa/p0qnxGcUfdZELO5sRS07F5Z0a1EvLWmVL6oD9McjDACZ7
 omQ8M/sZfnX5P406gN/VLGqlNQJiibchjVFOOTBjJ3LJhapO0+cbpRtFYfPYIVc1AROZ
 Qy48QsPuvCDn9S8+i3UrnSUE3JmEePrnxr6uS0nAptv2Zu3fYSo+IhKzGlivOepbwGBQ
 JgNA==
X-Gm-Message-State: AOAM53165v7byZ/gBiTFsNYwuTU0+8h4WlDFXoQTybfwqX9Fn5pjA4CL
 oQbtrXastojTjggO72IHuZ4=
X-Google-Smtp-Source: ABdhPJwKhkASt6FipVvKwdf5qpPlgD+xcb35jFmko+dnjdHJJPmnL/CdJtS9+8zVjxeB1ajwi4CGVA==
X-Received: by 2002:a05:600c:4a09:: with SMTP id
 c9mr4414469wmp.91.1613040631942; 
 Thu, 11 Feb 2021 02:50:31 -0800 (PST)
Received: from LEGION ([27.255.58.138])
 by smtp.gmail.com with ESMTPSA id h12sm4565086wru.18.2021.02.11.02.50.29
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 11 Feb 2021 02:50:31 -0800 (PST)
Date: Thu, 11 Feb 2021 15:50:26 +0500
From: Muhammad Usama Anjum <musamaanjum@gmail.com>
To: jerome.pouiller@silabs.com, gregkh@linuxfoundation.org,
 devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Subject: [PATCH] staging: wfx: avoid defining array of flexible struct
Message-ID: <20210211105026.GA45458@LEGION>
MIME-Version: 1.0
Content-Disposition: inline
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
Cc: musamaanjum@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

In this particular case, the struct element is already flexible struct.
Thus struct element ie[] is ambiguous inside another struct. The members
of struct element ie aren't being accessed in code anywhere. The data of
u8 type is copied in it. So it has been changed to u8 ie[] to make the
sparse happy and code simple.

Warning from sparse:
drivers/stagingwfx/hif_tx.c: note: in included file (through drivers/stagingwfx/data_tx.h, drivers/staging//wfx/wfx.h):
drivers/staging//wfx/hif_api_cmd.h:103:26: warning: array of flexible structures

Signed-off-by: Muhammad Usama Anjum <musamaanjum@gmail.com>
---
 drivers/staging/wfx/hif_api_cmd.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/wfx/hif_api_cmd.h b/drivers/staging/wfx/hif_api_cmd.h
index 11bc1a58edae..58c9bb036011 100644
--- a/drivers/staging/wfx/hif_api_cmd.h
+++ b/drivers/staging/wfx/hif_api_cmd.h
@@ -100,7 +100,7 @@ struct hif_req_update_ie {
 	u8     reserved1:5;
 	u8     reserved2;
 	__le16 num_ies;
-	struct element ie[];
+	u8     ie[];
 } __packed;
 
 struct hif_cnf_update_ie {
-- 
2.25.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
