Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 847362458C6
	for <lists+driverdev-devel@lfdr.de>; Sun, 16 Aug 2020 19:22:52 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 26FE487DC5;
	Sun, 16 Aug 2020 17:22:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id jL9qAmcATIhp; Sun, 16 Aug 2020 17:22:50 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 7D94087AE7;
	Sun, 16 Aug 2020 17:22:50 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id CF43C1BF410
 for <devel@linuxdriverproject.org>; Sun, 16 Aug 2020 17:22:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id CBA0885FA7
 for <devel@linuxdriverproject.org>; Sun, 16 Aug 2020 17:22:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 0OkQvhfKMjrq for <devel@linuxdriverproject.org>;
 Sun, 16 Aug 2020 17:22:47 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f65.google.com (mail-wr1-f65.google.com
 [209.85.221.65])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 203F9858BF
 for <devel@driverdev.osuosl.org>; Sun, 16 Aug 2020 17:22:47 +0000 (UTC)
Received: by mail-wr1-f65.google.com with SMTP id y3so12677224wrl.4
 for <devel@driverdev.osuosl.org>; Sun, 16 Aug 2020 10:22:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=XLquzJ4Zpz4GTbTovMw+SxCIL1JgsFNaSaKJHhRL954=;
 b=dra6Xs1FfI0Lb1mG/3mE38cZQ8j4WyS/0LX3/RQ3O+LfuIo1ev7JuXgB6aZbK7gCCF
 ZD+sVZVwOBVyfS9gYnU0ZHRITB9XSOBELQ8CUdgsHKGx75ZrFnwdlt3rIn2BhfIT0z1S
 nU2YHVsyUREph4Hp23fZbuxQVuw0FVjp2BvOLrz8Fd/bO3Tp/eW6IIXO0FVGZf660Fni
 LolLmA7SQCB9pRRtBnmp6/Bf+NVCHGisnh+/A0HG8J1aAlhr4HcTx4D6tGOO2dPIUeM3
 QDj2GiFpeRn1NGYDJN2/kLH1OYRmCi9csKf5xIv4rUQbSBOsYYJOe9FyM8SJlrYj2WTd
 VgkQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=XLquzJ4Zpz4GTbTovMw+SxCIL1JgsFNaSaKJHhRL954=;
 b=bqolj9vqwCDtMjtvqg6aZDOhRtCDwx03O8RtLiS8jZzw4TFP2mzkZJsnupQt/jkU+w
 Mj6Z7goK/tigVbsDexB4lJg3cPYe8iMSt6JT3UzscJyo5/PD9c8u6umpDYqPktVpz3HG
 NZ6OL30N3DInfbrMOvAONVBDD6A2dQ9CC5+Ipovx/HDXRsYgLaU3Qt+9HnovWX54EY3q
 iby79AVafMSproFA0EgZmpOhvUYhIJ9ERKIQLY9eZddd0+qz4WHNMV36q8p4/8r9oxgP
 9lrUg72TccDP6Cx9xtWSzsRRBp3iFy2eTQUOdUUbNIrJwEsPPcD48xuaCagwtpnozHyY
 jUjQ==
X-Gm-Message-State: AOAM532xhI9mIBO3sXyzJHUpQpz6mFHISeaD4WFkCjVtyLLeCctbjIfu
 o14JZ0tsszIVK7ZxlWx0m6o=
X-Google-Smtp-Source: ABdhPJxR11i5f+Cs3K/ILM8AxeiIikHgTcvQ0euuo39kYeEg/xSCd7R/0LV7+ANNg/+PE9OC3o6s/A==
X-Received: by 2002:a5d:5084:: with SMTP id a4mr11842768wrt.191.1597598565525; 
 Sun, 16 Aug 2020 10:22:45 -0700 (PDT)
Received: from tsnow ([94.159.146.190])
 by smtp.gmail.com with ESMTPSA id y142sm28540563wmd.3.2020.08.16.10.22.43
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 16 Aug 2020 10:22:45 -0700 (PDT)
Date: Sun, 16 Aug 2020 20:22:41 +0300
From: Tomer Samara <tomersamara98@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH 3/3] staging: androind: Convert BUG() to WARN()
Message-ID: <8df6206000524d4a0043a7a1df97b2be2d277995.1597597955.git.tomersamara98@gmail.com>
References: <cover.1597597955.git.tomersamara98@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <cover.1597597955.git.tomersamara98@gmail.com>
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
