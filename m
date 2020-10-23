Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 0911829776D
	for <lists+driverdev-devel@lfdr.de>; Fri, 23 Oct 2020 21:02:12 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id D9B97876F7;
	Fri, 23 Oct 2020 19:02:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id qP4R3I5OSSA9; Fri, 23 Oct 2020 19:02:10 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id AB6328730D;
	Fri, 23 Oct 2020 19:02:09 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 8E5701BF2CB
 for <devel@linuxdriverproject.org>; Fri, 23 Oct 2020 19:02:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 89022878A4
 for <devel@linuxdriverproject.org>; Fri, 23 Oct 2020 19:02:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id CFShfyPfYAZZ for <devel@linuxdriverproject.org>;
 Fri, 23 Oct 2020 19:02:08 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lj1-f196.google.com (mail-lj1-f196.google.com
 [209.85.208.196])
 by hemlock.osuosl.org (Postfix) with ESMTPS id BA2708782F
 for <devel@driverdev.osuosl.org>; Fri, 23 Oct 2020 19:02:07 +0000 (UTC)
Received: by mail-lj1-f196.google.com with SMTP id d24so2649196ljg.10
 for <devel@driverdev.osuosl.org>; Fri, 23 Oct 2020 12:02:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:subject:from:to:cc:date:user-agent:mime-version
 :content-transfer-encoding;
 bh=qlsMOKXM/uvAxT1SrbRPjtwFfgH27iIs9VjOn8nGroI=;
 b=H5Rb+JNWW9lNhL+QGWiM2O/hx2JAH4KG+qD5jQa+tOyBIOGLDo3VLvAZ6tb/XDPl6K
 2kSuelIXAYdaOcLD+6geUmSW5CNSgKmuz45nxn9ciGnI8wpM9HkSOyz4VrTw5dKUreYw
 3rgT3gVvFk9fkaA4O7QaVhwdz/zt7/RdqcXqPprAQoTq6zao0XsTvz7zQnUN5Lf6GVTj
 EWSGu3d0Hm+an/bYI/pjBgG/xWPzwUwyuFXediFzmUzFLCdkuDZmyw2lUqlcXa0Hqeh2
 MEt+RIO0BmPaeVAc+HBgmmJ9/MW58mZYjHSyvMHtmjknPgzmcqHjH1/n/jA6MTh0ToNR
 76vQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:subject:from:to:cc:date:user-agent
 :mime-version:content-transfer-encoding;
 bh=qlsMOKXM/uvAxT1SrbRPjtwFfgH27iIs9VjOn8nGroI=;
 b=ekarTJV16Z51tK6eTpHy6XepTzjo9ATX9XAXhfkM6GVGv5JtPYwXLZyZkvOdReAfuB
 ZZSaS9yE1a3Gh3qIvzKknnSctiIDBYl1UggahBJn0SO+qJaXGW+DFPRMa6CGjKa+gNRw
 ozF6bf2OMObJD7Va2E21oupM5jsaezzmHAMn3ZRmA7DvolfdOeQ6+QZOIlgWZtrWB0Dq
 nGAPiGytvLinQGGWQUpN9Y/3t8jNO4VQHSrV9hqnX0aawwlTduKJDeZGKUKgn7S5Vrqy
 nSRLuDtlin1JlUUqZlPTo11deQpc7SFtHtK1f94PzH5v8g/SLKyBxllmxj8tckYXfVim
 /nzQ==
X-Gm-Message-State: AOAM533nAJXS8TGY40K6L4C3RoueskPUuaSuaZbfNwz0zzHS/jRrQ5Iy
 V7i2dZHKonGiJRjWky7mkwU=
X-Google-Smtp-Source: ABdhPJxw/MldTQMCL7adVgnIlCe6NWv2PbPS9f1tw++P6rPt1uBN/eN2Jyheq+Ys7q07QK3U2rJm/w==
X-Received: by 2002:a2e:905:: with SMTP id 5mr1332793ljj.136.1603479725775;
 Fri, 23 Oct 2020 12:02:05 -0700 (PDT)
Received: from [192.168.167.128] (37-145-186-126.broadband.corbina.ru.
 [37.145.186.126])
 by smtp.gmail.com with ESMTPSA id x131sm214266lff.175.2020.10.23.12.02.04
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 23 Oct 2020 12:02:05 -0700 (PDT)
Message-ID: <70502773399d4cf064d3363c41cce19191710112.camel@gmail.com>
Subject: [PATCH v2] staging: rtl8192e: replace kmalloc/memset with kzalloc
From: Elena Afanasova <eafanasova@gmail.com>
To: gregkh@linuxfoundation.org
Date: Fri, 23 Oct 2020 12:01:47 -0700
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
Changes in v2:
	- correct the subject line
	- correct the commit message

 drivers/staging/rtl8192e/rtllib_tx.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/staging/rtl8192e/rtllib_tx.c b/drivers/staging/rtl8192e/rtllib_tx.c
index e0d79daca24a..c9959bb4ab63 100644
--- a/drivers/staging/rtl8192e/rtllib_tx.c
+++ b/drivers/staging/rtl8192e/rtllib_tx.c
@@ -205,12 +205,10 @@ static struct rtllib_txb *rtllib_alloc_txb(int nr_frags, int txb_size,
 	struct rtllib_txb *txb;
 	int i;
 
-	txb = kmalloc(sizeof(struct rtllib_txb) + (sizeof(u8 *) * nr_frags),
-		      gfp_mask);
+	txb = kzalloc(sizeof(*txb) + (sizeof(u8 *) * nr_frags), gfp_mask);
 	if (!txb)
 		return NULL;
 
-	memset(txb, 0, sizeof(struct rtllib_txb));
 	txb->nr_frags = nr_frags;
 	txb->frag_size = cpu_to_le16(txb_size);
 
-- 
2.25.1


_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
