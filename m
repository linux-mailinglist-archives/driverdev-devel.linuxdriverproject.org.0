Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id ECF0E1A63F5
	for <lists+driverdev-devel@lfdr.de>; Mon, 13 Apr 2020 10:06:04 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 4B4EB203EE;
	Mon, 13 Apr 2020 08:06:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id fgFgmW68cB1w; Mon, 13 Apr 2020 08:06:02 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id C98E22001C;
	Mon, 13 Apr 2020 08:06:00 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id AF4FD1BF3D8
 for <devel@linuxdriverproject.org>; Mon, 13 Apr 2020 08:05:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id AC59B8659B
 for <devel@linuxdriverproject.org>; Mon, 13 Apr 2020 08:05:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id LEAUWs9bomkj for <devel@linuxdriverproject.org>;
 Mon, 13 Apr 2020 08:05:58 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f65.google.com (mail-wm1-f65.google.com
 [209.85.128.65])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 06D0D87111
 for <devel@driverdev.osuosl.org>; Mon, 13 Apr 2020 08:05:57 +0000 (UTC)
Received: by mail-wm1-f65.google.com with SMTP id d77so8598558wmd.3
 for <devel@driverdev.osuosl.org>; Mon, 13 Apr 2020 01:05:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=pF3os/zIvJX+FxOE+3LXE7wUPykZDFerUtI/+GJzXq4=;
 b=eQUAZWLFUuw+i5lPKOUDRRGyhb4POIW1/mU/kKyDEUPZakUEZYiYBl9io2BD8+fUQc
 8s9XF4/u392LD16GU6Zf8IiW2322rtyc4y/YIBfUdDDRj+6zh/fTbILbG84lQiiC9Dmk
 AhPQChC6pumuVGguYWznU5KAP1KwgS7k68x09Jef7LlFdIVbALgGNB1uuzmQ7VeTIo7y
 puluWgntI/gSdajBI2t9AcV2wXJHeqvbFLXQYhMW+a16Mu7eBEyIpTMEZ1yELCI2A/8M
 6ABws4YNAmC3lqXYesPlebDNTLNWT5dJa1GsYyzipIO3wy7ntLjgcI9A8Ey+5nYFUXuH
 k9CQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=pF3os/zIvJX+FxOE+3LXE7wUPykZDFerUtI/+GJzXq4=;
 b=mz0E2GV1jN3lkKV+0fsmquR/L4hYZp/NPQI7WI91Icy9oEUq0LErA3gQLK6nOzaF2z
 eULKCeIq7Z4VIo/MdLUx2MfNj3VmbBCknazLx6QSKwSyE6PHWC8hZ09PBE4WNriRLbat
 YaiUqJ/Nln6mggigEeMIQgEgUzgi9vyjtRJEvw1KJavNzADfWGNxBhjF8mE209vpE/qx
 ML8O/dAy1nSUqAqKcT+0oPMncTaJZ5I/V7jUms03bQNKxKIQ85KNT2spokSztbYyLqvI
 zaTf/mtPC7Znz45gU9SaiKO08Ww2u7/KuiQcx2iTjXMx0o/9wKWghzBuAP32TX5sz8YS
 uUCg==
X-Gm-Message-State: AGi0PubfWE2s8Ulnbz9NUOSvGfwIYit+P8OcB7DuFTsyjTe/13bpBrlO
 9j3gMQLmgSk//XBWlgah7Dg=
X-Google-Smtp-Source: APiQypLNndLmyzXn/0Rdm9JTfoVXrXepFBHuEFg9lZbLD1HxF7imHbvanJtQQ4bhSGkLyndLHsN53w==
X-Received: by 2002:a1c:8106:: with SMTP id c6mr17348218wmd.88.1586765156226; 
 Mon, 13 Apr 2020 01:05:56 -0700 (PDT)
Received: from localhost.localdomain ([31.4.236.192])
 by smtp.gmail.com with ESMTPSA id k3sm13669900wmf.16.2020.04.13.01.05.54
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 13 Apr 2020 01:05:55 -0700 (PDT)
From: carlosteniswarrior@gmail.com
To: gregkh@linuxfoundation.org
Subject: [PATCH] Staging: Comedi: Drivers: das08: Fixed some coding style
 issues
Date: Mon, 13 Apr 2020 10:05:55 +0200
Message-Id: <20200413080555.29267-1-carlosteniswarrior@gmail.com>
X-Mailer: git-send-email 2.26.0
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
Cc: devel@driverdev.osuosl.org,
 Carlos Guerrero Alvarez <carlosteniswarrior@gmail.com>,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Fixed a coding style issue caused by some declarations that weren't separated.

Signed-off-by: Carlos Guerrero Alvarez <carlosteniswarrior@gmail.com>
---
 drivers/staging/comedi/drivers/das08.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/staging/comedi/drivers/das08.c b/drivers/staging/comedi/drivers/das08.c
index 65e5f2e6c122..f884f5841788 100644
--- a/drivers/staging/comedi/drivers/das08.c
+++ b/drivers/staging/comedi/drivers/das08.c
@@ -141,7 +141,9 @@ static const struct comedi_lrange *const das08_ai_lranges[] = {
 static const int das08_pgh_ai_gainlist[] = {
 	8, 0, 10, 2, 12, 4, 14, 6, 1, 3, 5, 7
 };
+
 static const int das08_pgl_ai_gainlist[] = { 8, 0, 2, 4, 6, 1, 3, 5, 7 };
+
 static const int das08_pgm_ai_gainlist[] = { 8, 0, 10, 12, 14, 9, 11, 13, 15 };
 
 static const int *const das08_ai_gainlists[] = {
-- 
2.26.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
