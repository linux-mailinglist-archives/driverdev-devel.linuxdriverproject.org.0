Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 193F13190B4
	for <lists+driverdev-devel@lfdr.de>; Thu, 11 Feb 2021 18:13:59 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6B1E36F746
	for <lists+driverdev-devel@lfdr.de>; Thu, 11 Feb 2021 17:13:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id kVtatv7LXN_P for <lists+driverdev-devel@lfdr.de>;
	Thu, 11 Feb 2021 17:13:56 +0000 (UTC)
Received: by smtp3.osuosl.org (Postfix, from userid 1001)
	id 4C59A6F6AF; Thu, 11 Feb 2021 17:13:56 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id E075E6F4F8;
	Thu, 11 Feb 2021 17:13:40 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id C203C1BF471
 for <devel@linuxdriverproject.org>; Thu, 11 Feb 2021 17:13:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id B090E6F4F8
 for <devel@linuxdriverproject.org>; Thu, 11 Feb 2021 17:13:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 38f1AWbh6TXT for <devel@linuxdriverproject.org>;
 Thu, 11 Feb 2021 17:13:29 +0000 (UTC)
Received: by smtp3.osuosl.org (Postfix, from userid 1001)
 id 0439B6F501; Thu, 11 Feb 2021 17:13:29 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail-pg1-f178.google.com (mail-pg1-f178.google.com
 [209.85.215.178])
 by smtp3.osuosl.org (Postfix) with ESMTPS id B38646F4F8
 for <devel@driverdev.osuosl.org>; Thu, 11 Feb 2021 17:13:27 +0000 (UTC)
Received: by mail-pg1-f178.google.com with SMTP id o7so4354601pgl.1
 for <devel@driverdev.osuosl.org>; Thu, 11 Feb 2021 09:13:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=Qi5dlJeXBoemX5iO7YEWhEfhi78OE210fte5mk4LWgs=;
 b=hQjUZfAnudGNb+BBb3iyUWOIwEB34dY+8ZBLqnWLIDL/WOh5x5HS6wmp0ebDwZbOkv
 SGvMobMG2mwRVY8qpoYpTD1eb/u+3YF5pg2oZ9SfVKsvDPbNyUcxzODxfZujRWm52GhX
 4xGJH80DprzV7j12Urs0SAPvw7Szi6uE97R4sCe+Jl4x5H4c58jbMXPSVTfTd/Bew2nF
 iuvJwsI2omFzQIQOvAH9lZQ/wtCklaJZjMSSndTUKFXH2TchcjNk+fGXHZLF7k0433HS
 QyJp7THzPnsCXXoB5DVb4JxogwEdX9fX6Um1gG9guynHAqMTlkiy6daRlVaLz5AUXGkH
 /3EA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=Qi5dlJeXBoemX5iO7YEWhEfhi78OE210fte5mk4LWgs=;
 b=mdY0wXHMsFeq1+GvtaOzCCIYYq1zAoo+nUwU7pRQbP8htTjzCSxhP3IoOXz/5wUqKp
 hVe0m1M60Qotp95lJo+b5JET3NNjcu+6KPN7Js6xwsq6Q/AftMoaThrdhmUcw+0ui7Dw
 oXCMHzj8/h534AAfuWYX0qgXcCMiSgsCveHJhGMOICaU2HEKJqEX+656/64geETE53Yd
 nYnXBJqy//bjR4DfP//rCVPvtxILyqO9tMaCtfDDCAyvSZqNNb7WyPHwe8TUHOeiuJcg
 r8qeN3qqQhazIYWshHSy71njl6/c/zz5Xk/DfvSPsqLSYKyW6hRAaHR0u2wpQTuOtDnu
 Q+iQ==
X-Gm-Message-State: AOAM531kjajFv6EqBaL2JWquG0ITPylRxxXhYT9dUX9Mhbq4zkeN5Am/
 AFqPSfcV8iGcRzPbqtyTk/8=
