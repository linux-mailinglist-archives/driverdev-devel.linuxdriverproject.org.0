Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4155D31A7E7
	for <lists+driverdev-devel@lfdr.de>; Fri, 12 Feb 2021 23:51:04 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 247F0876D8;
	Fri, 12 Feb 2021 22:51:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id tMK-sDZvePkC; Fri, 12 Feb 2021 22:51:01 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 90201876A0;
	Fri, 12 Feb 2021 22:51:01 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 7A0D11BF38C
 for <devel@linuxdriverproject.org>; Fri, 12 Feb 2021 22:50:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 727168712F
 for <devel@linuxdriverproject.org>; Fri, 12 Feb 2021 22:50:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id r-jd-bAB3WSE for <devel@linuxdriverproject.org>;
 Fri, 12 Feb 2021 22:50:59 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f52.google.com (mail-wm1-f52.google.com
 [209.85.128.52])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id D07618701E
 for <devel@driverdev.osuosl.org>; Fri, 12 Feb 2021 22:50:38 +0000 (UTC)
Received: by mail-wm1-f52.google.com with SMTP id s3so7219wmh.0
 for <devel@driverdev.osuosl.org>; Fri, 12 Feb 2021 14:50:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:mime-version:content-disposition
 :user-agent; bh=ZIZJUfWDlLORZK0UXURRJwtXDOvF3/jQeszDnimKc2E=;
 b=rMe/f+6Wi0FPeWZA22QaFAmu9kaQhQ1C4+kXcJFAhQQgPt8r/YToV8xZiq/IKOXZU3
 ZQekgBLPss06rneV8ThwH5XSAoRzVQekXOdFxigbbkhQzuSVhs46AHq1dtED0VcWOtLG
 A9+G2BV/WrDJbvtxeaFLDyjgFwpQellcvuoQ2B+nIey/iH+JrmpzSiyXCxMjNYlerWDY
 2FpErKLulT/bPLUppXFkflcPkPu4tIJYON9+7tzEi89bi0jZj9TzFrTlnqH2a6Rlh0zl
 iWPQQwNVqU00Y5nGv10BLP8k4PTfW7v8hYAgm1Fym9Q5VvbUF5UOikz/WUDpMgpcpnKm
 JmmQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=ZIZJUfWDlLORZK0UXURRJwtXDOvF3/jQeszDnimKc2E=;
 b=YBLFFbZELe2e1rcCLQMpwOvnrziVJa78KqbqM7KwOsy2lriIEIqpHALDXMxSsGfaT/
 AA/dXJIQetVncIX8YX/yPd/y1BchuPSTJwdlDxbdNnCJbR3C+eS/z7TswiEEZi8U1q+U
 WISgEFV6UJ78FhuayCn4kvCiOigrOKUdYCYAnxfBEYAWIViAd/9DMPu+lGPTctZDxvl8
 i+c3OLLtA00w+26qx+kfHqXFviXdUW/gEVU42IUOE3VrZzAffasy1qd6RscnNoyQ0gRf
 hiXg6NM39lQO9So0HBqWB9KbC/YRMZZEOrkivWNlE7aa6cxrfB60vL7pXyPoCtPvXTfi
 Tftg==
X-Gm-Message-State: AOAM533zuhvMjlfQYVDjjvR5WWE/2RCekId68TpVVa4WWuKi+zZV3wmX
 qYpt/y6QsrxJk2Px1pZXEOk=
X-Google-Smtp-Source: ABdhPJy0ReC4VJ99s5vEC716BPZHdpScjenDjhzBUx63wtqEwRYuxt+tNDimGWIcv+rec+H8dtjN3A==
X-Received: by 2002:a05:600c:4f46:: with SMTP id
 m6mr4476965wmq.160.1613170237116; 
 Fri, 12 Feb 2021 14:50:37 -0800 (PST)
Received: from whach (x4dbd50ef.dyn.telefonica.de. [77.189.80.239])
 by smtp.gmail.com with ESMTPSA id l38sm14865052wmp.19.2021.02.12.14.50.36
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 12 Feb 2021 14:50:36 -0800 (PST)
Date: Sat, 13 Feb 2021 04:20:35 +0530
From: Manikantan Ravichandran <ravman1991@gmail.com>
To: vaibhav.sr@gmail.com, mgreer@animalcreek.com, johan@kernel.org,
 elder@kernel.org, gregkh@linuxfoundation.org
Subject: [PATCH] staging: greybus: minor code style fix
Message-ID: <20210212225035.GA16260@whach>
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
Cc: devel@driverdev.osuosl.org, greybus-dev@lists.linaro.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

checkpatch warning fix for string split across lines

Signed-off-by: Manikantan Ravichandran <ravman1991@gmail.com>
---
 drivers/staging/greybus/audio_manager_sysfs.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/greybus/audio_manager_sysfs.c b/drivers/staging/greybus/audio_manager_sysfs.c
index ab882cc49b41..fcd518f9540c 100644
--- a/drivers/staging/greybus/audio_manager_sysfs.c
+++ b/drivers/staging/greybus/audio_manager_sysfs.c
@@ -18,8 +18,8 @@ static ssize_t manager_sysfs_add_store(struct kobject *kobj,
 	struct gb_audio_manager_module_descriptor desc = { {0} };
 
 	int num = sscanf(buf,
-			"name=%" GB_AUDIO_MANAGER_MODULE_NAME_LEN_SSCANF "s "
-			"vid=%d pid=%d intf_id=%d i/p devices=0x%X o/p devices=0x%X",
+			"name=%" GB_AUDIO_MANAGER_MODULE_NAME_LEN_SSCANF
+			"s vid=%d pid=%d intf_id=%d i/p devices=0x%X o/p devices=0x%X",
 			desc.name, &desc.vid, &desc.pid, &desc.intf_id,
 			&desc.ip_devices, &desc.op_devices);
 
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
