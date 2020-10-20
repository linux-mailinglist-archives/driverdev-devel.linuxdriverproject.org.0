Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 43CBB293F33
	for <lists+driverdev-devel@lfdr.de>; Tue, 20 Oct 2020 17:05:31 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 731F186CAF;
	Tue, 20 Oct 2020 15:05:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Fam9y8VVhRQ0; Tue, 20 Oct 2020 15:05:28 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 7EAF186D5C;
	Tue, 20 Oct 2020 15:05:27 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 5E1461BF82F
 for <devel@linuxdriverproject.org>; Tue, 20 Oct 2020 15:05:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 5AAF32E1C3
 for <devel@linuxdriverproject.org>; Tue, 20 Oct 2020 15:05:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id WY+X0862Q4SZ for <devel@linuxdriverproject.org>;
 Tue, 20 Oct 2020 15:05:24 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lj1-f194.google.com (mail-lj1-f194.google.com
 [209.85.208.194])
 by silver.osuosl.org (Postfix) with ESMTPS id 3D0CC20493
 for <devel@driverdev.osuosl.org>; Tue, 20 Oct 2020 15:05:23 +0000 (UTC)
Received: by mail-lj1-f194.google.com with SMTP id a4so2357806lji.12
 for <devel@driverdev.osuosl.org>; Tue, 20 Oct 2020 08:05:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=7TJv4ZXg2MXwEfHyowh8npSJLG4Kmdf3ACv+lxm/lQE=;
 b=KsWlu6TsLv+KPklGb+OeT9zYIWS3970FjdSR0G2YKoiPFF4AeOoYi96MeUgeh1nbbR
 tb/eiv2g+x6ECUDa8UawTdhVP0r7v6s/raQbkEYwdpzt/70bS0T4OX90RzQmPhyyMufH
 6gHThTdKjdQNdby2zE9C6zPPemm8kogK1GahTRHf7RhCJhv7jPxARcYjs5JPLEiIKdEc
 8RTzozGrNb8bGHqcuO7iEkKnkDjEXzZvSYKybkQ0qSh2akRJwSPqSn+edHW1+EEmAs5p
 nDcfrrxaWChcNayHX/9BfGPw5Wp5p4Fa1CtMudBkSF43+auK1JbuCAek8OURVph9amYt
 Yrdg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=7TJv4ZXg2MXwEfHyowh8npSJLG4Kmdf3ACv+lxm/lQE=;
 b=XPOQoqN92vKQTZNxkmsC1CEIEYBoAV81g2DDKKtcP0oC/J3PlIdjK7LwhDYR3wv5dG
 I+4UF/5LGqQPYJmzAH0u5PW7lf4z7ebk489vysNqVeEwqNcoYNtXrgd1cIUwbwKvq9Ni
 2SoH5uttmt+ZByxZV+JUcD4qaTDkt2Iv/xGCdiPr2/66sehX1RCEteJwGIZ399SulG0G
 uG5SLkYi6ixP2SbCU37WFLKsVESAoW5lFGeaYvLK8O+vCZqLYWIb6mUOzRlPbSzQug9J
 3rl8DVL+MTvWgSPwSampfuZFk75IGwZs7aFveZtF23BsFfM8ysnnYYkujQymAqnkj+OY
 i5uQ==
X-Gm-Message-State: AOAM532X0EsSVDxr6H7UYnZj2ViLI6l3iQl+CgJ1QGuSzoYp2iw6eu+1
 cp4jKdkOaeNqO0qxviUXP+E=
X-Google-Smtp-Source: ABdhPJyjcCENFox4E7yUjdDq4h6xCW1jMFYsrsE6GkNUy2yCZs96kMnX8NUMoTbNHhslUl1Pfyg36g==
X-Received: by 2002:a2e:9789:: with SMTP id y9mr1336077lji.456.1603206321353; 
 Tue, 20 Oct 2020 08:05:21 -0700 (PDT)
Received: from localhost.localdomain (37-145-186-126.broadband.corbina.ru.
 [37.145.186.126])
 by smtp.gmail.com with ESMTPSA id c184sm340622lfg.274.2020.10.20.08.05.19
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 20 Oct 2020 08:05:20 -0700 (PDT)
From: Elena Afanasova <eafanasova@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH] staging/qlge: add blank line after declaration
Date: Tue, 20 Oct 2020 08:03:56 -0700
Message-Id: <20201020150356.35605-1-eafanasova@gmail.com>
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
Cc: devel@driverdev.osuosl.org, outreachy-kernel@googlegroups.com,
 Elena Afanasova <eafanasova@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Reported by checkpatch.pl.

Signed-off-by: Elena Afanasova <eafanasova@gmail.com>
---
 drivers/staging/qlge/qlge_ethtool.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/staging/qlge/qlge_ethtool.c b/drivers/staging/qlge/qlge_ethtool.c
index d44b2dae9213..a28f0254cf60 100644
--- a/drivers/staging/qlge/qlge_ethtool.c
+++ b/drivers/staging/qlge/qlge_ethtool.c
@@ -178,6 +178,7 @@ static const struct ql_stats ql_gstrings_stats[] = {
 static const char ql_gstrings_test[][ETH_GSTRING_LEN] = {
 	"Loopback test  (offline)"
 };
+
 #define QLGE_TEST_LEN (sizeof(ql_gstrings_test) / ETH_GSTRING_LEN)
 #define QLGE_STATS_LEN ARRAY_SIZE(ql_gstrings_stats)
 #define QLGE_RCV_MAC_ERR_STATS	7
-- 
2.25.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
