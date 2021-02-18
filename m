Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id DDF9C31E877
	for <lists+driverdev-devel@lfdr.de>; Thu, 18 Feb 2021 11:29:03 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id CD847864A6;
	Thu, 18 Feb 2021 10:29:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id RoPfyX-7677h; Thu, 18 Feb 2021 10:29:01 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 8899486448;
	Thu, 18 Feb 2021 10:29:00 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id A0BC41BF2B9
 for <devel@linuxdriverproject.org>; Thu, 18 Feb 2021 10:28:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 9DAD286451
 for <devel@linuxdriverproject.org>; Thu, 18 Feb 2021 10:28:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id UUl4jHEj8Jhn for <devel@linuxdriverproject.org>;
 Thu, 18 Feb 2021 10:28:57 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pj1-f47.google.com (mail-pj1-f47.google.com
 [209.85.216.47])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 9BAB486448
 for <devel@driverdev.osuosl.org>; Thu, 18 Feb 2021 10:28:57 +0000 (UTC)
Received: by mail-pj1-f47.google.com with SMTP id my11so2670662pjb.1
 for <devel@driverdev.osuosl.org>; Thu, 18 Feb 2021 02:28:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:mime-version:content-disposition;
 bh=Y+cLMPGA1ovWbd6aZihF/dFMXZT41mz8HPHEusHOvRE=;
 b=nJcr/LSt0ixdNwqvQgze/hwDVq66IFQJomqsDqUvLovainOKHIdoapFNhkMpp38gmR
 st9HlD2OoGMhHlVSEuaRJ4BOoHm1pUThRRKW1aUpDUbySFhO+AAAdcjKv+sqKysMREI6
 Tycda8CKlbHeHsmhiCW1ARzMimX7d9ifUiozXYW0OJ3NLLGQP2uVwasMM88q8joF0+yz
 +HXB8V1ZDcDsuLxedxVTKaHVUW3eDpA/mJ5uuoeaCbBraZovrnnq+mbJgEP7ANmEzbBV
 QdpgDwJbbXBmLuwMeE2AumRqif86Bp3swM6XZmLL9vpqv3JtL7I0Xwl0bVW+wGuYz3xm
 A1ig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
 :content-disposition;
 bh=Y+cLMPGA1ovWbd6aZihF/dFMXZT41mz8HPHEusHOvRE=;
 b=OAxqgnE17k9A2gR0MIeJKb2vvDYR28a2DhyLK41xpO59TWUUoYYmrzrvY8Ib0/r+nT
 elnmvQTML9qHHtOeciVOVE/3kkAmG7kjm5D3sd9Efqthg4f4eSuaJpI1b6QZxcRyo5Ks
 OsQQPyZg1/+PByzM5DGV4xBNFBlaLtoqAKbj+qJxTiSTAXY8xr0awKf13D2rsZf1hhfr
 kuA8o3Iua0LETlkjMRZ6BZMOqBayJm29UPNpaveSPg7QZxDbpeYKedhANCpOAak1aZAZ
 aI38FNKJ5Inz5Sx89KhAwRIDxg2CT+LKrjRS5sY7ahsBZG+MBHLECqpWNs4NQnjhKYzd
 eGuQ==
X-Gm-Message-State: AOAM5322H3PPmW7EMr80R2zrwCmtf3r1wcJkLQ5+foXtvRTzrJ9YkVer
 HxoUfqPFQEgFEcc1ykFuYxpVqX+9n5KSnmJf
X-Google-Smtp-Source: ABdhPJyXFfWod8W9CGiCjVEvPDlmUemJyL0QZwm6apZ+Rs2UVDm96wFBZFmM+oxIwbAC9Ytio/3DqA==
X-Received: by 2002:a17:902:7b89:b029:e1:1b46:bcec with SMTP id
 w9-20020a1709027b89b02900e11b46bcecmr3641890pll.5.1613644137152; 
 Thu, 18 Feb 2021 02:28:57 -0800 (PST)
Received: from gmail.com ([2401:4900:3847:831e:5f3:b644:ce80:c8ab])
 by smtp.gmail.com with ESMTPSA id g68sm6271235pfb.29.2021.02.18.02.28.54
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 18 Feb 2021 02:28:56 -0800 (PST)
Date: Thu, 18 Feb 2021 15:58:51 +0530
From: Prakash Dubey <prakashdubey1999@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH] staging: fwserial: Fix alignment of function parameters
Message-ID: <20210218102851.GA20810@gmail.com>
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
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

This patch fixes the following checkpatch.pl check:

CHECK: Alignment should match open parenthesis

Signed-off-by: Prakash Dubey <prakashdubey1999@gmail.com>
---
 drivers/staging/fwserial/fwserial.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/fwserial/fwserial.c b/drivers/staging/fwserial/fwserial.c
index c368082aae1a..a92741b8b6c6 100644
--- a/drivers/staging/fwserial/fwserial.c
+++ b/drivers/staging/fwserial/fwserial.c
@@ -1318,8 +1318,8 @@ static int fwtty_break_ctl(struct tty_struct *tty, int state)
 	if (state == -1) {
 		set_bit(STOP_TX, &port->flags);
 		ret = wait_event_interruptible_timeout(port->wait_tx,
-					       !test_bit(IN_TX, &port->flags),
-					       10);
+							!test_bit(IN_TX, &port->flags),
+							10);
 		if (ret == 0 || ret == -ERESTARTSYS) {
 			clear_bit(STOP_TX, &port->flags);
 			fwtty_restart_tx(port);
-- 
2.25.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
