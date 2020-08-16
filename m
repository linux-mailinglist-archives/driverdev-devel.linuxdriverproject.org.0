Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 29316245947
	for <lists+driverdev-devel@lfdr.de>; Sun, 16 Aug 2020 21:30:21 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id D624887E45;
	Sun, 16 Aug 2020 19:30:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id yen1u4RpcOxT; Sun, 16 Aug 2020 19:30:18 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 4FE1487B0F;
	Sun, 16 Aug 2020 19:30:18 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 2EABF1BF21A
 for <devel@linuxdriverproject.org>; Sun, 16 Aug 2020 19:30:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 2BA9187D6B
 for <devel@linuxdriverproject.org>; Sun, 16 Aug 2020 19:30:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id MtUiStPxRxBI for <devel@linuxdriverproject.org>;
 Sun, 16 Aug 2020 19:30:15 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f67.google.com (mail-wr1-f67.google.com
 [209.85.221.67])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 7A29987D5C
 for <devel@driverdev.osuosl.org>; Sun, 16 Aug 2020 19:30:15 +0000 (UTC)
Received: by mail-wr1-f67.google.com with SMTP id y3so12866393wrl.4
 for <devel@driverdev.osuosl.org>; Sun, 16 Aug 2020 12:30:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=XLquzJ4Zpz4GTbTovMw+SxCIL1JgsFNaSaKJHhRL954=;
 b=kcdFOTXxO6tcXoc/qn0h8QSC7i96hcX9E6mqbvdkkFh4/Ract8XMzLK/Jxzxp79V4J
 l6MD59eS3W5w2E61BeG1GxwFrK/jPrK1Sw0Z3vwGI+8oKnevNVPfVZgm/fquO6aSke8c
 uAoj9Z0Eol/kmopu2Z4UnYudCONS4E2KbbavGv0GejkcswogXOjWtMqnFrGY5pdm12v8
 zGhlpffW9ah0nk/BxxYpwBoP2Pve+lwlrnIO/Fbl1Yi1ylxN3F4YIuAjJeLgevIyQhj/
 lLxszNyq7swn3cIQPXqgEOia8Ed/HVrrnyzexlHhzUKMDmlW1mSkOCiV3zm79AIeXbkC
 dpDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=XLquzJ4Zpz4GTbTovMw+SxCIL1JgsFNaSaKJHhRL954=;
 b=mNCgIYgpMi5wwDZ857eWFdXM+AAexE01qo3Y1eyPyan9PcgiDnlcaEojU5KEXpsMD8
 o3fjJB7SWRFbUk0beD2pA8brxEmyNBFOd/7nzXECJ981UdwOwfXTGCtJZKSLhmrqMt2l
 LHZXb0xsfkt7OJKlD5/BuqSkrKCCuS0K6DG/t2kEDiW9vIeMIxIkevT/xAYsE1vI2DL5
 ZdURntRGaCajcJ8oFTxKKiPK0VwXCm962J6q0ac1Pp1budDFgQSzsvLP0qEPMWFUngJz
 Mdz3h/uy3Nn6mwP1qI9y4wNvUoxny7NKkj613ogFMaLcPERn77Y1AKTi1PN7828hDO4d
 JGiA==
X-Gm-Message-State: AOAM530h/zHVp/2M0E6A6VZ1zsnm3ky5hZN0hGac7JtWAz115pNa+2d1
 8KP+d5dO0tybqa0lq7gAtCU=
X-Google-Smtp-Source: ABdhPJyJcXlT1TRHPVd0k3hl02Itec2AZKk9a03oJxboPilmdcG+9rNBFnVIO6i49mzETlfgGhMnhA==
X-Received: by 2002:a5d:6692:: with SMTP id l18mr11662578wru.211.1597606214107; 
 Sun, 16 Aug 2020 12:30:14 -0700 (PDT)
Received: from tsnow ([94.159.146.190])
 by smtp.gmail.com with ESMTPSA id b2sm25492527wmj.47.2020.08.16.12.30.12
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 16 Aug 2020 12:30:13 -0700 (PDT)
Date: Sun, 16 Aug 2020 22:30:10 +0300
From: Tomer Samara <tomersamara98@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH v2 3/4] staging: android: Convert BUG to WARN
Message-ID: <3a483158a742a38589c8322e96fc00734da441d9.1597602783.git.tomersamara98@gmail.com>
References: <cover.1597602783.git.tomersamara98@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <cover.1597602783.git.tomersamara98@gmail.com>
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
Cc: devel@driverdev.osuosl.org, Todd Kjos <tkjos@android.com>,
 Suren Baghdasaryan <surenb@google.com>, Riley Andrews <riandrews@android.com>,
 dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 Hridya Valsaraju <hridya@google.com>,
 Arve =?iso-8859-1?B?SGr4bm5lduVn?= <arve@android.com>,
 Joel Fernandes <joel@joelfernandes.org>, Laura Abbott <labbott@redhat.com>,
 Martijn Coenen <maco@android.com>, Sumit Semwal <sumit.semwal@linaro.org>,
 Christian Brauner <christian@brauner.io>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

replace BUG() with WARN() at ion_sytem_heap.c, this
fix the following checkpatch issue:
Avoid crashing the kernel - try using WARN_ON &
recovery code ratherthan BUG() or BUG_ON().

Signed-off-by: Tomer Samara <tomersamara98@gmail.com>
---
 drivers/staging/android/ion/ion_system_heap.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/staging/android/ion/ion_system_heap.c b/drivers/staging/android/ion/ion_system_heap.c
index eac0632ab4e8..37065a59ca69 100644
--- a/drivers/staging/android/ion/ion_system_heap.c
+++ b/drivers/staging/android/ion/ion_system_heap.c
@@ -30,7 +30,8 @@ static int order_to_index(unsigned int order)
 	for (i = 0; i < NUM_ORDERS; i++)
 		if (order == orders[i])
 			return i;
-	BUG();
+
+	WARN(1, "%s: Did not found index to order %d", __FUNCTION__, order);
 	return -1;
 }
 
-- 
2.25.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
