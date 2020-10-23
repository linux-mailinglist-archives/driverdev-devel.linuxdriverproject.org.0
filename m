Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 66420297736
	for <lists+driverdev-devel@lfdr.de>; Fri, 23 Oct 2020 20:47:31 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id F13C587958;
	Fri, 23 Oct 2020 18:47:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 9BDwZ-UT6FNP; Fri, 23 Oct 2020 18:47:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 547B387944;
	Fri, 23 Oct 2020 18:47:28 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 65F9B1BF39F
 for <devel@linuxdriverproject.org>; Fri, 23 Oct 2020 18:47:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 5CEEA2153E
 for <devel@linuxdriverproject.org>; Fri, 23 Oct 2020 18:47:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id cHPzMlg2zyWz for <devel@linuxdriverproject.org>;
 Fri, 23 Oct 2020 18:47:24 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lj1-f196.google.com (mail-lj1-f196.google.com
 [209.85.208.196])
 by silver.osuosl.org (Postfix) with ESMTPS id 022D92153D
 for <devel@driverdev.osuosl.org>; Fri, 23 Oct 2020 18:47:23 +0000 (UTC)
Received: by mail-lj1-f196.google.com with SMTP id a5so2598616ljj.11
 for <devel@driverdev.osuosl.org>; Fri, 23 Oct 2020 11:47:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:subject:from:to:cc:date:user-agent:mime-version
 :content-transfer-encoding;
 bh=u/tW7eVCfHGY9hMZbenszHfGZCctcOjNQMSRv2EDhcU=;
 b=tNxvnlbMoRurgHQF4IvYKx8rWo3rrZNrk1qOv3slPPyRFsNla0OkJgWkuBhmSSOqX0
 QMaCvbKbZuu6gyHtF6Frg2PRHAH9K2/gCoAZ2EF4ck+Bhwq0by+BRf4Fon+fi6B0pIaY
 h1SujMBuaOJYeJ/cnacm82mxDuJ5/+aLllh+KIUlBgMzmaKNiJlCwYOMsv5hkc5TaaXU
 EF49uurQJwlfEERk8WNz+h1rqW+UfY528gRz0Mnc3bYmnh0Bsu4UkIJPxL9d93k3ulq6
 5jH7J9LRdhUSONd1uhTSDjwJRg+XpYJVNdpFROgm0KsdE+E/z9DTfDX2D2Df95OWvOIO
 1LJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:subject:from:to:cc:date:user-agent
 :mime-version:content-transfer-encoding;
 bh=u/tW7eVCfHGY9hMZbenszHfGZCctcOjNQMSRv2EDhcU=;
 b=M829NNeWCFz6xsaHLMjvM/YE0LcAOotjvo7EJd4G9RC7twQuIy4RThRhcEo1v5LKrb
 mmeAkOL7l7unZfcMkhlXXRJNdrlYfFiC45pikp0TmwkTbWjn5KkWpSQH7ma+lXcOg3jd
 fovJD5euh+xhcoh+yrXwg2+vWChPZpbpkr57SU3JmgcOWkTzmPjBnifEyCa27WFMMTUL
 AvdcXmikDbRL3rSZV3E54b0XrN6AwlpAcfoPiVZARV/Xq1oVmHA36eRUD6pDTK2+UxGk
 LZz0mdSdVAJEtt7f/KEhWz9LiqwzST27l3mKMtY9ACGeA13bd0kDu4a0tH6c2DDEjRO1
 u43g==
X-Gm-Message-State: AOAM530wHRDulkuPr41VJhsJq8Bc0f20fe4Tz0I6NTARvLwBj5sbUqZl
 +5P3k9GqHMl4cASf5uwwcYE=
X-Google-Smtp-Source: ABdhPJxvO7bURPaWrmTgdMulYr44rQ8NlzbpiybFUULhoIBSBmYjS/zdiheLDowcEtXxLRADHUNf0Q==
X-Received: by 2002:a2e:5853:: with SMTP id x19mr1321082ljd.24.1603478841928; 
 Fri, 23 Oct 2020 11:47:21 -0700 (PDT)
Received: from [192.168.167.128] (37-145-186-126.broadband.corbina.ru.
 [37.145.186.126])
 by smtp.gmail.com with ESMTPSA id w71sm214005lff.36.2020.10.23.11.47.21
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 23 Oct 2020 11:47:21 -0700 (PDT)
Message-ID: <b0d792de290fd492ac77cfa574150d67d3b6276c.camel@gmail.com>
Subject: [PATCH v2] staging: rtl8192u: ieee80211: replace kmalloc/memset
 with kzalloc
From: Elena Afanasova <eafanasova@gmail.com>
To: gregkh@linuxfoundation.org
Date: Fri, 23 Oct 2020 11:47:05 -0700
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

 drivers/staging/rtl8192u/ieee80211/ieee80211_tx.c | 5 +----
 1 file changed, 1 insertion(+), 4 deletions(-)

diff --git a/drivers/staging/rtl8192u/ieee80211/ieee80211_tx.c b/drivers/staging/rtl8192u/ieee80211/ieee80211_tx.c
index 63a561ab4a76..fb8483c499b3 100644
--- a/drivers/staging/rtl8192u/ieee80211/ieee80211_tx.c
+++ b/drivers/staging/rtl8192u/ieee80211/ieee80211_tx.c
@@ -227,13 +227,10 @@ static struct ieee80211_txb *ieee80211_alloc_txb(int nr_frags, int txb_size,
 {
 	struct ieee80211_txb *txb;
 	int i;
-	txb = kmalloc(
-		sizeof(struct ieee80211_txb) + (sizeof(u8 *) * nr_frags),
-		gfp_mask);
+	txb = kzalloc(sizeof(*txb) + (sizeof(u8 *) * nr_frags), gfp_mask);
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
