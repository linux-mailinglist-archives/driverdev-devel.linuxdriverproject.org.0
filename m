Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id C6E26292A51
	for <lists+driverdev-devel@lfdr.de>; Mon, 19 Oct 2020 17:25:02 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 8DC8B87632;
	Mon, 19 Oct 2020 15:25:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id g7QCIos3Pp-T; Mon, 19 Oct 2020 15:25:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 12F858741C;
	Mon, 19 Oct 2020 15:25:00 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id CC1D41BF3BB
 for <devel@linuxdriverproject.org>; Mon, 19 Oct 2020 15:24:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 70C7A2D9B5
 for <devel@linuxdriverproject.org>; Mon, 19 Oct 2020 15:24:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id fzugY6qj+1iB for <devel@linuxdriverproject.org>;
 Mon, 19 Oct 2020 15:24:56 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f66.google.com (mail-wr1-f66.google.com
 [209.85.221.66])
 by silver.osuosl.org (Postfix) with ESMTPS id 2FC0F2C35C
 for <devel@driverdev.osuosl.org>; Mon, 19 Oct 2020 15:24:56 +0000 (UTC)
Received: by mail-wr1-f66.google.com with SMTP id j7so153805wrt.9
 for <devel@driverdev.osuosl.org>; Mon, 19 Oct 2020 08:24:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:mime-version:content-disposition
 :user-agent; bh=q4pwiIyctly6h2xCWEgfDdmvxMbo+r9dziqXTIDAPzc=;
 b=NtEQDVysM2i6LQ5TQlHUICl8vtLNHjgyb1G3/kEDxRNiTAnDlgrWggpQpBbbj3lzV3
 p2q95j12gp5gSfqFlm76EvbvpEN+SWEvGvIsiFGnQkH/zIiW8yPjMd+Atd/m8eCzcmoP
 8gOU8Y5JmLeX6NOjuOBRbNWdp5pOyRh0TMW9cnNx7gyuWw3baCUDa2gDatfYSVOch7/T
 9l6AQQ9xPkKdrgdaVzQbsnWguWYYUpOB9DUZlPIntUfPZmNLnUT6KMf+XTf+7DZpJ+Pc
 S/CSwAY6jLx7Z0IAgRlCjTczSOFvNOYgrMI3a/7J9UKj0CwGsuVkHMl8I+7Pgb3obusT
 d2eQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=q4pwiIyctly6h2xCWEgfDdmvxMbo+r9dziqXTIDAPzc=;
 b=qM4NJgIZsWELTudsmERipy6nssoZ67OOaHTydAiQuVnRwiydC/6XtDSi8On1bHWOHh
 TUjneyM0IHUzNcFKc08fvLslKgINebDEQIaRXvdn23LCmlzFQn5i7KeKlH1/EwcHd3ME
 SfWbLXeegBnobaXgBpj1cwI+9BXJd2A53qwbRslsLYduUOTtu4rxyU9HKFeLlttlOHcX
 J6GXFc31W5Miv+dtcMODFOzkVDHRxwqSHZt8nskh8kyBI0M1eUgl76dOggkTG7LgGXAa
 TRnDIm5WaLj8UF9+BrYW8kmYrHr/ppp7xk6dSu97KwuK5RhCXyUO5FuGMtkcrg1J236b
 MiSQ==
X-Gm-Message-State: AOAM532G2JErLYM/I0CePNp0Ilp92EC22ppwOcoZW9f0Rs3KBQn8q7wE
 stJl1+gKivnp9kKrDhfyUoXE+KafJxvLEw==
X-Google-Smtp-Source: ABdhPJw8nIOp8HYQw7A8kfQryEgv+Stoxkj+8RdGCvVomNHPCky5EPLP2eIRv/cojXBEMpsi4oVOWA==
X-Received: by 2002:a5d:4a06:: with SMTP id m6mr27947wrq.209.1603121094331;
 Mon, 19 Oct 2020 08:24:54 -0700 (PDT)
Received: from tabot ([154.72.150.171])
 by smtp.gmail.com with ESMTPSA id d3sm66798wrb.66.2020.10.19.08.24.53
 (version=TLS1 cipher=ECDHE-ECDSA-AES128-SHA bits=128/128);
 Mon, 19 Oct 2020 08:24:53 -0700 (PDT)
Date: Mon, 19 Oct 2020 16:24:51 +0100
From: Tabot Kevin <tabot.kevin@gmail.com>
To: Vaibhav Agarwal <vaibhav.sr@gmail.com>
Subject: [PATCH] Fixed issues with alignment to open parenthesis.
Message-ID: <20201019152451.GA3417@tabot>
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
 drivers/staging/greybus/audio_codec.c | 9 ++++-----
 1 file changed, 4 insertions(+), 5 deletions(-)

diff --git a/drivers/staging/greybus/audio_codec.c b/drivers/staging/greybus/audio_codec.c
index 494aa82..d61e79f 100644
--- a/drivers/staging/greybus/audio_codec.c
+++ b/drivers/staging/greybus/audio_codec.c
@@ -71,7 +71,7 @@ static int gbaudio_module_enable_tx(struct gbaudio_codec_info *codec,
 		i2s_port = 0;	/* fixed for now */
 		cportid = data->connection->hd_cport_id;
 		ret = gb_audio_apbridgea_register_cport(data->connection,
-						i2s_port, cportid,
+							i2s_port, cportid,
 						AUDIO_APBRIDGEA_DIRECTION_TX);
 		if (ret) {
 			dev_err_ratelimited(module->dev,
@@ -161,7 +161,7 @@ static int gbaudio_module_disable_tx(struct gbaudio_module_info *module, int id)
 		i2s_port = 0;	/* fixed for now */
 		cportid = data->connection->hd_cport_id;
 		ret = gb_audio_apbridgea_unregister_cport(data->connection,
-						i2s_port, cportid,
+							  i2s_port, cportid,
 						AUDIO_APBRIDGEA_DIRECTION_TX);
 		if (ret) {
 			dev_err_ratelimited(module->dev,
@@ -206,7 +206,7 @@ static int gbaudio_module_enable_rx(struct gbaudio_codec_info *codec,
 		i2s_port = 0;	/* fixed for now */
 		cportid = data->connection->hd_cport_id;
 		ret = gb_audio_apbridgea_register_cport(data->connection,
-						i2s_port, cportid,
+							i2s_port, cportid,
 						AUDIO_APBRIDGEA_DIRECTION_RX);
 		if (ret) {
 			dev_err_ratelimited(module->dev,
@@ -296,7 +296,7 @@ static int gbaudio_module_disable_rx(struct gbaudio_module_info *module, int id)
 		i2s_port = 0;	/* fixed for now */
 		cportid = data->connection->hd_cport_id;
 		ret = gb_audio_apbridgea_unregister_cport(data->connection,
-						i2s_port, cportid,
+							  i2s_port, cportid,
 						AUDIO_APBRIDGEA_DIRECTION_RX);
 		if (ret) {
 			dev_err_ratelimited(module->dev,
@@ -1057,7 +1057,6 @@ static int gbcodec_probe(struct snd_soc_component *comp)
 static void gbcodec_remove(struct snd_soc_component *comp)
 {
 	/* Empty function for now */
-	return;
 }
 
 static int gbcodec_write(struct snd_soc_component *comp, unsigned int reg,
-- 
2.7.4

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
