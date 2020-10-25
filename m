Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 65A162982F7
	for <lists+driverdev-devel@lfdr.de>; Sun, 25 Oct 2020 18:54:55 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id E61438684D;
	Sun, 25 Oct 2020 17:54:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id N0MTYDoFb6EY; Sun, 25 Oct 2020 17:54:52 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 74F9B86789;
	Sun, 25 Oct 2020 17:54:51 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 00D0D1BF473
 for <devel@linuxdriverproject.org>; Sun, 25 Oct 2020 17:54:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id F182A860FF
 for <devel@linuxdriverproject.org>; Sun, 25 Oct 2020 17:54:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id lCwAThEuZbmm for <devel@linuxdriverproject.org>;
 Sun, 25 Oct 2020 17:54:47 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lf1-f68.google.com (mail-lf1-f68.google.com
 [209.85.167.68])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 9080B860FD
 for <devel@driverdev.osuosl.org>; Sun, 25 Oct 2020 17:54:47 +0000 (UTC)
Received: by mail-lf1-f68.google.com with SMTP id h6so8924707lfj.3
 for <devel@driverdev.osuosl.org>; Sun, 25 Oct 2020 10:54:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:subject:from:to:cc:date:user-agent:mime-version
 :content-transfer-encoding;
 bh=Ia5mKQW6kRwT+5DPNWXNNRRRvEqWXjifJg3gF7jPs7k=;
 b=CFwlA2uCYi47hpHH4+kCTfsEcqMtjBssTPqoHAwjH9KlhhUqzxrnogltTbexUHZlbG
 w0+CzgacqBrZG61q0bZNkaeUHWRGwXBueS7Fu7+/JH8UArjd359GrFUrv643OKH9d39D
 NPyRgXeAxl3J2tW6FTxPSPqAcqe8ad+WsgQ/hRxeZbtC9PmufgRxAiuuHSrZpI25zfZX
 ilgM8s1MZp7A7Sx5wxjdDWdpa5Ecrxs46c9I+Ac8+2GN2jucW7yL4LIlTlL0DFl1c3zp
 fThqnk48ajWZgNQMn/fmcnA61j2jBp+2xw20Hkdnl1vNcL/pn2NcaLLPUkjc53jx/Sdk
 mA/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:subject:from:to:cc:date:user-agent
 :mime-version:content-transfer-encoding;
 bh=Ia5mKQW6kRwT+5DPNWXNNRRRvEqWXjifJg3gF7jPs7k=;
 b=QTcT0ia1iRofqxq4NtMFylHcc6zf7R/B1ji62AVYQJwHt+YDkyWHg/FGkd9N11pTr5
 eepRe/O1TPiVYOhRhvHTQQ3ppIZZFlloNE+/tstFJP/I4Mn9w3DkNYUByevTGctd245D
 8xZWTsztTzFeecY5+qBwbmyg6hUjVPnq/hAQcQI1e0CqUg39SnyfNUbRgPiw8/SpMqyf
 wx9t5gugn2JEb39AErB6M267gDrYtRCzS8lJmvD046Ad+rouv3GIsMNkahbdpzBegpVN
 pzQrtiRxImYdPgK/BiOxg6qASWTZCTKgy+NmJ/dZO2cu6rURvBiBEhVcq0IsEbHoKMCd
 06ng==
X-Gm-Message-State: AOAM53343hVs6fcEgvRxxk2m0gFMDYSPR6ejcuo9VHD1gM9/j2D59vKv
 5xMi5x+QTwh6UveuQNkUoBI=
X-Google-Smtp-Source: ABdhPJwjKaFW00rHi2muGQJnbJwyezQZuDm54Vp0uz8bVb80iIEaN7phyG2BwjFy1It7AtfCF7J41w==
X-Received: by 2002:a19:589:: with SMTP id 131mr3972541lff.229.1603648485573; 
 Sun, 25 Oct 2020 10:54:45 -0700 (PDT)
Received: from [192.168.167.128] (37-145-186-126.broadband.corbina.ru.
 [37.145.186.126])
 by smtp.gmail.com with ESMTPSA id t10sm208469lfc.258.2020.10.25.10.54.44
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 25 Oct 2020 10:54:44 -0700 (PDT)
Message-ID: <43e637becf35f98a952c38ee1a5b690798c62c75.camel@gmail.com>
Subject: [PATCH v3] staging: rtl8192u: ieee80211: replace kmalloc/memset
 with kzalloc
From: Elena Afanasova <eafanasova@gmail.com>
To: gregkh@linuxfoundation.org
Date: Sun, 25 Oct 2020 10:54:31 -0700
User-Agent: Evolution 3.36.4-0ubuntu1 
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
Cc: devel@driverdev.osuosl.org, outreachy-kernel@googlegroups.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Replace kmalloc + memset 0 by a call to kzalloc which zeroes memory too.
Found with Coccinelle.

Signed-off-by: Elena Afanasova <eafanasova@gmail.com>
---
Changes in v3:
        - use array_size()
Changes in v2:
        - correct the subject line
        - correct the commit message

 drivers/staging/rtl8192u/ieee80211/ieee80211_tx.c | 5 +----
 1 file changed, 1 insertion(+), 4 deletions(-)

diff --git a/drivers/staging/rtl8192u/ieee80211/ieee80211_tx.c b/drivers/staging/rtl8192u/ieee80211/ieee80211_tx.c
index 63a561ab4a76..53ce97aae206 100644
--- a/drivers/staging/rtl8192u/ieee80211/ieee80211_tx.c
+++ b/drivers/staging/rtl8192u/ieee80211/ieee80211_tx.c
@@ -227,13 +227,10 @@ static struct ieee80211_txb *ieee80211_alloc_txb(int nr_frags, int txb_size,
 {
 	struct ieee80211_txb *txb;
 	int i;
-	txb = kmalloc(
-		sizeof(struct ieee80211_txb) + (sizeof(u8 *) * nr_frags),
-		gfp_mask);
+	txb = kzalloc(sizeof(*txb) + array_size(sizeof(u8 *), nr_frags), gfp_mask);
 	if (!txb)
 		return NULL;
 
-	memset(txb, 0, sizeof(struct ieee80211_txb));
 	txb->nr_frags = nr_frags;
 	txb->frag_size = __cpu_to_le16(txb_size);
 
-- 
2.25.1


_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
