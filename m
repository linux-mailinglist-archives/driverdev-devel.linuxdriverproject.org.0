Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id D30AA21C7D0
	for <lists+driverdev-devel@lfdr.de>; Sun, 12 Jul 2020 09:06:42 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 762E98888D;
	Sun, 12 Jul 2020 07:06:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 7rIT2U0InWSg; Sun, 12 Jul 2020 07:06:40 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 6AB2488363;
	Sun, 12 Jul 2020 07:06:39 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 709481BF2A2
 for <devel@linuxdriverproject.org>; Sun, 12 Jul 2020 07:06:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 6D17287926
 for <devel@linuxdriverproject.org>; Sun, 12 Jul 2020 07:06:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id dZA-hOHem_Kt for <devel@linuxdriverproject.org>;
 Sun, 12 Jul 2020 07:06:35 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pj1-f66.google.com (mail-pj1-f66.google.com
 [209.85.216.66])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 7290B8791D
 for <devel@driverdev.osuosl.org>; Sun, 12 Jul 2020 07:06:35 +0000 (UTC)
Received: by mail-pj1-f66.google.com with SMTP id ch3so4624704pjb.5
 for <devel@driverdev.osuosl.org>; Sun, 12 Jul 2020 00:06:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:mime-version:content-disposition
 :user-agent; bh=1RQK81eHkq8yc1kfeadt5EYNtBGoEuKdAYto1gErhzc=;
 b=A0MiyFddpyFuTHAgIm24ljX0OliA2LRGPrT4rgFhlZRP981ZJCrPmM/PDO50nc62e4
 N/rhxwgbehdppico+uJVvsRJT9GlYP2fKVHP5Z5MVJBKvayG6qoqv6UGA6nEHzSTWixQ
 vZPl1u5j1pdzi4AQ5mY7DvEaZ5G9CTraR628BLzAysBM8NxX0J7248dt1ctP3cdTGBdk
 4ki6077MMSTgRqm6lPK9P6tjua8ucbOZ/LQ0tqhWI+k64ZJkdSAkTbe9yA81/eW2enWE
 /K1jpszIdHOy5nZdvHh0BxyGIc/0mp5mALu5dh0nqHX8V6HzhYNVN3zUfH8SnB0eYmXo
 whDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=1RQK81eHkq8yc1kfeadt5EYNtBGoEuKdAYto1gErhzc=;
 b=hES6BcLRy2JLISd3NmFZHv9dLWYZV6YFCccYYWxkDGFTVHmzUy8ldqUPPg+X2PqQUL
 vq8ZTavI92uyICnFFNTpjKNzVAL/eY6MbNNyffNLFHt8019hs7qTbgX9xw60Lyt96Tef
 4YgFkZfmCpmhivXVnPvuqyuksWYAIe6AokpMHWAshNTMlNlOp6QSgwYlBwUfbhkd+Q5/
 lf4q3Zox/EdK2JlveNcHE6mwGHhH8HMNogpSdRW7SdwORCbbCY+4PgSwaKP6/AUjWxw/
 TM87166lHQhrYiZhbV/W6ip9/sbU1jHq1/VLZV09Uu5TInTrMY4SSv736h0wwKqZqxl7
 kQBg==
X-Gm-Message-State: AOAM530fVpPZm7HVT3dURMovE4OFhnA05HWVoNVQ9uO42bnBwseSnk+i
 2BE5uZ5u0CN/DovYxryj2X4=
X-Google-Smtp-Source: ABdhPJygtYo9+UK8o8C4+DXRTtWC3sAw9KxKlFMCS9b4ib9pPE7diULd0c7YtsZYkelgaMh1SkiiFQ==
X-Received: by 2002:a17:90a:fd12:: with SMTP id
 cv18mr14477227pjb.66.1594537594990; 
 Sun, 12 Jul 2020 00:06:34 -0700 (PDT)
Received: from saurav ([203.187.233.95])
 by smtp.gmail.com with ESMTPSA id g8sm10338465pgr.70.2020.07.12.00.06.32
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 12 Jul 2020 00:06:34 -0700 (PDT)
Date: Sun, 12 Jul 2020 12:36:28 +0530
From: Saurav Girepunje <saurav.girepunje@gmail.com>
To: abbotti@mev.co.uk, hsweeten@visionengravers.com,
 gregkh@linuxfoundation.org, saurav.girepunje@gmail.com,
 devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Subject: [PATCH] Staging: comedi: driver: Remove condition with no effect
Message-ID: <20200712070628.GA18340@saurav>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
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
Cc: saurav.girepunje@hotmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Remove below warning in das1800.c
WARNING: possible condition with no effect (if == else)

Signed-off-by: Saurav Girepunje <saurav.girepunje@gmail.com>
---
 drivers/staging/comedi/drivers/das1800.c | 6 ------
 1 file changed, 6 deletions(-)

diff --git a/drivers/staging/comedi/drivers/das1800.c b/drivers/staging/comedi/drivers/das1800.c
index f16aa7e9f4f3..7ab72e83d3d0 100644
--- a/drivers/staging/comedi/drivers/das1800.c
+++ b/drivers/staging/comedi/drivers/das1800.c
@@ -1299,12 +1299,6 @@ static int das1800_attach(struct comedi_device *dev,
 			outb(DAC(i), dev->iobase + DAS1800_SELECT);
 			outw(0, dev->iobase + DAS1800_DAC);
 		}
-	} else if (board->id == DAS1800_ID_AO) {
-		/*
-		 * 'ao' boards have waveform analog outputs that are not
-		 * currently supported.
-		 */
-		s->type		= COMEDI_SUBD_UNUSED;
 	} else {
 		s->type		= COMEDI_SUBD_UNUSED;
 	}
-- 
2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
