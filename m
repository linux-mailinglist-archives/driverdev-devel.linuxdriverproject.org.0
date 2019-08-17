Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id C0F0990D86
	for <lists+driverdev-devel@lfdr.de>; Sat, 17 Aug 2019 08:54:48 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 09075869BF;
	Sat, 17 Aug 2019 06:54:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id fjLaRroXK18p; Sat, 17 Aug 2019 06:54:45 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id CD738866BD;
	Sat, 17 Aug 2019 06:54:44 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 7AEF81BF5E9
 for <devel@linuxdriverproject.org>; Sat, 17 Aug 2019 06:54:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 7561487B65
 for <devel@linuxdriverproject.org>; Sat, 17 Aug 2019 06:54:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 7MI8lLGl34rM for <devel@linuxdriverproject.org>;
 Sat, 17 Aug 2019 06:54:42 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-qk1-f195.google.com (mail-qk1-f195.google.com
 [209.85.222.195])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 5FE1C87B60
 for <devel@driverdev.osuosl.org>; Sat, 17 Aug 2019 06:54:42 +0000 (UTC)
Received: by mail-qk1-f195.google.com with SMTP id m2so6550867qki.12
 for <devel@driverdev.osuosl.org>; Fri, 16 Aug 2019 23:54:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=6o2+JSXds68bprEsRDEVqYhdKp3AppBPWDxje+LgeTY=;
 b=ZPfaMsN3udqVwEDw6ipvkSS6e092wV6fECX6v1EZOKhaVsxklEG9dKgLQNzNblEzNk
 dibeunDIiTWaifNdtGAI8+qH3r0Nm/WSRjilBZ/7u3HKbNAWNdadsdy9bzu2MwBGrIRt
 FHuCRNB/3Oc3VtANjTIW30qumQXPJfmj8B0OQ/weyEyPnBaypWXRPeLjjbnfeO7RY4b8
 V0/WqkDHfWQ0hx3FGFzPUb728AvcIh9kFG0fyKUsrMytJdd8my/uc8Vu82Y/qUr5dqjc
 4a6xCv6lf810wnBxaxLp9GzdJMIXZRBi//FwPYELsowMSgfupYL/KnmZCLiXW12uPnXX
 +VjA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=6o2+JSXds68bprEsRDEVqYhdKp3AppBPWDxje+LgeTY=;
 b=OX/VIzHS6jZmna79KrqRSdNiUB7F+XlAe6YCPSOKo1fRD+YKN+qWTlQb7v5+ErQNz+
 wS/ptxrsZGMmCVYfABQv58w41+UxKY239azBxakRuBJTwOhSYE6ltp7nQb8850QELb6T
 zKbZab2lpH19OOha4MCNykPnLiij16XmqNdMHrjA86fBgekG5d4BmnPuChHx45XOtcAb
 Z5pV+yWuCrQHkrd9YrCsg93XyA7G3NvSOwK/kreJUAzxnSF2shWgrN9Xk6VsOhYdyoEL
 cv02jJLLqKYHT8k8Ha1u/irAo/p6no8/8IVllVQpqKbg333q6VX+XheNhjoqdloCLNZv
 NN5A==
X-Gm-Message-State: APjAAAXuoX0GUPUjZTZYEEmxzVdY68tRxqM+l57OJAYACDPwG93aRRxM
 +Z/rZra62ay6hczbxCBeCGA=
X-Google-Smtp-Source: APXvYqxMuzXXUdCjadT9IfE8zHyC0XvB2r3jkdbP7897HHQTvCDrMXzmwW4N+JQ7po3MDIWGXf6LYw==
X-Received: by 2002:a37:4e13:: with SMTP id c19mr12561507qkb.370.1566024881406; 
 Fri, 16 Aug 2019 23:54:41 -0700 (PDT)
Received: from matthew-linux.home (pool-71-244-100-50.phlapa.fios.verizon.net.
 [71.244.100.50])
 by smtp.gmail.com with ESMTPSA id e7sm3631196qtp.91.2019.08.16.23.54.40
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 16 Aug 2019 23:54:40 -0700 (PDT)
From: Matthew Hanzelik <matthew.hanzelik@gmail.com>
To: w.d.hubbs@gmail.com
Subject: [PATCH] Staging: speakup: spk_types: fixed an unnamed parameter style
 issue
Date: Sat, 17 Aug 2019 02:54:26 -0400
Message-Id: <20190817065426.2090-1-matthew.hanzelik@gmail.com>
X-Mailer: git-send-email 2.22.0
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
Cc: devel@driverdev.osuosl.org, Matthew Hanzelik <matthew.hanzelik@gmail.com>,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Fixed an unnamed parameter style issue.

Signed-off-by: Matthew Hanzelik <matthew.hanzelik@gmail.com>
---
 drivers/staging/speakup/spk_types.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/speakup/spk_types.h b/drivers/staging/speakup/spk_types.h
index a2fc72c29894..afa64eb9afb4 100644
--- a/drivers/staging/speakup/spk_types.h
+++ b/drivers/staging/speakup/spk_types.h
@@ -189,7 +189,7 @@ struct spk_synth {
 	void (*flush)(struct spk_synth *synth);
 	int (*is_alive)(struct spk_synth *synth);
 	int (*synth_adjust)(struct st_var_header *var);
-	void (*read_buff_add)(u_char);
+	void (*read_buff_add)(u_char *add);
 	unsigned char (*get_index)(struct spk_synth *synth);
 	struct synth_indexing indexing;
 	int alive;
--
2.22.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
