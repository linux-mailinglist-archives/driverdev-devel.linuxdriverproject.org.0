Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 271CAD1EC7
	for <lists+driverdev-devel@lfdr.de>; Thu, 10 Oct 2019 05:09:50 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 9109087CAC;
	Thu, 10 Oct 2019 03:09:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id PsxDPMIUVTzT; Thu, 10 Oct 2019 03:09:47 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id E1D3387ABB;
	Thu, 10 Oct 2019 03:09:46 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 61F8C1BF282
 for <devel@linuxdriverproject.org>; Thu, 10 Oct 2019 03:09:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 5EBA187B07
 for <devel@linuxdriverproject.org>; Thu, 10 Oct 2019 03:09:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id sTcmo23jzr8s for <devel@linuxdriverproject.org>;
 Thu, 10 Oct 2019 03:09:43 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f195.google.com (mail-pl1-f195.google.com
 [209.85.214.195])
 by whitealder.osuosl.org (Postfix) with ESMTPS id C903087ABB
 for <devel@driverdev.osuosl.org>; Thu, 10 Oct 2019 03:09:43 +0000 (UTC)
Received: by mail-pl1-f195.google.com with SMTP id e5so2041005pls.9
 for <devel@driverdev.osuosl.org>; Wed, 09 Oct 2019 20:09:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=suMFKZQEGEwZr8PRAVj7Gyv2/NzjvEqwMzv67rGfm+k=;
 b=Bmua95JQ8Gp4DKSJGPuU+V73PT1xBrJUUOEmk+MkDx6be98iCs8yRGHFL+rdSgDoa5
 2w5BmBLPT5T43AREMJjHkYI5WusYapm2Pixdd7QtJ925mTNYfEyXtHH1RtQ3+6UuxJUT
 sPs9HoAYW3iG2UjgkMBPPJ0tEnYFxuKsOcthVfXRQtZ0vn0J+6JmbmEzQPLAJ8hyuaCR
 TN/iuNtKagXlnzyhsqClpAHp9KkpNELImOQFYdxZl3U0AIHenVm4dcUa2VEJ3zy1zF5w
 NX1k8hbf+nUOnommX5uL8Z3JA5zTrb8CejvAwaE4lm17MOacaZ2ECFWmOmYGQ+CzPyVl
 wvSA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=suMFKZQEGEwZr8PRAVj7Gyv2/NzjvEqwMzv67rGfm+k=;
 b=arFzfk8GelMuEHWj40ZQrkPmTAKApR3nwSZwsFTlJuQZORkCEyL79sntfZNdM2OPrY
 aM9PLsXcm+TFuGGmG5Pl+Ue1Zsj7f6Z8nFf9m7uMV0QP0gIqyXO718/f2uKM0ALcgSHn
 vie1unKntUOpJIBDaVYBRmIK9+q5sq0uIpUABV8BdymvDJ2WUUsTNhU6QdTn6Fn0wn88
 b0d43RRD2S2sp/Ki1NkvlmxHv8h4njJZuNVM6hU2vMN9Bx51JtUByi81GigoRhuGM/Hy
 NC0BANITiXkrF8fQ+c+tmPBkI4LDgjjluqQhHa2X3Bscw5KbNSc8TtGASYVGQkkNaJRd
 Ek+w==
X-Gm-Message-State: APjAAAXszxxPI+aZaWxCVDozUHEh+T9rGlEuRuP9pjoAbLkgjjpDULKs
 /1y2DitbC3N4jG9I4+k36bQ=
X-Google-Smtp-Source: APXvYqwyj4UgbldcCqsMP605uHyuy2dA8ef1zfiZvkS6zJoecbO4KkZkKGNsoDshNSSb2DIv4dbGkA==
X-Received: by 2002:a17:902:d90e:: with SMTP id
 c14mr6652911plz.91.1570676983514; 
 Wed, 09 Oct 2019 20:09:43 -0700 (PDT)
Received: from panther.hsd1.or.comcast.net ([45.52.215.209])
 by smtp.gmail.com with ESMTPSA id v8sm9713196pje.6.2019.10.09.20.09.42
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Wed, 09 Oct 2019 20:09:42 -0700 (PDT)
From: Chandra Annamaneni <chandra627@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH] KPC2000: kpc2000_spi.c: Fix style issues (missing blank line)
Date: Wed,  9 Oct 2019 20:09:32 -0700
Message-Id: <1570676972-4032-1-git-send-email-chandra627@gmail.com>
X-Mailer: git-send-email 2.7.4
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
Cc: devel@driverdev.osuosl.org, gneukum1@gmail.com, chandra627@gmail.com,
 fabian.krueger@fau.de, linux-kernel@vger.kernel.org, simon@nikanor.nu,
 dan.carpenter@oracle.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Resolved: "CHECK: Please use a blank line after.." from checkpatch.pl

Signed-off-by: Chandra Annamaneni <chandra627@gmail.com>
---
 drivers/staging/kpc2000/kpc2000_spi.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/staging/kpc2000/kpc2000_spi.c b/drivers/staging/kpc2000/kpc2000_spi.c
index ef78b6d..0d510f0 100644
--- a/drivers/staging/kpc2000/kpc2000_spi.c
+++ b/drivers/staging/kpc2000/kpc2000_spi.c
@@ -50,6 +50,7 @@ static struct flash_platform_data p2kr0_spi0_pdata = {
 	.nr_parts =	ARRAY_SIZE(p2kr0_spi0_parts),
 	.parts =	p2kr0_spi0_parts,
 };
+
 static struct flash_platform_data p2kr0_spi1_pdata = {
 	.name =		"SPI1",
 	.nr_parts =	ARRAY_SIZE(p2kr0_spi1_parts),
-- 
2.7.4

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
