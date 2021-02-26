Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 28DAC32621F
	for <lists+driverdev-devel@lfdr.de>; Fri, 26 Feb 2021 12:48:22 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 90E074EFD5;
	Fri, 26 Feb 2021 11:48:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id BdNrd8nV0sNy; Fri, 26 Feb 2021 11:48:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id DA30A4EF23;
	Fri, 26 Feb 2021 11:48:17 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id F1BC31BF2A7
 for <devel@linuxdriverproject.org>; Fri, 26 Feb 2021 11:48:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id EB10A6F89B
 for <devel@linuxdriverproject.org>; Fri, 26 Feb 2021 11:48:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id qjpVUhHrhWC9 for <devel@linuxdriverproject.org>;
 Fri, 26 Feb 2021 11:48:06 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail-ed1-f51.google.com (mail-ed1-f51.google.com
 [209.85.208.51])
 by smtp3.osuosl.org (Postfix) with ESMTPS id AD6256F83A
 for <devel@driverdev.osuosl.org>; Fri, 26 Feb 2021 11:48:06 +0000 (UTC)
Received: by mail-ed1-f51.google.com with SMTP id w21so10581291edc.7
 for <devel@driverdev.osuosl.org>; Fri, 26 Feb 2021 03:48:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=p4qJGLkjE+ZTf4s2f/49t4kWBaGGOzuYYXQVPUg3WZI=;
 b=FlzAqwfzLgX8RhWInKuCrnVfD5WpWalYUibUel9W/M5vZ2DqQIy4OnCnl1dOLZoicD
 bSC+3Ku4ST/FPX4m4xELECRfA+GCzTkbdDmO/Q/ladLDX6D67VBhqtqeDEYx0OSnSHZs
 wKB3sYGwJ1O02aX1tp15QuI3ChyjfA04FxIfQa36ItsRPjU5+rKPDNE+PhmT2KgcCcdx
 0TSTw4fHiDnCH5SUrR2vRq7auZ5VgF3RNtgne2fqcgvr/l1+KssYUaAHiyM/u5pKD4Ew
 6P9Tpxc1SuhaEapi4HpqDpSJYZZ70ztf4zz4o0PAAk2tM3nZqfGLkmlopOqzKZLPjDcH
 8iuw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=p4qJGLkjE+ZTf4s2f/49t4kWBaGGOzuYYXQVPUg3WZI=;
 b=Tl8W+avNs9UDDuAF+SadUdH1XfvRrd0lDt56i3VXmF0UQq5745gCpvWVh0P0tQOExA
 HMXBv3RXrFg4PU8XB7ECp7TpP52XlKHTdzL7sw6v8rrUbhUVkTkdukxgaJSKa8ZUGWgS
 WCvlqwwsWXPZMO3H7cVFfaXREzC+ZD1cAJTfs8e9GINO9TWRTPvKbP1LjkFjn/ZiaUi6
 s0jn2JkSITsLhFb7fzviPaMIUd/zhD6TBibiz9Pc7RZYt1tcMPPRj59xHY2rqs1rEPjM
 1SBtDaaaVChv2o7SHPweMG+97Hpl8EedIBWcmor+CIZ8N3eVq6LeOnHgLNxGhr4TE7gh
 xl5g==
X-Gm-Message-State: AOAM531oznzeaBf4FYip6aeBKFZcwXD3vhfC6ZnqldknqpdNQAqIimpg
 0sGlW9H7j914yeSz24MjV2Q=
X-Google-Smtp-Source: ABdhPJzy2OC3XcGlKwr3feiGZ9P7GSKAcF8kyhJY8jSMNYfwjJzBJAHAE2kXrc/p2McMKovuTsJlzw==
X-Received: by 2002:aa7:d5c4:: with SMTP id d4mr2764010eds.49.1614340084754;
 Fri, 26 Feb 2021 03:48:04 -0800 (PST)
Received: from ubuntudesktop.lan (205.158.32.217.dyn.plus.net.
 [217.32.158.205])
 by smtp.gmail.com with ESMTPSA id t16sm5622442edi.60.2021.02.26.03.48.03
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 26 Feb 2021 03:48:04 -0800 (PST)
From: Lee Gibson <leegib@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH] staging: fwserial: minor coding style fix
Date: Fri, 26 Feb 2021 11:48:00 +0000
Message-Id: <20210226114800.316897-1-leegib@gmail.com>
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
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
 Lee Gibson <leegib@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Fixes this checkpatch warning
WARNING: Integer promotion: Using 'h' in '%04hx' is unnecessary

Signed-off-by: Lee Gibson <leegib@gmail.com>
---
 drivers/staging/fwserial/fwserial.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/fwserial/fwserial.c b/drivers/staging/fwserial/fwserial.c
index c368082aae1a..a020f533c982 100644
--- a/drivers/staging/fwserial/fwserial.c
+++ b/drivers/staging/fwserial/fwserial.c
@@ -2632,7 +2632,7 @@ static int fwserial_parse_mgmt_write(struct fwtty_peer *peer,
 
 	rcode = RCODE_COMPLETE;
 
-	fwtty_dbg(&peer->unit, "mgmt: hdr.code: %04hx\n", pkt->hdr.code);
+	fwtty_dbg(&peer->unit, "mgmt: hdr.code: %04x\n", pkt->hdr.code);
 
 	switch (be16_to_cpu(pkt->hdr.code) & FWSC_CODE_MASK) {
 	case FWSC_VIRT_CABLE_PLUG:
-- 
2.25.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
