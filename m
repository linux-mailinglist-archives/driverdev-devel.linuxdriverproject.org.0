Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id D969A320572
	for <lists+driverdev-devel@lfdr.de>; Sat, 20 Feb 2021 13:52:44 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id D614F8747F;
	Sat, 20 Feb 2021 12:52:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id kNHNfTw54Vya; Sat, 20 Feb 2021 12:52:42 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 4570387409;
	Sat, 20 Feb 2021 12:52:42 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 6DF3C1BF2C6
 for <devel@linuxdriverproject.org>; Sat, 20 Feb 2021 12:52:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 531CC839DD
 for <devel@linuxdriverproject.org>; Sat, 20 Feb 2021 12:52:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id WlZqRpadCvu8 for <devel@linuxdriverproject.org>;
 Sat, 20 Feb 2021 12:52:38 +0000 (UTC)
Received: by smtp1.osuosl.org (Postfix, from userid 1001)
 id 9C98E839E4; Sat, 20 Feb 2021 12:52:38 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail-pj1-f47.google.com (mail-pj1-f47.google.com
 [209.85.216.47])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 89623839DD
 for <devel@driverdev.osuosl.org>; Sat, 20 Feb 2021 12:52:37 +0000 (UTC)
Received: by mail-pj1-f47.google.com with SMTP id t9so660123pjl.5
 for <devel@driverdev.osuosl.org>; Sat, 20 Feb 2021 04:52:37 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
 :content-disposition;
 bh=I2x/1eBHyF4wxSC0+Ir6eONCS4VYMPs0yre9gwyu+Xo=;
 b=X4eaNijSN79xFL3C142y4CVcomdJ/HV2BC0uEOxMmtdL735m+hNw4kVjJ8A9fCWUUK
 eY2M6kVN6VsSXAAwYwxIFW/nioSFgpwSWyNI0VcPo6kEwRMT4+fLvFKwxZAL0GEb+dXp
 5ij0cJemw7IKwUf2t7vCNZiBcpL5BwYli28H7MEyTTuW02GMIfhIQFcWUhy7UNTqPAqj
 ayUfDeJV9OjpZU8YWru48WtYappui/I159WJhQlwYNTNRxxzDkRJSfjFZyam6eFF9nmo
 VwovXAo54l4CoPmOz/WfJOTPeOm0zMLFyyqJCJl5amfboCwBxyaa/lRS1IYBDKvtowtm
 LHjg==
X-Gm-Message-State: AOAM5303FOWDhkhpBHc1ZSAXOdDTMMu0t05YpyecEa6KaWk8CsSrktZj
 DYxx9Drx8zpku3hs0SSGW2w=
X-Google-Smtp-Source: ABdhPJzAjU5pE8VJGJgJCT8/48g7vz75+OPdFzZb8QRXU51H4wAg3VgWIx1CATA+2OZymwJwbsTuJw==
X-Received: by 2002:a17:90a:5793:: with SMTP id
 g19mr14264823pji.32.1613825557024; 
 Sat, 20 Feb 2021 04:52:37 -0800 (PST)
Received: from karthik-strix-linux.karthek.com ([192.140.155.84])
 by smtp.gmail.com with ESMTPSA id i15sm7826309pjl.54.2021.02.20.04.52.33
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 20 Feb 2021 04:52:36 -0800 (PST)
Date: Sat, 20 Feb 2021 18:22:31 +0530
From: karthik alapati <mail@karthek.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Lee Jones <lee.jones@linaro.org>,
 Johannes Berg <johannes@sipsolutions.net>, Arnd Bergmann <arnd@arndb.de>
Subject: [PATCH] staging: wimax/i2400m: fix byte-order type issue
Message-ID: <YDEGD7pFyTi+CTXy@karthik-strix-linux.karthek.com>
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

fix sparse type warning by converting le32 types to
host byte-order types before comparison

Signed-off-by: karthik alapati <mail@karthek.com>
---
 drivers/staging/wimax/i2400m/fw.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/wimax/i2400m/fw.c b/drivers/staging/wimax/i2400m/fw.c
index 92ea5c101..f09de1810 100644
--- a/drivers/staging/wimax/i2400m/fw.c
+++ b/drivers/staging/wimax/i2400m/fw.c
@@ -511,7 +511,7 @@ ssize_t __i2400m_bm_ack_verify(struct i2400m *i2400m, int opcode,
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
