Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id BA8C5312764
	for <lists+driverdev-devel@lfdr.de>; Sun,  7 Feb 2021 21:25:13 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id AFDC086614;
	Sun,  7 Feb 2021 20:25:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Im2-6UFtc5W1; Sun,  7 Feb 2021 20:25:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id CB32F864E5;
	Sun,  7 Feb 2021 20:25:10 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id B91F31BF363
 for <devel@linuxdriverproject.org>; Sun,  7 Feb 2021 20:25:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id B57BC864E5
 for <devel@linuxdriverproject.org>; Sun,  7 Feb 2021 20:25:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id IEdhYf71ba8H for <devel@linuxdriverproject.org>;
 Sun,  7 Feb 2021 20:25:08 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lf1-f45.google.com (mail-lf1-f45.google.com
 [209.85.167.45])
 by whitealder.osuosl.org (Postfix) with ESMTPS id BBCA6863CC
 for <devel@driverdev.osuosl.org>; Sun,  7 Feb 2021 20:25:07 +0000 (UTC)
Received: by mail-lf1-f45.google.com with SMTP id v5so16893538lft.13
 for <devel@driverdev.osuosl.org>; Sun, 07 Feb 2021 12:25:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=p/vAPmh0R53an8nKm6BSYsJvWd5kBfpY7yHqH7Xhw7Y=;
 b=ReGGTWk2QE21HGEzGkzy9Bx/iONxHazIx4C0ngeYdV56APcL0fta50hXx92QoG+Dwh
 nh1Eyp+Hx4P78OXqPC/dDEQy82P1WnrzxQnw3lHYLeE9SF39hUr2kAbsQC4YuSowfVD7
 yH5W0ymi4jiSx3LEWWR/OD5zxoL2yJDG6uvQ4NtGHyU6Wf315r7QU9X/WyAYDXSKeSbU
 fCaGuNZ3lLwS9LFQ3FrQT9q8foVoz1YOijLXWh3YoOzG39cuVhiziXWiOcz6swIHlhSH
 plvw+DrXD8oJDPWQllNQvTEZxePrsck5rCi26njxcCzwk76AOu3zshBHLjubETwE2tZE
 Zm+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=p/vAPmh0R53an8nKm6BSYsJvWd5kBfpY7yHqH7Xhw7Y=;
 b=jyxtsllkxyDYgCw2V8mUti5FIXVoYl0N3EncRIHSGCr7LgxrG03C8/b1a66wbW/Awh
 1s5BSbs1WgS5Yz/7Zek7hL2lfjjPJGLirctaRKtQeD/H5DlqCiSfhqLJ8qiMQzx5wnNS
 ES+2x+bOw4uogS0ZorvmW7dmhPaaE1TevtXlFPVKwqVTQgBZbYmhhzXdMWsrLZ5o660V
 tsjXp3UgZfNykOLSH+1QJHJA0c38Tt45EJiHzwOzUED2sCmMG9ClYPYV/6HsPWurlCeN
 zffxXv5AK6A9J6vZnaE5hkI0K1m2RoOUbiDT0gvwaTogTxpfqHVZBzERMWFOZonpyluE
 0QVw==
X-Gm-Message-State: AOAM531o5mHyBSnswJI8VPNn5TUOdwSz9jwb1NP2GB+L5fCKiwXJKwAa
 NgTnKPa31+vG4J9sLuyjDtw=
X-Google-Smtp-Source: ABdhPJydNwkjiW3SmaSqHhHrZdhg8jYWcbm8Rq8paKZDWGlKEwpEN8R6puHe/7ZLWepGy3RRxoKfsg==
X-Received: by 2002:a19:7414:: with SMTP id v20mr8605075lfe.436.1612729505919; 
 Sun, 07 Feb 2021 12:25:05 -0800 (PST)
Received: from localhost.localdomain (h-158-174-22-164.NA.cust.bahnhof.se.
 [158.174.22.164])
 by smtp.gmail.com with ESMTPSA id b17sm1813044lfa.42.2021.02.07.12.25.04
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 07 Feb 2021 12:25:05 -0800 (PST)
From: Rikard Falkeborn <rikard.falkeborn@gmail.com>
To: Sven Van Asbroeck <TheSven73@gmail.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH] staging: fieldbus: arcx-anybus: constify static structs
Date: Sun,  7 Feb 2021 21:25:01 +0100
Message-Id: <20210207202501.9494-1-rikard.falkeborn@gmail.com>
X-Mailer: git-send-email 2.30.0
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
 Rikard Falkeborn <rikard.falkeborn@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Constify two static structs which are never modified, to allow the
compiler to put them in read-only memory.

The only usage of controller_attribute_group is to put its address in an
array of pointers to const struct attribute_group, and the only usage of
can_power_ops is to assign its address to the 'ops' field in the
regulator_desc struct, which is a pointer to const struct regulator_ops.

Signed-off-by: Rikard Falkeborn <rikard.falkeborn@gmail.com>
---
 drivers/staging/fieldbus/anybuss/arcx-anybus.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/fieldbus/anybuss/arcx-anybus.c b/drivers/staging/fieldbus/anybuss/arcx-anybus.c
index b5fded15e8a6..9af2e63050d1 100644
--- a/drivers/staging/fieldbus/anybuss/arcx-anybus.c
+++ b/drivers/staging/fieldbus/anybuss/arcx-anybus.c
@@ -185,7 +185,7 @@ static struct attribute *controller_attributes[] = {
 	NULL,
 };
 
-static struct attribute_group controller_attribute_group = {
+static const struct attribute_group controller_attribute_group = {
 	.attrs = controller_attributes,
 };
 
@@ -206,7 +206,7 @@ static int can_power_is_enabled(struct regulator_dev *rdev)
 	return !(readb(cd->cpld_base + CPLD_STATUS1) & CPLD_STATUS1_CAN_POWER);
 }
 
-static struct regulator_ops can_power_ops = {
+static const struct regulator_ops can_power_ops = {
 	.is_enabled = can_power_is_enabled,
 };
 
-- 
2.30.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
