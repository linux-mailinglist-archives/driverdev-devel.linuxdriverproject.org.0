Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A3137439F
	for <lists+driverdev-devel@lfdr.de>; Thu, 25 Jul 2019 05:06:23 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id CE7D8854E7;
	Thu, 25 Jul 2019 03:06:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 0DIIOswZjsXZ; Thu, 25 Jul 2019 03:06:20 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 27A8A8203A;
	Thu, 25 Jul 2019 03:06:20 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 16B091BF9B7
 for <devel@linuxdriverproject.org>; Thu, 25 Jul 2019 03:06:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 0BF60860AD
 for <devel@linuxdriverproject.org>; Thu, 25 Jul 2019 03:06:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id N3LYNLLx03Nu for <devel@linuxdriverproject.org>;
 Thu, 25 Jul 2019 03:06:14 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f193.google.com (mail-pg1-f193.google.com
 [209.85.215.193])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 4105D860C1
 for <devel@driverdev.osuosl.org>; Thu, 25 Jul 2019 03:06:11 +0000 (UTC)
Received: by mail-pg1-f193.google.com with SMTP id x15so11874923pgg.8
 for <devel@driverdev.osuosl.org>; Wed, 24 Jul 2019 20:06:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:subject:message-id:mime-version:content-disposition
 :user-agent; bh=btqtc51LYIlkEFKYEvoFlR3PBGUCHhIjiaOtnkKqJro=;
 b=fD8huxV26PAdMafS1EwLFq5jiz1vj4SJcZHD46LnjytMwiRzml9XuyBDaZ49XcFhwN
 A9bMZEiO63TMJea3axNvha4nijQm0gOfKGigdk74DTutDN5vyPeW5LwT53XUV2TsQlWr
 2rST9N/J4C1S2NMp+d4nwSyPBzWCYn0tBZnl5i33ofplfnZQJPLH8j/CVBnPLNJ3PQNZ
 eFBtvYT2RRkH35UalHH0QoSQfLrKKYebSIq5FXClst55JtGLH5YjOiaKqmVoRIG9/OZ+
 VH++AzgLiL6euLBB0lAXUckGqRQLHN5CCdN5JFcBiYt61XdsOdDZm0XrnwVawbu8heYT
 PueQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=btqtc51LYIlkEFKYEvoFlR3PBGUCHhIjiaOtnkKqJro=;
 b=Ef2eSJe5FAHK5S31oP6vRH7t0g/bjS1qDdauwTApzod7gTjcrwZvpjg0tdfsBhuhhU
 c4n0lfB01At6VQwBAXfxHQPjuOZtUWW2xix4RZQlCT4JInXl/+GKC3ugBhSUuYRyDp2j
 1R0ZwlC4jUZQWlikeoWNUzFXyMARbS9aYn9Hw4inbB57sli7WflblhVo+jOOj1fmN6CS
 mupoF2Nb/ldJLNcjC3kdGYB5/bXO9cB8pNsyK+fT7dXF/DIRACR7GzKj+0bV3FJXVVMZ
 w3rTvCg0yxDpSTIGlazu1iZrLTM2hXFOLk92EcAGfoiL27Pab9E9rnFTdFZaPQcCbTGT
 eh8Q==
X-Gm-Message-State: APjAAAXg97W3RD8I2u6Tsgo9KGSaX9WO7PsGykJuWdXhkqj0388ZPT4M
 CZnCrd+rxW49eB+3NhZODpE=
X-Google-Smtp-Source: APXvYqx3YpL2LyepYGIeBA6i15WWO4Gs/pTiU/Fy5bapjt2gSTG1l83IwoWvRITga4oZWFwkdsYi8g==
X-Received: by 2002:a17:90a:a489:: with SMTP id
 z9mr87238271pjp.24.1564023970838; 
 Wed, 24 Jul 2019 20:06:10 -0700 (PDT)
Received: from hari-Inspiron-1545 ([183.83.86.126])
 by smtp.gmail.com with ESMTPSA id o14sm47624388pjp.29.2019.07.24.20.06.06
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 24 Jul 2019 20:06:09 -0700 (PDT)
Date: Thu, 25 Jul 2019 08:36:02 +0530
From: Hariprasad Kelam <hariprasad.kelam@gmail.com>
To: Mauro Carvalho Chehab <mchehab@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Ezequiel Garcia <ezequiel@collabora.com>, Tomasz Figa <tfiga@chromium.org>,
 Boris Brezillon <boris.brezillon@collabora.com>,
 ZhiChao Yu <zhichao.yu@rock-chips.com>,
 Hariprasad Kelam <hariprasad.kelam@gmail.com>,
 linux-media@vger.kernel.org, devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH] staging: media: hantro: Remove call to memset after
 dma_alloc_coherent
Message-ID: <20190725030602.GA13200@hari-Inspiron-1545>
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

fix below issue reported by coccicheck
/drivers/staging/media/hantro/hantro_vp8.c:149:16-34: WARNING:
dma_alloc_coherent use in aux_buf -> cpu already zeroes out memory,  so
memset is not needed

Signed-off-by: Hariprasad Kelam <hariprasad.kelam@gmail.com>
---
 drivers/staging/media/hantro/hantro_vp8.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/staging/media/hantro/hantro_vp8.c b/drivers/staging/media/hantro/hantro_vp8.c
index 66c4533..363ddda 100644
--- a/drivers/staging/media/hantro/hantro_vp8.c
+++ b/drivers/staging/media/hantro/hantro_vp8.c
@@ -151,8 +151,6 @@ int hantro_vp8_dec_init(struct hantro_ctx *ctx)
 	if (!aux_buf->cpu)
 		return -ENOMEM;
 
-	memset(aux_buf->cpu, 0, aux_buf->size);
-
 	/*
 	 * Allocate probability table buffer,
 	 * total 1208 bytes, 4K page is far enough.
-- 
2.7.4

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
