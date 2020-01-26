Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id ED0FB149C1F
	for <lists+driverdev-devel@lfdr.de>; Sun, 26 Jan 2020 18:38:10 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id EEA412045B;
	Sun, 26 Jan 2020 17:38:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id YsNw1S0SwISS; Sun, 26 Jan 2020 17:38:08 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 9823320453;
	Sun, 26 Jan 2020 17:38:07 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id E16BF1BF32E
 for <devel@linuxdriverproject.org>; Sun, 26 Jan 2020 17:38:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id DDE5F87552
 for <devel@linuxdriverproject.org>; Sun, 26 Jan 2020 17:38:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 0iMjTZuL-yiD for <devel@linuxdriverproject.org>;
 Sun, 26 Jan 2020 17:38:04 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lj1-f194.google.com (mail-lj1-f194.google.com
 [209.85.208.194])
 by hemlock.osuosl.org (Postfix) with ESMTPS id E99E18754B
 for <devel@driverdev.osuosl.org>; Sun, 26 Jan 2020 17:38:03 +0000 (UTC)
Received: by mail-lj1-f194.google.com with SMTP id w1so8231939ljh.5
 for <devel@driverdev.osuosl.org>; Sun, 26 Jan 2020 09:38:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:mime-version:content-disposition
 :user-agent; bh=uQCsuSWxUoS41fOaGTKbaWt4unoRSaSJnXlIAweW6F0=;
 b=mybox7dBk7EcxeQzW5QQ5j0Iz6I5zw9PLg8XdqPwDymlsQUQv4DKPsIrRPFQpJ+ZCY
 YxAWzb54kBSo6FiqgnOiVUgfCgWdDwXxRWCCpwiiVs396Kau+Lbs4VlTKzMz+j1GTBRC
 AVH1Z1VQeFJ8/hRAaM6n+nfO68TOk9249PHkJhg4yCYlVo/HllETs4JxqFATGuXSqR9C
 /r82gYC3rxmTmgyTSn+3+RNykp6kIuqdkd9HHct8Ti/qIEdhN7D204hSIbs50XIzcCdU
 Xq7p0l4taeeFhhYjBbiNT5DBEr8/I470PdkiBsGoGpeL4kyRcWLA/F7mbjH/bFyNZERq
 lXyw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=uQCsuSWxUoS41fOaGTKbaWt4unoRSaSJnXlIAweW6F0=;
 b=cTQpH4y/QV36n91gAxwDqX68BuBN8U1ftkS7BnpvelCXSVwX1li6XUoUS5KN1G2oJZ
 r8BxiXvQRIBowjsQLPy47RwDv0zakOuxkEB5VmSmQFqqB4S3JQ0K5lIX2lV6SJSFNRwc
 Utse+ns8xUA7oLLFPEKutPui60dVbv784z+yBuTFKAPceyw0nH/Plf9FxTK/Iimz5s+z
 zOba/3wRUp1DG/vnUPOgkJP6ppEe1+QkT9vb1svvnXYmFisffrF4Xf92k+NAbo8GCtDv
 pbArlHh0sK+l4714vPhtr4I2nTX01skaQJnBKU1/nAFvgJK5gVOyUYIZJEykEd9yKpq9
 miHA==
X-Gm-Message-State: APjAAAWxeaZdetMG/fnEjNOIjJ3X92soKo6AocN4IMnTbE0jum4mV14M
 JORUauJtMDi0KMwMJA0Rpms=
X-Google-Smtp-Source: APXvYqzBLIDC8HJOqEe0fHf0HgYNEn8/pBcCz065lMMZ+ZACh8w85S5ZGRKDC9DCXGD1owsp75jugQ==
X-Received: by 2002:a2e:a30b:: with SMTP id l11mr4852186lje.271.1580060281896; 
 Sun, 26 Jan 2020 09:38:01 -0800 (PST)
Received: from home (109-252-7-246.nat.spd-mgts.ru. [109.252.7.246])
 by smtp.gmail.com with ESMTPSA id p136sm6708868lfa.8.2020.01.26.09.38.00
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Sun, 26 Jan 2020 09:38:01 -0800 (PST)
Date: Sun, 26 Jan 2020 19:37:58 +0200
From: Valery Ivanov <ivalery111@gmail.com>
To: nsaenzjulienne@suse.de
Subject: [PATCH] staging: bcm2835-audio: fix warning of no space is necessary
Message-ID: <20200126173758.GA28897@home>
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
Cc: devel@driverdev.osuosl.org, gregkh@linuxfoundation.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

This patch fixes "No space is necessary after a cast".
Issue found by checkpatch.pl

Signed-off-by: Valery Ivanov <ivalery111@gmail.com>
---
 drivers/staging/vc04_services/bcm2835-audio/bcm2835-pcm.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/vc04_services/bcm2835-audio/bcm2835-pcm.c b/drivers/staging/vc04_services/bcm2835-audio/bcm2835-pcm.c
index 33485184a98a..997ce88c67c4 100644
--- a/drivers/staging/vc04_services/bcm2835-audio/bcm2835-pcm.c
+++ b/drivers/staging/vc04_services/bcm2835-audio/bcm2835-pcm.c
@@ -237,7 +237,7 @@ static void snd_bcm2835_pcm_transfer(struct snd_pcm_substream *substream,
 {
 	struct snd_pcm_runtime *runtime = substream->runtime;
 	struct bcm2835_alsa_stream *alsa_stream = runtime->private_data;
-	void *src = (void *) (substream->runtime->dma_area + rec->sw_data);
+	void *src = (void *)(substream->runtime->dma_area + rec->sw_data);
 
 	bcm2835_audio_write(alsa_stream, bytes, src);
 }
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
