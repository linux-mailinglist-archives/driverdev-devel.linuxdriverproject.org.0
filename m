Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id BCC2128AB51
	for <lists+driverdev-devel@lfdr.de>; Mon, 12 Oct 2020 03:08:53 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 557CD20551;
	Mon, 12 Oct 2020 01:08:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id WVVFIt8GZNyf; Mon, 12 Oct 2020 01:08:50 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id DB61820492;
	Mon, 12 Oct 2020 01:08:46 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 455171BF3C6
 for <devel@linuxdriverproject.org>; Mon, 12 Oct 2020 01:08:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 374D484AA7
 for <devel@linuxdriverproject.org>; Mon, 12 Oct 2020 01:08:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id QfgL3QDVqWfj for <devel@linuxdriverproject.org>;
 Mon, 12 Oct 2020 01:08:44 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f68.google.com (mail-wr1-f68.google.com
 [209.85.221.68])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 57EE884A43
 for <devel@driverdev.osuosl.org>; Mon, 12 Oct 2020 01:08:44 +0000 (UTC)
Received: by mail-wr1-f68.google.com with SMTP id y12so11840452wrp.6
 for <devel@driverdev.osuosl.org>; Sun, 11 Oct 2020 18:08:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:mime-version:content-disposition
 :user-agent; bh=Sov6QI2+dcKEbVPti+S9VpTmMaMBnOoy8yisJjB3r+E=;
 b=BQRlj64hUNh3Vpt3NRVuJ0mbbtojcTourTptvcGpC7lgx0YlOVJxzS9a6xck92Xdr7
 hl3864984WzmySE7IY6SMLO3cktlGsKqk1Tv27F0qjntw0WSTbBMkocv6laLMlzkkuS9
 XI+0pyvP48J/JJ/zW2wrc8zjuwtK2Ryc8DaZjoKQ1qUqnM81vG85SRIZdjYE136bwKQ/
 lm7DczGm160Z+KQQtMerQKiKXvjk97dWkUwOOwbYJUByyqrEZq0qoG2C1LZX5bfPP1qv
 OExqbF2RICmWGYsIGgxFzr2zYb946tJELH1L4txDjm04/A+8X/WYwaLNKcOyOyqZ38w0
 L7aw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=Sov6QI2+dcKEbVPti+S9VpTmMaMBnOoy8yisJjB3r+E=;
 b=Qm/aVs9D44YD8vakt6UgWmsCd17ltJ6xft3pAd+URmpY6wHkdv93eBhMKus7D+Vlsw
 ujoV7l2KmLq9JmoCU0q2JN8Nlq1A5N0XlFPP+wJtI9L3Krpv8V3fsNJ1d5ggxwUaLxfn
 U8wdaGDvo+5U6vm2LjAYIyeLG2ijFpT5RPqATChotWsJn56ABi6ewHM0xCoDuPxRuj51
 92eRCiV1FyrgQgi67GudKv5/9o7t4Sv2Uz8YGDR/v5FyQkg1BFcxvOmNcnGao3qLAP8v
 3TLQ1/Qo/a+IPZ7F0mB/qRjsxDGvneZMZ5/Q425tgyPJmIBPHlK0RQAZZvoTSv9iRm4P
 Bbmg==
X-Gm-Message-State: AOAM53224EeUXoL12HU3Y+O5syJRA7qF/FQKq+8FL/8GxxpvnUW2JFx4
 0YvTNW1MsHUtg+MmIC//GY8d7O7aIdhI2w==
X-Google-Smtp-Source: ABdhPJzAYi4u0qDJ7T6+pzk9+JrUuXO11K4QYM9tIHk2awhmnkvDSe0UJexQyQUWSL2huO0GaH2F8A==
X-Received: by 2002:adf:f9cf:: with SMTP id w15mr164659wrr.185.1602464922239; 
 Sun, 11 Oct 2020 18:08:42 -0700 (PDT)
Received: from tabot ([154.72.150.121])
 by smtp.gmail.com with ESMTPSA id z15sm23362849wrq.24.2020.10.11.18.08.41
 (version=TLS1 cipher=ECDHE-ECDSA-AES128-SHA bits=128/128);
 Sun, 11 Oct 2020 18:08:41 -0700 (PDT)
Date: Mon, 12 Oct 2020 02:08:38 +0100
From: Tabot Kevin <tabot.kevin@gmail.com>
To: Vaibhav Agarwal <vaibhav.sr@gmail.com>
Subject: [PATCH] Fixed issues with alignment to open parenthesis.
Message-ID: <20201012010838.GA1406@tabot>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)
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
Cc: devel@driverdev.osuosl.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

This patch fixes the following:
- Made sure alignment matched open parenthesis.

Signed-off-by: Tabot Kevin <tabot.kevin@gmail.com>
---
 drivers/staging/greybus/audio_module.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/greybus/audio_module.c b/drivers/staging/greybus/audio_module.c
index c52c4f3..a243d60 100644
--- a/drivers/staging/greybus/audio_module.c
+++ b/drivers/staging/greybus/audio_module.c
@@ -175,8 +175,8 @@ static int gbaudio_codec_request_handler(struct gb_operation *op)
 }
 
 static int gb_audio_add_mgmt_connection(struct gbaudio_module_info *gbmodule,
-				struct greybus_descriptor_cport *cport_desc,
-				struct gb_bundle *bundle)
+					struct greybus_descriptor_cport *cport_desc,
+					struct gb_bundle *bundle)
 {
 	struct gb_connection *connection;
 
@@ -199,8 +199,8 @@ static int gb_audio_add_mgmt_connection(struct gbaudio_module_info *gbmodule,
 }
 
 static int gb_audio_add_data_connection(struct gbaudio_module_info *gbmodule,
-				struct greybus_descriptor_cport *cport_desc,
-				struct gb_bundle *bundle)
+					struct greybus_descriptor_cport *cport_desc,
+					struct gb_bundle *bundle)
 {
 	struct gb_connection *connection;
 	struct gbaudio_data_connection *dai;
-- 
2.7.4

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
