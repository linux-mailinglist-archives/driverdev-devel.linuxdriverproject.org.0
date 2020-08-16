Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 252082458C2
	for <lists+driverdev-devel@lfdr.de>; Sun, 16 Aug 2020 19:22:25 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 2158487DC5;
	Sun, 16 Aug 2020 17:22:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id g6crSRztcKaD; Sun, 16 Aug 2020 17:22:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 8244787B0A;
	Sun, 16 Aug 2020 17:22:22 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 962C61BF410
 for <devel@linuxdriverproject.org>; Sun, 16 Aug 2020 17:22:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 9258F87AE7
 for <devel@linuxdriverproject.org>; Sun, 16 Aug 2020 17:22:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id xN534HAHze+t for <devel@linuxdriverproject.org>;
 Sun, 16 Aug 2020 17:22:20 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f67.google.com (mail-wr1-f67.google.com
 [209.85.221.67])
 by hemlock.osuosl.org (Postfix) with ESMTPS id B389287B0A
 for <devel@driverdev.osuosl.org>; Sun, 16 Aug 2020 17:22:19 +0000 (UTC)
Received: by mail-wr1-f67.google.com with SMTP id p20so12677214wrf.0
 for <devel@driverdev.osuosl.org>; Sun, 16 Aug 2020 10:22:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=4HYSjJrSFbsKSpAjQ67ycGR7vDjT9ve1UESwTHkkkXI=;
 b=DqG4KJNvN/4SaxKEUnB/lPtAsnBT+0hftqgEbD/ELCi11rHCN37HnLFWRg7z/TPjcu
 RjLn2Jz6ClO+qvALHNVx18vuJTnSZpa6/01Fm9IbvrDbvh5g2oTB2REorFLoj2zRbsTz
 H1CmbgT+dHD2iaetUduqjbZ7J8Z/nAa+r+L+AdUBHJq0ricgeXhvbetZr+oC3rMj5Nwx
 CJAWZJcNrLn4CMSCVClcdUc2bqtz1NqY4htBSZ86aAXeAfAqeMhTLchb+eRTB+lwXs6W
 RErNdIPdP3Wze55IxRYk9afAfE2Jck4gwmfdUzwTWOwHwhb8eKJkbFS2lV907TI4fAJu
 XJ/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=4HYSjJrSFbsKSpAjQ67ycGR7vDjT9ve1UESwTHkkkXI=;
 b=HSWsgVNwzVy3067YalEUlqgGcpyCLHSGlIr9rKcbXjQlfUXwrcffuj4eNMXDOkqC//
 wY92F2UBpzs1ayJuqjR40iIVply15HX/r/1V3UjBMA3e2FVACu0D7FgjAIyCUNW9N9So
 Luo15dcTnlE11oWhtcIaZLuSQr6x8Ew/XOEvjWuqBJbDaT33vLCRqzyKalpWmKrH+uIR
 9h11fFRyo/PDAXj3ameLgV3i/6uq9nXrwn0Xw0aUJSZ+4YixNmVHbzFfPc79Dh9jmnbN
 aLu2tWWZP/qYfTKTZUSafhzyqGLtH2iI8XjYopsi0cFWyM/CB6iA+Hk+PEU3583vIWHz
 TkFw==
X-Gm-Message-State: AOAM533Hyiv6nb02KC8OIu5kRWwDnyGi65+w+h1rfn+5zc4/uIIMYfsU
 dxe2A7Pu+WBMIRiGP20kCXU=
X-Google-Smtp-Source: ABdhPJzy1vPocCt/eIvyGsJigo6Dhh4MR4Zy5q2onubILtVAnZm5kyjJMAnHnm1ZiMt3s+q2sOwhwg==
X-Received: by 2002:adf:f207:: with SMTP id p7mr12392922wro.292.1597598538151; 
 Sun, 16 Aug 2020 10:22:18 -0700 (PDT)
Received: from tsnow ([94.159.146.190])
 by smtp.gmail.com with ESMTPSA id m14sm27342247wrx.76.2020.08.16.10.22.16
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 16 Aug 2020 10:22:17 -0700 (PDT)
Date: Sun, 16 Aug 2020 20:22:14 +0300
From: Tomer Samara <tomersamara98@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH 2/3] staging: androind: Add error handling to
 ion_page_pool_shrink
Message-ID: <b061899043eba10091cdba36ef0adde170eda801.1597597955.git.tomersamara98@gmail.com>
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

Add error check to ion_page_pool_shrink after calling
ion_page_pool_remove, due to converting BUG_ON to WARN_ON.

Signed-off-by: Tomer Samara <tomersamara98@gmail.com>
---
 drivers/staging/android/ion/ion_page_pool.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/staging/android/ion/ion_page_pool.c b/drivers/staging/android/ion/ion_page_pool.c
index 4acc0eebf781..c61548ecf7f2 100644
--- a/drivers/staging/android/ion/ion_page_pool.c
+++ b/drivers/staging/android/ion/ion_page_pool.c
@@ -128,6 +128,8 @@ int ion_page_pool_shrink(struct ion_page_pool *pool, gfp_t gfp_mask,
 			break;
 		}
 		mutex_unlock(&pool->mutex);
+		if (!page)
+			break;
 		ion_page_pool_free_pages(pool, page);
 		freed += (1 << pool->order);
 	}
-- 
2.25.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
