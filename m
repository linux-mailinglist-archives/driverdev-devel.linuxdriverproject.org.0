Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 29A18E382E
	for <lists+driverdev-devel@lfdr.de>; Thu, 24 Oct 2019 18:39:17 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id BCAFB8557B;
	Thu, 24 Oct 2019 16:39:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id J47zVB65hcvS; Thu, 24 Oct 2019 16:39:15 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 99B0585074;
	Thu, 24 Oct 2019 16:39:14 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 1C3A31BF860
 for <devel@linuxdriverproject.org>; Thu, 24 Oct 2019 16:39:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 193348829F
 for <devel@linuxdriverproject.org>; Thu, 24 Oct 2019 16:39:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id iGn1fHspiAwZ for <devel@linuxdriverproject.org>;
 Thu, 24 Oct 2019 16:39:12 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-qt1-f195.google.com (mail-qt1-f195.google.com
 [209.85.160.195])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 802B9882B0
 for <devel@driverdev.osuosl.org>; Thu, 24 Oct 2019 16:39:12 +0000 (UTC)
Received: by mail-qt1-f195.google.com with SMTP id t20so38771037qtr.10
 for <devel@driverdev.osuosl.org>; Thu, 24 Oct 2019 09:39:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=PBStHmHEV5B5bW8UOdDVAaSdAsUZ6zk/15tXrG1wW9k=;
 b=RIXq/4wfdukLU5uuWuQF2OK8a4dUMHXkUmt1Ftle/qClyK9CzBLcYC0Rm6YzufgGOQ
 jSuqdlsNKDchwzegUeM3Bb7VhPXkL2Pff271WlEIX8eoQMSmGyjxcVfRg6U2wnBVlY5t
 S4Z0L90uHwuHpRbim+lNpzPn7ZT9+O4F0m0ylnzgriPk4XNrie0AdQdjVSpcJwJR4zve
 ia16euZ4t0T8cOyak/+6e+g0TDFP7VBYlvEU1Zm2TMifaulcsYHTRX42omvOdLtnSD0q
 xMRDpyaGJZ7NAV3JU6yUvJqVhC2bCFQmoNDLEmBR5aAos8qWmT19EVhadgmioTtC29JD
 hAfw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=PBStHmHEV5B5bW8UOdDVAaSdAsUZ6zk/15tXrG1wW9k=;
 b=PhApx4xEOJug+l4sHjJyZJjnTUtWAGeHcpL+z+ofnxz1zegtrAsLJQHYMi0WLzCtcw
 MTEHmEqA+RzZzkMz+QvMi/FN2mdSyppQbH91PY9beBi1En6QXEFMknABfqz2skh8A+eb
 g7boyMkq+6w9xy8SwIT4YSzt2e7J0Y4o43tobwTpq/W+yvYEMRc3MinJm1joowFA3Sxq
 CiE8aIG7G1pcA6c8amc6rbsFnLsILYZXPKB6EmK426IGEzPcHbRxQHMbgy+CiaJfrI2e
 yJhLl7hMD9GhtnR9pVPIxRogb26wjGSBJyOhJLdYVhB9bGJR1E8UjOnjHyLVMfcJIK2W
 rl1w==
X-Gm-Message-State: APjAAAWRMyycibxSbOfUn1j2IQSOHm+ygBaRRX94ssItTcHOaNjIpftr
 DdUpIOqWaRa7hAsRGAkq2WQ=
X-Google-Smtp-Source: APXvYqyG2CvSxVSEZAf+22TWA18DwezJJpUt3QES1hnt1261ClLqV7jx8YbDvZ0i+vCFlf+VD/Vezw==
X-Received: by 2002:a0c:e801:: with SMTP id y1mr633274qvn.76.1571935151427;
 Thu, 24 Oct 2019 09:39:11 -0700 (PDT)
Received: from localhost.localdomain ([201.53.210.37])
 by smtp.gmail.com with ESMTPSA id l15sm14660121qkj.16.2019.10.24.09.39.08
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 24 Oct 2019 09:39:10 -0700 (PDT)
From: Gabriela Bittencourt <gabrielabittencourt00@gmail.com>
To: outreachy-kernel@googlegroups.com, sudipm.mukherjee@gmail.com,
 teddy.wang@siliconmotion.com, gregkh@linuxfoundation.org,
 linux-fbdev@vger.kernel.org, devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org, lkcamp@lists.libreplanetbr.org,
 trivial@kernel.org
Subject: [PATCH 2/3] staging: sm750fb: align arguments with open parenthesis
 in file sm750_accel.h
Date: Thu, 24 Oct 2019 13:38:21 -0300
Message-Id: <20191024163822.7157-3-gabrielabittencourt00@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191024163822.7157-1-gabrielabittencourt00@gmail.com>
References: <20191024163822.7157-1-gabrielabittencourt00@gmail.com>
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
in file sm750_accel.h

Signed-off-by: Gabriela Bittencourt <gabrielabittencourt00@gmail.com>
---
 drivers/staging/sm750fb/sm750_accel.h | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/sm750fb/sm750_accel.h b/drivers/staging/sm750fb/sm750_accel.h
index c16350b5a310..2c79cb730a0a 100644
--- a/drivers/staging/sm750fb/sm750_accel.h
+++ b/drivers/staging/sm750fb/sm750_accel.h
@@ -190,9 +190,9 @@ void sm750_hw_set2dformat(struct lynx_accel *accel, int fmt);
 void sm750_hw_de_init(struct lynx_accel *accel);
 
 int sm750_hw_fillrect(struct lynx_accel *accel,
-				u32 base, u32 pitch, u32 Bpp,
-				u32 x, u32 y, u32 width, u32 height,
-				u32 color, u32 rop);
+		      u32 base, u32 pitch, u32 Bpp,
+		      u32 x, u32 y, u32 width, u32 height,
+		      u32 color, u32 rop);
 
 /**
  * sm750_hm_copyarea
-- 
2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