X-Google-Smtp-Source: ABdhPJzRZ5kdFtTkawVkGfjcCsq4xlZFWD9oinm4Ggbnyak1VrXiQ7AkpIlrC5JEC7U+fdtDQGu8qw==
X-Received: by 2002:a62:2702:0:b029:1d1:b92a:ef2a with SMTP id
 n2-20020a6227020000b02901d1b92aef2amr8599546pfn.5.1613063606913; 
 Thu, 11 Feb 2021 09:13:26 -0800 (PST)
Received: from localhost.localdomain ([27.5.41.215])
 by smtp.gmail.com with ESMTPSA id 73sm6249494pfa.27.2021.02.11.09.13.23
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 11 Feb 2021 09:13:26 -0800 (PST)
From: Hemansh Agnihotri <hemanshagnihotri27@gmail.com>
To: gregkh@linuxfoundation.org, lee.jones@linaro.org,
 johannes@sipsolutions.net, kuba@kernel.org, arnd@arndb.de,
 mail@anirudhrb.com
Subject: [PATCH] staging: wimax: Fix some coding style problems
Date: Thu, 11 Feb 2021 22:43:20 +0530
Message-Id: <20210211171320.141928-1-hemanshagnihotri27@gmail.com>
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
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

This fixes checkpatch errors :- "else should follow close brace '}'",
"space required before the open parenthesis '('" and "spaces required
around that '?' (ctx:VxW)" in drivers/staging/wimax/i2400m/rx.c file.

Signed-off-by: Hemansh Agnihotri <hemanshagnihotri27@gmail.com>
---
 drivers/staging/wimax/i2400m/rx.c | 11 +++++------
 1 file changed, 5 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/wimax/i2400m/rx.c b/drivers/staging/wimax/i2400m/rx.c
index 5b3a85035f6a..8ea0bd039ed7 100644
--- a/drivers/staging/wimax/i2400m/rx.c
+++ b/drivers/staging/wimax/i2400m/rx.c
@@ -485,8 +485,7 @@ struct i2400m_roq_data {
  * store the sequence number (sn) and the cs (packet type) coming from
  * the RX payload header from the device.
  */
-struct i2400m_roq
-{
+struct i2400m_roq {
 	unsigned ws;
 	struct sk_buff_head queue;
 	struct i2400m_roq_log *log;
@@ -556,7 +555,7 @@ void i2400m_roq_log_entry_print(struct i2400m *i2400m, unsigned index,
 {
 	struct device *dev = i2400m_dev(i2400m);
 
-	switch(e->type) {
+	switch (e->type) {
 	case I2400M_RO_TYPE_RESET:
 		dev_err(dev, "q#%d reset           ws %u cnt %u sn %u/%u"
 			" - new nws %u\n",
@@ -1046,7 +1045,7 @@ void i2400m_rx_edata(struct i2400m *i2400m, struct sk_buff *skb_rx,
 			 ro_type, ro_cin, roq->ws, ro_sn,
 			 __i2400m_roq_nsn(roq, ro_sn), size);
 		d_dump(2, dev, payload, size);
-		switch(ro_type) {
+		switch (ro_type) {
 		case I2400M_RO_TYPE_RESET:
 			i2400m_roq_reset(i2400m, roq);
 			kfree_skb(skb);	/* no data here */
@@ -1346,7 +1345,7 @@ int i2400m_rx_setup(struct i2400m *i2400m)
 {
 	int result = 0;
 
-	i2400m->rx_reorder = i2400m_rx_reorder_disabled? 0 : 1;
+	i2400m->rx_reorder = i2400m_rx_reorder_disabled ? 0 : 1;
 	if (i2400m->rx_reorder) {
 		unsigned itr;
 		struct i2400m_roq_log *rd;
@@ -1365,7 +1364,7 @@ int i2400m_rx_setup(struct i2400m *i2400m)
 			goto error_roq_log_alloc;
 		}
 
-		for(itr = 0; itr < I2400M_RO_CIN + 1; itr++) {
+		for (itr = 0; itr < I2400M_RO_CIN + 1; itr++) {
 			__i2400m_roq_init(&i2400m->rx_roq[itr]);
 			i2400m->rx_roq[itr].log = &rd[itr];
 		}
-- 
2.30.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
