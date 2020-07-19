Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id D587722516A
	for <lists+driverdev-devel@lfdr.de>; Sun, 19 Jul 2020 12:56:14 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 573D087BDE;
	Sun, 19 Jul 2020 10:56:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id fMWw5gWr057b; Sun, 19 Jul 2020 10:56:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 9E45287B8E;
	Sun, 19 Jul 2020 10:56:11 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 05F4D1BF27F
 for <devel@linuxdriverproject.org>; Sun, 19 Jul 2020 10:56:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id E845E87B82
 for <devel@linuxdriverproject.org>; Sun, 19 Jul 2020 10:56:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id FawU5oYpKJeK for <devel@linuxdriverproject.org>;
 Sun, 19 Jul 2020 10:56:08 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f194.google.com (mail-pl1-f194.google.com
 [209.85.214.194])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 6794887B77
 for <devel@driverdev.osuosl.org>; Sun, 19 Jul 2020 10:56:08 +0000 (UTC)
Received: by mail-pl1-f194.google.com with SMTP id q17so7346880pls.9
 for <devel@driverdev.osuosl.org>; Sun, 19 Jul 2020 03:56:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=hML1tWez8CnYkrgIciu2FQh/UfjOCl9KNyXr6NyJ9Vg=;
 b=QfgJKpx/653RJOZAtofIhq+3M93kxjphvEa5lkAKbjRT9N0VaPxRg66kQ9c/cnE1IE
 quou9H/FoOfeFvcLMnOHcay+H9nntRZtcYQjS7hIse9EyC2ZNXsqAyFsEI5pI0lMRWCR
 L9V9FI+yHiNZI/LNtfcJYArfjEdkpyfdXeRdZl+dYzkjENRUurmJ5jNWkwqX+l6NFagz
 wyz8fB7SLYRCxlCDCWCMfFCVpsFSZHFxEvf/CIt3YMnLjrQa9hGPZCSTQazuUP7SPTcp
 bbvNgWKXpJAnCiAvNmPDVAHOTjc9ioShBJ4M2S6rSdQjWxAcEJ9/tbs1V4Fj2IYQOIMc
 Jctw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=hML1tWez8CnYkrgIciu2FQh/UfjOCl9KNyXr6NyJ9Vg=;
 b=i0gsdIcf9iiD1AXC/Y57EB3xoyn2Tg+sJ0oVi0vfSTATKBNi9itmxqRTC7TqVq7z1V
 QCUqztcp9OTXDrXHn+1xFRheZGJAEk6APiUH/g+JlNAVdq0Q/XMBvtRWKLWr1UWn7jTL
 dztPIkNhX5VHbrS3xwJjK3o2R5iL+3OdGcL/3FVltu9B5/af/9ynCIs4Ldg9R5de1LLi
 vHAiBvwRVUoZbdbmP3LSGnsz9NpcLTIUCl4BNqAzgvesCt9C/ZFdrU4L9D6gTiMUyfz0
 RDpDxxupV53B4vSo4D92U4E593oFitaXcOzD9G0RZPvATpYfwUvqFbpRgCwKePUvirhk
 VyZg==
X-Gm-Message-State: AOAM532qWqFN4W6U3EXhlSyE5GdS4nBbn/+y4syA6VuN0O5UX3gnuFVT
 KwdzMH+uhGzjJzLsac9fDTI=
X-Google-Smtp-Source: ABdhPJwagQHr9yxy9RMxSYJoO/fsqCb1qMIuArwDbp1b6U0Xx8VqCgVxvAn5gF1pZyzo3wX4pg0qcw==
X-Received: by 2002:a17:90a:7483:: with SMTP id
 p3mr18307351pjk.64.1595156167867; 
 Sun, 19 Jul 2020 03:56:07 -0700 (PDT)
Received: from DV.bbrouter ([117.242.250.233])
 by smtp.gmail.com with ESMTPSA id o26sm13299253pfp.219.2020.07.19.03.56.05
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 19 Jul 2020 03:56:07 -0700 (PDT)
From: Darshan D V <darshandv10@gmail.com>
To: gregkh@linuxfoundation.org, yuehaibing@huawei.com, ardb@kernel.org,
 contact@christina-quast.de
Subject: [PATCH 2/2] staging: rtl8192e: Fixed a coding style warning
Date: Sun, 19 Jul 2020 16:25:57 +0530
Message-Id: <20200719105557.12605-2-darshandv10@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200719105557.12605-1-darshandv10@gmail.com>
References: <20200719092236.GB171181@kroah.com>
 <20200719105557.12605-1-darshandv10@gmail.com>
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
Cc: devel@driverdev.osuosl.org, darshandv10@gmail.com,
 linux-kernel@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

    rtllib_crypt_ccmp.c: Fixed the warning - suspect code indent for
    conditional statements on line #338

Signed-off-by: Darshan D V <darshandv10@gmail.com>
---
 drivers/staging/rtl8192e/rtllib_crypt_ccmp.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8192e/rtllib_crypt_ccmp.c b/drivers/staging/rtl8192e/rtllib_crypt_ccmp.c
index b2af802b9451..b60e2a109ce4 100644
--- a/drivers/staging/rtl8192e/rtllib_crypt_ccmp.c
+++ b/drivers/staging/rtl8192e/rtllib_crypt_ccmp.c
@@ -337,7 +337,7 @@ static int rtllib_ccmp_set_key(void *key, int len, u8 *seq, void *priv)
 		}
 		if (crypto_aead_setauthsize(data->tfm, CCMP_MIC_LEN) ||
 			crypto_aead_setkey(data->tfm, data->key, CCMP_TK_LEN))
-				return -1;
+			return -1;
 	} else if (len == 0) {
 		data->key_set = 0;
 	} else {
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
