Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 9053C1DE2BE
	for <lists+driverdev-devel@lfdr.de>; Fri, 22 May 2020 11:17:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 0570E887BF;
	Fri, 22 May 2020 09:17:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id F3J4CVkbkrIG; Fri, 22 May 2020 09:17:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 42335887A5;
	Fri, 22 May 2020 09:17:11 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 0F02D1BF370
 for <devel@linuxdriverproject.org>; Fri, 22 May 2020 09:17:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 0B7D7893A3
 for <devel@linuxdriverproject.org>; Fri, 22 May 2020 09:17:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id aBs4A70nLIfZ for <devel@linuxdriverproject.org>;
 Fri, 22 May 2020 09:17:06 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f195.google.com (mail-pg1-f195.google.com
 [209.85.215.195])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 55B0C89381
 for <devel@driverdev.osuosl.org>; Fri, 22 May 2020 09:17:06 +0000 (UTC)
Received: by mail-pg1-f195.google.com with SMTP id d10so4748438pgn.4
 for <devel@driverdev.osuosl.org>; Fri, 22 May 2020 02:17:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=1xYKxvvZ1z74EVfTyWa+2nvhPJspgg6ccXHqA7I5bu4=;
 b=lFR172sQ2cEdHj7hwVMucNDHtLV8DAy6vN/j7W9x5leMGqmM1IRqm0xgH3fxFQbZ0X
 bB42pdtpgiTI2cV4jJ7nRlOPu9mw7/0txoLoFiCWCfgxE7UnVZ2ZyQqQz51rDFJDePlj
 GscTYfipqeM5XkGB255ziuF7hHr+PzpdJJJ7lPSjk4vslQSeHrVyXYxN9KrPN//xYTny
 MZgPCWk+b45XqPkreMPhSiuh55VwYi7xOYcP7LkgYgw+MbppOe+99HBxHkiOdv++IsrG
 GLfZAtaZpi/D8gO4yE7lsCizDjNq58I1ZAO3kxCoPlZnpqsp61H/fShw4Y3WuArFhkjR
 FUiA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=1xYKxvvZ1z74EVfTyWa+2nvhPJspgg6ccXHqA7I5bu4=;
 b=GDMnNT7RF8T1RReAIcb3KD3Xfvh0DLhZ+Lq7SqlvUMxwV7c+iukgzzyA3g2wXdbnNO
 WbMjtX743Jpv7DPQ/iz0wQAwPIY90ZoU8NqGiw6MDdLd3BhmAT55XP2YO+4KZbHpOEWY
 MlsA8EkYq4DPAvVxOVx5DQpmkvsxj6MCqQrvG+9Sr2obwpHYWiCwYLApJg0Z45EnJA3Q
 dRW9eBco8SYScfoxKEdFUzrewb8eRCkEWc53gKPb1FNjUW83NeUGOOUw/ZWcMcqcBJyg
 rZrS0Z44GfhzCe+Afhin/d/yWoRTJDyX5N5dkaxvCokJZvO5aOA3I0MXhLNDFiP9RJo1
 UUTg==
X-Gm-Message-State: AOAM532lFg6vpuItJ+V5nIumPeij5qUHNPv/nna+9/yuVUJJcbAntAEA
 8QVVlY5SX1EcH/2K8/e5NPE=
X-Google-Smtp-Source: ABdhPJwpZaaNYy7SGwVU4avF7WMe3u1BYvpK/nGnVS9yBCPYBmZ24ZIDsPkMcjAJwDSwg+GQJw16Pw==
X-Received: by 2002:a63:1615:: with SMTP id w21mr8174775pgl.217.1590139025750; 
 Fri, 22 May 2020 02:17:05 -0700 (PDT)
Received: from localhost.localdomain ([2409:4072:690:5767:49e2:74e6:c65c:429e])
 by smtp.gmail.com with ESMTPSA id m63sm6612872pfb.101.2020.05.22.02.17.00
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 22 May 2020 02:17:05 -0700 (PDT)
From: MugilRaj <dmugil2000@gmail.com>
To: 
Subject: [PATCH] taging: speakup: remove volatile
Date: Fri, 22 May 2020 14:46:28 +0530
Message-Id: <1590138989-6091-1-git-send-email-dmugil2000@gmail.com>
X-Mailer: git-send-email 2.7.4
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
Cc: devel@driverdev.osuosl.org, Kirk Reiser <kirk@reisers.ca>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, speakup@linux-speakup.org,
 linux-kernel@vger.kernel.org, MugilRaj <dmugil2000@gmail.com>,
 Samuel Thibault <samuel.thibault@ens-lyon.org>,
 Chris Brannon <chris@the-brannons.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

fix checkpatch.pl warning, which is Use of volatile is usually wrong: see
Documentation/process/volatile-considered-harmful.rst
Signed-off-by: MugilRaj <dmugil2000@gmail.com>
---
 drivers/staging/speakup/speakup_decext.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/speakup/speakup_decext.c b/drivers/staging/speakup/speakup_decext.c
index ddbb7e9..22baaeb 100644
--- a/drivers/staging/speakup/speakup_decext.c
+++ b/drivers/staging/speakup/speakup_decext.c
@@ -21,7 +21,7 @@
 #define SYNTH_CLEAR 0x03
 #define PROCSPEECH 0x0b
 
-static volatile unsigned char last_char;
+static unsigned char last_char;
 
 static void read_buff_add(u_char ch)
 {
-- 
2.7.4

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
