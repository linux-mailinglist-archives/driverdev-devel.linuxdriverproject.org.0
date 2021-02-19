Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A50731F34B
	for <lists+driverdev-devel@lfdr.de>; Fri, 19 Feb 2021 01:22:16 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id B531D86FC2;
	Fri, 19 Feb 2021 00:22:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id BbeA1v3hsmWu; Fri, 19 Feb 2021 00:22:13 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 6ADEC86CEA;
	Fri, 19 Feb 2021 00:22:10 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 1F1131C113E
 for <devel@linuxdriverproject.org>; Fri, 19 Feb 2021 00:22:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 0F1536059B
 for <devel@linuxdriverproject.org>; Fri, 19 Feb 2021 00:22:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id j6gGeRbOJgoD for <devel@linuxdriverproject.org>;
 Fri, 19 Feb 2021 00:22:07 +0000 (UTC)
Received: by smtp3.osuosl.org (Postfix, from userid 1001)
 id 64E3460690; Fri, 19 Feb 2021 00:22:07 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail-pj1-f54.google.com (mail-pj1-f54.google.com
 [209.85.216.54])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 0F1016059B
 for <devel@driverdev.osuosl.org>; Fri, 19 Feb 2021 00:22:05 +0000 (UTC)
Received: by mail-pj1-f54.google.com with SMTP id kr16so2615950pjb.2
 for <devel@driverdev.osuosl.org>; Thu, 18 Feb 2021 16:22:05 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
 :content-disposition;
 bh=Fi3lkWmDbfwcEUbMyKdDvWBwmJ2EybxjUw9j5c75a9o=;
 b=SQGJmSJjET3e1Dwl91HJxmrLGIU6p5bnhtg+sTGKguTdgOIigMoDFdoE5TovmyEWhP
 cfH//xp0Xl6PwSY9/0916BJdpkxWIIEksXzuSIpUX4vlXNDb3ECo4pSEGHBhPM47hfP7
 qOpw3M4CxEr5QfhKkZKxpeOhCMZo0FwcsvoL9cIpgQMBHN6KfTctzfun/SUfhYLJB4Lw
 6naWNic90bzuS1vPQr6sdGXvGUU3ZhoZMNpwZbHSXJg3FzYR3+UruO+3QGDyQvM6djRk
 xXW9/3c1ZRkLRhZ0djB4MflEk7LiQON4S76jJzPT+77PxlmEt6oxmOQfCha02j90Xjwa
 8hZw==
X-Gm-Message-State: AOAM533TySgQP69ndWL+FQi30S0uYrPqLZPvzyLEokJRhPlQz+ju4AZt
 Dx0Islqfa7vm5gOBMPovLY0=
X-Google-Smtp-Source: ABdhPJzXj0ujLA8CBLnyVfKWNJix0HkkUPqXGCuTNHkObdRGdYHeows4ZIX7h1jjdA0bH6//g446Ww==
X-Received: by 2002:a17:903:141:b029:e3:9ade:bbe5 with SMTP id
 r1-20020a1709030141b02900e39adebbe5mr6594391plc.6.1613694125431; 
 Thu, 18 Feb 2021 16:22:05 -0800 (PST)
Received: from karthik-strix-linux.karthek.com ([192.140.154.17])
 by smtp.gmail.com with ESMTPSA id 11sm6944525pgz.22.2021.02.18.16.22.01
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 18 Feb 2021 16:22:04 -0800 (PST)
Date: Fri, 19 Feb 2021 05:51:59 +0530
From: karthik alapati <mail@karthek.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Lee Jones <lee.jones@linaro.org>,
 Johannes Berg <johannes@sipsolutions.net>, Arnd Bergmann <arnd@arndb.de>
Subject: [PATCH] use explicit host byte-order types in comparison
Message-ID: <YC8EpxR+ZVYQlshH@karthik-strix-linux.karthek.com>
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

convert le32 types to host byte-order types before
comparison

Signed-off-by: karthik alapati <mail@karthek.com>
---
i wonder how these could be false-positives
 drivers/staging/wimax/i2400m/fw.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/wimax/i2400m/fw.c b/drivers/staging/wimax/i2400m/fw.c
index edb5eba0898b..13207c985a87 100644
--- a/drivers/staging/wimax/i2400m/fw.c
+++ b/drivers/staging/wimax/i2400m/fw.c
@@ -191,7 +191,7 @@ void i2400m_bm_cmd_prepare(struct i2400m_bootrom_header *cmd)
 		int i;
 		u32 checksum = 0;
 		const u32 *checksum_ptr = (void *) cmd->payload;
-		for (i = 0; i < cmd->data_size / 4; i++)
+		for (i = 0; i < le32_to_cpu(cmd->data_size) / 4; i++)
 			checksum += cpu_to_le32(*checksum_ptr++);
 		checksum += cmd->command + cmd->target_addr + cmd->data_size;
 		cmd->block_checksum = cpu_to_le32(checksum);
@@ -506,7 +506,7 @@ ssize_t __i2400m_bm_ack_verify(struct i2400m *i2400m, int opcode,
 			opcode, i2400m_brh_get_response(ack));
 		goto error_ack_failed;
 	}
-	if (ack_size < ack->data_size + sizeof(*ack)) {
+	if (ack_size < le32_to_cpu(ack->data_size) + sizeof(*ack)) {
 		dev_err(dev, "boot-mode cmd %d: SW BUG "
 			"driver provided only %zu bytes for %zu bytes "
 			"of data\n", opcode, ack_size,
-- 
2.30.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
