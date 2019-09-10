Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id AC2A2AF142
	for <lists+driverdev-devel@lfdr.de>; Tue, 10 Sep 2019 20:49:43 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id C68578636A;
	Tue, 10 Sep 2019 18:49:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id wJ1ux4s1snFE; Tue, 10 Sep 2019 18:49:41 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 9E1CD862D2;
	Tue, 10 Sep 2019 18:49:40 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 136C11BF294
 for <driverdev-devel@linuxdriverproject.org>;
 Tue, 10 Sep 2019 18:49:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 10DB98622A
 for <driverdev-devel@linuxdriverproject.org>;
 Tue, 10 Sep 2019 18:49:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id der-rrgCWnQY
 for <driverdev-devel@linuxdriverproject.org>;
 Tue, 10 Sep 2019 18:49:37 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f195.google.com (mail-pl1-f195.google.com
 [209.85.214.195])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 1FA8D86225
 for <driverdev-devel@linuxdriverproject.org>;
 Tue, 10 Sep 2019 18:49:37 +0000 (UTC)
Received: by mail-pl1-f195.google.com with SMTP id x3so8987774plr.12
 for <driverdev-devel@linuxdriverproject.org>;
 Tue, 10 Sep 2019 11:49:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:mime-version:content-disposition
 :user-agent; bh=RX5bDF6yS4bhQJzlmBGEdlT2LaTp8OsRgQ45nIqHhvo=;
 b=l4uNnxOaD3tfJ2ZerLOwA1Id9+StSuEcRPbMi9j7kAIednufXVkulKDXiiFrSTD3+5
 N7w2GCRIwSJY8UC71SL7ctjOWtmXPiOH1qBQprr7IDZt+VbqdNAInX5bi+VlKBEu649T
 CUUUmOeAIQ8GkBVr36F1nR3GY1bsyZXRZe6Uwi8cf3KSkHAUYwts11HadNUmPwuaiNR5
 rIVqsAyxHxGto7RNAgoGIfhJ+r1HkkLRPYekzqK/tCvUUdxIvO4+wjUa7UnSS0tilUFU
 GglXX0N9lctS7pwlajnfuOeMp/bmrXzAynmV7OgtNM4/e5rYiJ6OnuJYOwy4qwQenDox
 Kgdg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=RX5bDF6yS4bhQJzlmBGEdlT2LaTp8OsRgQ45nIqHhvo=;
 b=oxIMYkK85iA7QdRhCyHh8GsEn7+f7vjIbI8q9890XfWuPV6TB4axf1vXN/xHTjIo5c
 exMcISUbQeimn2metiLhvb0ThI6/ipcr9kRmw/91q9q7GAZ3GsISFfCe40RXcbxTOiN6
 X2OjcjQe1gRtkwVboPcigt87L8QbPMe0e6LRKWeixanPy8F98CEkFNzbqIC+4Ty8tk4S
 3jsh3O3Ii8QaF2Z4DezK43fDmbc+pJ9kKecba8J8j5YhCB/KAPuIDQU+uLDuCzIJOEFM
 AATDgOhIDBY4wTcW4L+tTV4v5ONrKFdLXGiNpe2mnyOY62iAXmRst7dUYJAy6JQS9BJ1
 K5ng==
X-Gm-Message-State: APjAAAXzsV/tWFzVwyoudUADTXe2DwOHBcjYwaEARJW2fyYh1961UKG2
 TcQs2HzyOAROl3Ua37ifGw4=
X-Google-Smtp-Source: APXvYqz+wwDiZZ4j7SkNl9lnJdAHbbjyzx8aOsHfimDdalsyIvISmf1Pb7trhWKxX7TUJ/g8+4HDHQ==
X-Received: by 2002:a17:902:a705:: with SMTP id
 w5mr3656252plq.228.1568141376654; 
 Tue, 10 Sep 2019 11:49:36 -0700 (PDT)
Received: from SARKAR ([1.186.12.73])
 by smtp.gmail.com with ESMTPSA id y138sm7656304pfb.174.2019.09.10.11.49.35
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 10 Sep 2019 11:49:36 -0700 (PDT)
Date: Wed, 11 Sep 2019 00:19:31 +0530
From: Rohit Sarkar <rohitsarkar5398@gmail.com>
To: gregkh@linuxfoundation.org, larry.finger@lwfiner.net,
 florian.c.schilhabel@googlemail.com, driverdev-devel@linuxdriverproject.org
Subject: [PATCH] staging: rtl8712: Replace snprintf with scnprintf
Message-ID: <20190910184931.GA8228@SARKAR>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.9.4 (2018-02-28)
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

When the number of bytes to be printed exceeds the limit snprintf
returns the number of bytes that would have been printed (if there was
no truncation). This might cause issues, hence use scnprintf which
returns the actual number of bytes printed to buffer always.

Signed-off-by: Rohit Sarkar <rohitsarkar5398@gmail.com>
---
 drivers/staging/rtl8712/rtl871x_ioctl_linux.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/rtl8712/rtl871x_ioctl_linux.c b/drivers/staging/rtl8712/rtl871x_ioctl_linux.c
index b08b9a191a34..ff5edcaba64d 100644
--- a/drivers/staging/rtl8712/rtl871x_ioctl_linux.c
+++ b/drivers/staging/rtl8712/rtl871x_ioctl_linux.c
@@ -142,7 +142,7 @@ static noinline_for_stack char *translate_scan_wpa(struct iw_request_info *info,
 		memset(buf, 0, MAX_WPA_IE_LEN);
 		n = sprintf(buf, "wpa_ie=");
 		for (i = 0; i < wpa_len; i++) {
-			n += snprintf(buf + n, MAX_WPA_IE_LEN - n,
+			n += scnprintf(buf + n, MAX_WPA_IE_LEN - n,
 						"%02x", wpa_ie[i]);
 			if (n >= MAX_WPA_IE_LEN)
 				break;
@@ -162,7 +162,7 @@ static noinline_for_stack char *translate_scan_wpa(struct iw_request_info *info,
 		memset(buf, 0, MAX_WPA_IE_LEN);
 		n = sprintf(buf, "rsn_ie=");
 		for (i = 0; i < rsn_len; i++) {
-			n += snprintf(buf + n, MAX_WPA_IE_LEN - n,
+			n += scnprintf(buf + n, MAX_WPA_IE_LEN - n,
 						"%02x", rsn_ie[i]);
 			if (n >= MAX_WPA_IE_LEN)
 				break;
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
