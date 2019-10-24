Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id E3178E3825
	for <lists+driverdev-devel@lfdr.de>; Thu, 24 Oct 2019 18:38:52 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 123E28834D;
	Thu, 24 Oct 2019 16:38:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id A6atZnrTTE4E; Thu, 24 Oct 2019 16:38:50 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 57D4E882A3;
	Thu, 24 Oct 2019 16:38:50 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id B07741BF860
 for <devel@linuxdriverproject.org>; Thu, 24 Oct 2019 16:38:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id AB0E18764F
 for <devel@linuxdriverproject.org>; Thu, 24 Oct 2019 16:38:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id bdMNcVVBa1G2 for <devel@linuxdriverproject.org>;
 Thu, 24 Oct 2019 16:38:48 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-qt1-f195.google.com (mail-qt1-f195.google.com
 [209.85.160.195])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 1C23F8760D
 for <devel@driverdev.osuosl.org>; Thu, 24 Oct 2019 16:38:48 +0000 (UTC)
Received: by mail-qt1-f195.google.com with SMTP id c21so38737593qtj.12
 for <devel@driverdev.osuosl.org>; Thu, 24 Oct 2019 09:38:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=l2yusJk1T2eAi0Mq1ot9gMKxrwCuHF+Xt6FpV+s1S4E=;
 b=adQ5Otolw+zTWgesd6OwBpQcFllS/xFs0LJdZLldoprFN9NEqkJSjKteCzmP/uH1mL
 ZZwMZ8844zT4GyV8jjYBoHDKWXUrrnnbdUwdyy/+Gavs9Y8mAiO1jE4tNy+tIfchX5BA
 mVZgWcQRSKvmJVIedrdoLUgQhXccIPBMQYV/A57ds6OSNCYfeNMkSGyuFj7fgqUDEQW/
 m4//xCZIo9igPHVDuUVBP33XJK6C/B350WGqzj7Ki2KupN5cbWfCLZ1kp7ftYLY7+paX
 o4dhuRaNHGqtyP6nGwGgwJQLIcWx6CNF4diBPAjJtvkRqRVOkeznmah7k/mhTsYgLjSi
 U/JQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=l2yusJk1T2eAi0Mq1ot9gMKxrwCuHF+Xt6FpV+s1S4E=;
 b=Ssgsw/cM0Ev8tPPq2Q7alwlvHNBJr5KJgu+Mh6qi7gTfPFudFqfVmkKpJOkIF54VZh
 wSKmjphYL8qVtMKdg4pOLXv0HNmI2WVZ2kkiOFQkA56qPWUF3d0d7BWPanE23LYTqlnG
 EzTNXnZi6b/2L2nINk9r9haUtVqN0H4Zx0xfLXtbUfJuaeOrvBKtEQAR8okULAqiW2B5
 MqLjiPVps+GFRTbXjbpLCi/2MoF376kI6Ac6Dwq9uE0A+c3okD+OJhSvjC4QLRQ73enV
 OSfTrN0XlZ6W+gtBmcbWweWpLdbtE8BQvrIZHz7WdMPVNlAwR3/tAeqlntPqCivDXa//
 XYjA==
X-Gm-Message-State: APjAAAXJdomGqyB8SI4uSavmic/96Ivcs8/+d157Mk8cBRiDHD5NoTvN
 e4KcfDlYoLNqLOfNXJdKCww=
X-Google-Smtp-Source: APXvYqwcOTQnK4VI4aF5LMdX1mcHPNqv+ofYq0/XfCoQ2fgyR9QnN8h06JdtfvT/czFStdoCgBG9QA==
X-Received: by 2002:aed:21c4:: with SMTP id m4mr3562060qtc.342.1571935126820; 
 Thu, 24 Oct 2019 09:38:46 -0700 (PDT)
Received: from localhost.localdomain ([201.53.210.37])
 by smtp.gmail.com with ESMTPSA id l15sm14660121qkj.16.2019.10.24.09.38.43
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 24 Oct 2019 09:38:46 -0700 (PDT)
From: Gabriela Bittencourt <gabrielabittencourt00@gmail.com>
To: outreachy-kernel@googlegroups.com, sudipm.mukherjee@gmail.com,
 teddy.wang@siliconmotion.com, gregkh@linuxfoundation.org,
 linux-fbdev@vger.kernel.org, devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org, lkcamp@lists.libreplanetbr.org,
 trivial@kernel.org
Subject: [PATCH 0/3] staging: sm750fb: align arguments with open parenthesis
Date: Thu, 24 Oct 2019 13:38:19 -0300
Message-Id: <20191024163822.7157-1-gabrielabittencourt00@gmail.com>
X-Mailer: git-send-email 2.20.1
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
Cc: Gabriela Bittencourt <gabrielabittencourt00@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Cleans up checks of "Alignment should match open parenthesis"
in tree sm750fb

Gabriela Bittencourt (3):
  staging: sm750fb: align arguments with open parenthesis in
    ddk750_sii164.c
  staging: sm750fb: align arguments with open parenthesis in file
    sm750_accel.h
  staging: sm750fb: align arguments with open parenthesis in file
    sm750_cursor.h

 drivers/staging/sm750fb/ddk750_sii164.c |  2 +-
 drivers/staging/sm750fb/sm750_accel.h   |  6 +++---
 drivers/staging/sm750fb/sm750_cursor.h  | 17 +++++++----------
 3 files changed, 11 insertions(+), 14 deletions(-)

-- 
2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
