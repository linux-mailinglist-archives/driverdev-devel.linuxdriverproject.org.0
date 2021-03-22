Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 86630343A8D
	for <lists+driverdev-devel@lfdr.de>; Mon, 22 Mar 2021 08:28:36 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 348FA82F8A;
	Mon, 22 Mar 2021 07:28:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id xNQt68Fg24uO; Mon, 22 Mar 2021 07:28:33 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9CDD982F13;
	Mon, 22 Mar 2021 07:28:32 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 1234A1BF3B1
 for <devel@linuxdriverproject.org>; Mon, 22 Mar 2021 07:28:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 0BD2540277
 for <devel@linuxdriverproject.org>; Mon, 22 Mar 2021 07:28:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id SvL8JGZsrvpo for <devel@linuxdriverproject.org>;
 Mon, 22 Mar 2021 07:28:21 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-qv1-xf2f.google.com (mail-qv1-xf2f.google.com
 [IPv6:2607:f8b0:4864:20::f2f])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 2E4184025D
 for <devel@driverdev.osuosl.org>; Mon, 22 Mar 2021 07:28:21 +0000 (UTC)
Received: by mail-qv1-xf2f.google.com with SMTP id o19so8230203qvu.0
 for <devel@driverdev.osuosl.org>; Mon, 22 Mar 2021 00:28:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=9CvJ6rom7YY2JxgL5QXExmKWi8Tr3HhiQ2VBpZ1icLU=;
 b=SiQfXqrqlzmrCUMHKASQWt/0u6+96Y5/LcPlFGCMf8Cab17PPKKdPQvfumg5aZTlCy
 8/JbezXtuqAGbDZxDRl/G7oXcoseIcf1TtRJGH5Ix/3ZEs1rHNuEahrvh6VI1mx8o6Mv
 6sY+5kB2p1hLdCYcbqN0srYlz72HMT2H82bvqe0s0z9pI/YaRp3xCpDeIVoD1tZOQXJa
 kpsvU6Zizo4MYMMckPRsmgAH4A4GLdDzFw+SD2ag+vRWCxTzKfrRF9qBvidoxcAODlmG
 LW7fbkPR34t6mUB54pOn6G3R8wMmtGiwOLT+y7tiRzWYxcLh/cGk/JkKd4NNiufPsFdj
 sGuA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=9CvJ6rom7YY2JxgL5QXExmKWi8Tr3HhiQ2VBpZ1icLU=;
 b=K/UG4EZTu7wphcTDthU5JIqZFg+HaYunhc0e7y7Ov8fHSMtR/Iz3AU+hWxwxZr7qBY
 XzwYB+oJxnqeRSC2NosH3/ABASVRSboEfWxOdNEHhUoAY01AdeTFmDsMsDuRKtqnXOKd
 Vc5WczKuRSCvxdY76NlExN5M3FWz9Ov6tWbMaOOecS8nvGmnbjyWN4RuBFHULNyz4C8R
 Zam/ZTdKjx/LTwwHkwus5N1uq4/SH7GOd09UP/RGN5d1nsKnzXIhFC1/I2vGBebw7t/+
 bKjuLgmvvcbKT0qY1pQAd2J0X3A0ch7zkyBpUbdjIFlbF7T7Xl1G9JNZz4IXgSUslLJ7
 aojg==
X-Gm-Message-State: AOAM532CRJohz9gGc9w/QT9bk8BQ7BV08YJOS4INBi2bimHAn25AZlUI
 ihughr6FYiZCiXa3Xj+A1o0=
X-Google-Smtp-Source: ABdhPJzmvIxJ+RmsW2s9tucclxBW8v59ePG5gdZ/syrVIxFipW+9lPVSWodnmVlgakaE+QknBpyqWg==
X-Received: by 2002:ad4:57a5:: with SMTP id g5mr20239805qvx.60.1616398100037; 
 Mon, 22 Mar 2021 00:28:20 -0700 (PDT)
Received: from localhost.localdomain ([156.146.54.221])
 by smtp.gmail.com with ESMTPSA id d68sm10258251qkf.93.2021.03.22.00.28.16
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 22 Mar 2021 00:28:19 -0700 (PDT)
From: Bhaskar Chowdhury <unixbhaskar@gmail.com>
To: gregkh@linuxfoundation.org, unixbhaskar@gmail.com,
 devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Subject: [PATCH] staging: rtl8723bs: Mundane typo fixes
Date: Mon, 22 Mar 2021 12:58:08 +0530
Message-Id: <20210322072808.996970-1-unixbhaskar@gmail.com>
X-Mailer: git-send-email 2.31.0
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>


s/stoping/stooping/
s/arragement/arrangement/
s/eralier/earlier/

Signed-off-by: Bhaskar Chowdhury <unixbhaskar@gmail.com>
---
 drivers/staging/rtl8723bs/include/hal_com_reg.h | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/rtl8723bs/include/hal_com_reg.h b/drivers/staging/rtl8723bs/include/hal_com_reg.h
index 37fa59a352d6..0a01a216d572 100644
--- a/drivers/staging/rtl8723bs/include/hal_com_reg.h
+++ b/drivers/staging/rtl8723bs/include/hal_com_reg.h
@@ -1002,9 +1002,9 @@ Current IOREG MAP
 	/* 		 8192C (TXPAUSE) transmission pause	(Offset 0x522, 8 bits) */
 	/*  */
 /*  Note: */
-/* 	The the bits of stoping AC(VO/VI/BE/BK) queue in datasheet RTL8192S/RTL8192C are wrong, */
-/* 	the correct arragement is VO - Bit0, VI - Bit1, BE - Bit2, and BK - Bit3. */
-/* 	8723 and 88E may be not correct either in the eralier version. Confirmed with DD Tim. */
+/* 	The the bits of stooping AC(VO/VI/BE/BK) queue in datasheet RTL8192S/RTL8192C are wrong, */
+/* 	the correct arrangement is VO - Bit0, VI - Bit1, BE - Bit2, and BK - Bit3. */
+/* 	8723 and 88E may be not correct either in the earlier version. Confirmed with DD Tim. */
 /*  By Bruce, 2011-09-22. */
 #define StopBecon		BIT6
 #define StopHigh			BIT5
--
2.31.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
