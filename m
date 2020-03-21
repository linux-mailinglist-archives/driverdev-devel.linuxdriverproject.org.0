Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C08618E389
	for <lists+driverdev-devel@lfdr.de>; Sat, 21 Mar 2020 19:00:34 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 76C318764B;
	Sat, 21 Mar 2020 18:00:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id iqtG9u7qP3rh; Sat, 21 Mar 2020 18:00:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 72F2686E9E;
	Sat, 21 Mar 2020 18:00:31 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id E348D1BF5E0
 for <devel@linuxdriverproject.org>; Sat, 21 Mar 2020 18:00:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id DF3F288596
 for <devel@linuxdriverproject.org>; Sat, 21 Mar 2020 18:00:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id CnVdsGS-W7Z4 for <devel@linuxdriverproject.org>;
 Sat, 21 Mar 2020 18:00:28 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-oi1-f195.google.com (mail-oi1-f195.google.com
 [209.85.167.195])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 127CB88045
 for <devel@driverdev.osuosl.org>; Sat, 21 Mar 2020 18:00:28 +0000 (UTC)
Received: by mail-oi1-f195.google.com with SMTP id k8so10267171oik.2
 for <devel@driverdev.osuosl.org>; Sat, 21 Mar 2020 11:00:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=ivkv2AjL6EXVAa1JYs7mqBfNjeboYRMwbrEQs14HIno=;
 b=XbhPjDLqCGh82zEUMZDThrIXKM7go6EERt4wwRUgHEGU7U891rzFc+8rx1jwxWr/WY
 rS/phtqOqkTNUHrk5ojBOjv/5vNPCpBT0KoeVft/J48L62wicEj7hhJQ8Rbttajorukz
 b/ZStvRxaw7GRDvzZuXtik8U00GV8gZbsG8i0OOrCDtnLdMjIInV6GIT1dwb6rel1QQN
 9EmD3cUnXfY3dv70d5u9e5g8AhsXkMqGVBFCJORy88Z7KqJKNh4vutBJi27m1Fipv27m
 3U2Oh7A/yV+qW2alfABnunrQ/RLTGpLaWXFYyS5u1z4VjA+ZyRxgf6clZCjhyR37+pjb
 EHsQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
 :mime-version:content-transfer-encoding;
 bh=ivkv2AjL6EXVAa1JYs7mqBfNjeboYRMwbrEQs14HIno=;
 b=LhRv+8KGIZ2FyZrI7GCCn6skMO2LdwA6IUuS+9uyQWzcbT1HKW/+kI6nCz22M2D7Qa
 oXEvG+wmQDaov9ojv94tiAqvUp2VzjI9VqUIIayt9KCIk7PKoteiOVBaJNUR87X8WxWU
 V+JTfdsVaFNmVrBCeFhpE5Z2aSbih00wKmUeEVyb2QwnDLQiLJTcqjH/qEQznzTNrDU9
 Hr728RA1OiVTtlJpqetXZ6UHAgkEYuHdTWmvfuGFVESchs0KN8iiKXqWgoIZ8gtIIJRP
 CywwLGPbSOkXTCurcqmobAHBfn/LN130fvOeG5fnfKNbqh9NpGNJhTqzB17NNvioT2vp
 Q+8Q==
X-Gm-Message-State: ANhLgQ3Dfos/ymmQsBczQmqK5tFDveQ0uqKeOXDps0+nYGGyEkREfBan
 SzKpsvw/QYcWlAAIvJT3cJE=
X-Google-Smtp-Source: ADFU+vvd8OsdGBH2mOLpXI2e8IcKhXNKHRWEkIyD5UCURhyds+ifrpf9jikBmOCbTbWagq8VEVX+OQ==
X-Received: by 2002:aca:54ca:: with SMTP id
 i193mr11471900oib.163.1584813627142; 
 Sat, 21 Mar 2020 11:00:27 -0700 (PDT)
Received: from localhost.localdomain (cpe-24-31-245-230.kc.res.rr.com.
 [24.31.245.230])
 by smtp.gmail.com with ESMTPSA id u199sm3323892oif.25.2020.03.21.11.00.26
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 21 Mar 2020 11:00:26 -0700 (PDT)
From: Larry Finger <Larry.Finger@lwfinger.net>
To: gregkh@linuxfoundation.org
Subject: [PATCH] staging: rtl8188eu: Add ASUS USB-N10 Nano B1 to device table
Date: Sat, 21 Mar 2020 13:00:11 -0500
Message-Id: <20200321180011.26153-1-Larry.Finger@lwfinger.net>
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
Cc: devel@driverdev.osuosl.org, netdev@vger.kernel.org, kovi <zraetn@gmail.com>,
 Stable <stable@vger.kernel.org>, Larry Finger <Larry.Finger@lwfinger.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

The ASUS USB-N10 Nano B1 has been reported as a new RTL8188EU device.
Add it to the device tables.

Signed-off-by: Larry Finger <Larry.Finger@lwfinger.net>
Reported-by: kovi <zraetn@gmail.com>
Cc: Stable <stable@vger.kernel.org>
---
 drivers/staging/rtl8188eu/os_dep/usb_intf.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/staging/rtl8188eu/os_dep/usb_intf.c b/drivers/staging/rtl8188eu/os_dep/usb_intf.c
index b5d42f411dd8..b7f65026dba8 100644
--- a/drivers/staging/rtl8188eu/os_dep/usb_intf.c
+++ b/drivers/staging/rtl8188eu/os_dep/usb_intf.c
@@ -32,6 +32,7 @@ static const struct usb_device_id rtw_usb_id_tbl[] = {
 	/****** 8188EUS ********/
 	{USB_DEVICE(0x056e, 0x4008)}, /* Elecom WDC-150SU2M */
 	{USB_DEVICE(0x07b8, 0x8179)}, /* Abocom - Abocom */
+	{USB_DEVICE(0x0B05, 0x18F0)}, /* ASUS USB-N10 Nano B1 */
 	{USB_DEVICE(0x2001, 0x330F)}, /* DLink DWA-125 REV D1 */
 	{USB_DEVICE(0x2001, 0x3310)}, /* Dlink DWA-123 REV D1 */
 	{USB_DEVICE(0x2001, 0x3311)}, /* DLink GO-USB-N150 REV B1 */
-- 
2.25.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
