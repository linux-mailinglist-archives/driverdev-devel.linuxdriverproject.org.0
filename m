Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 19308245945
	for <lists+driverdev-devel@lfdr.de>; Sun, 16 Aug 2020 21:28:08 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 60C3A87D9E;
	Sun, 16 Aug 2020 19:28:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id znDz6O0jvrGb; Sun, 16 Aug 2020 19:28:06 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 71DB987D58;
	Sun, 16 Aug 2020 19:28:05 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id CB9EF1BF21A
 for <devel@linuxdriverproject.org>; Sun, 16 Aug 2020 19:28:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id C68ED87D6D
 for <devel@linuxdriverproject.org>; Sun, 16 Aug 2020 19:28:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id RcsJLK2KpkNU for <devel@linuxdriverproject.org>;
 Sun, 16 Aug 2020 19:28:02 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f67.google.com (mail-wr1-f67.google.com
 [209.85.221.67])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 2083B87D58
 for <devel@driverdev.osuosl.org>; Sun, 16 Aug 2020 19:28:02 +0000 (UTC)
Received: by mail-wr1-f67.google.com with SMTP id 88so12869222wrh.3
 for <devel@driverdev.osuosl.org>; Sun, 16 Aug 2020 12:28:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=qmVZU2POW4M1NknCFfoJ+T7RKAAxlTCPnNob32YEXP4=;
 b=FI13GFTDazrcCLiwoMFoX4rPxfeSLd+dEX0MnJIXY38KAk+OoAxDTTH/LWrrR/lQau
 FS9gmx2OqHIFY6vjpcx/71Ym1XOkivVCVgWOjIq6kogNa/Xrb3Yho3gOGG3+vJyV4pA3
 gckna1DsvjcCCwNrQRi7MHpB2YhIVaMgJTFQhs45G6yzC0gb0tHJZJmYOV6s6AUjjRwk
 ZjJgWfNVcWVJSDwmbdZgh3Nm2wYQycbaUHjY7/yKO5V6pLGTTSZhU8aenemekkTvY5x0
 xroYsQNjE1YRyIgqQ/o12hGMtV4MDX0/5oYyEdyY00pHVPSoecavdi1obsR4PjIsfEWy
 P1KA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=qmVZU2POW4M1NknCFfoJ+T7RKAAxlTCPnNob32YEXP4=;
 b=J4Dnp0Eh6gBeKK/jFRlGewqKW2SY0Preeex0mJBgwuGpJowruFfbKQL6wjWryTn/az
 Qdqg36ulrZGhmkzHV5A1XI9GwFfJ9lynktw0RP+8UB3gl8b1tfBcfT4cTUTlFkCoQrTC
 EM3bOG5Fj6amTnPJB7DqNWe9XsMdGtCEn0NYi0nPAOdKzf+fylv3VJcK0JXHbafbem08
 sFJi6rQVn6qAEDThFIj5lckMFYv+KEtrjR3iGbXi3ciPwOQ056cHiXwUZ+41hvJLLD9d
 E0LH7NvuQZHJIn9aYAUQc3UUJdt17SfHoethsKAEvcgQBPQCaBE47x0zi7LSPytKBCaT
 97ag==
X-Gm-Message-State: AOAM53130Ux3vWuYvLymD76+QCxAfQYXgsOPszxHLsIXa0lKTbsDRgtB
 Nlp0AGTwU4/cgy5wiwGdsGk=
X-Google-Smtp-Source: ABdhPJws100GEXO8VJoudjq/JU8ylyAC9G/2T2ozuekoGXQnoiSSFbbidajX0sTKjRXP8SKt9PCiIA==
X-Received: by 2002:adf:f48d:: with SMTP id l13mr11505879wro.43.1597606080602; 
 Sun, 16 Aug 2020 12:28:00 -0700 (PDT)
Received: from tsnow ([94.159.146.190])
 by smtp.gmail.com with ESMTPSA id r11sm26917543wrw.78.2020.08.16.12.24.30
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 16 Aug 2020 12:28:00 -0700 (PDT)
Date: Sun, 16 Aug 2020 22:24:22 +0300
From: Tomer Samara <tomersamara98@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH v2 2/4] staging: android: Add error handling to
 ion_page_pool_shrink
Message-ID: <73d1b8b904ae867f59e7ada14c3fb90e27f12bbb.1597602783.git.tomersamara98@gmail.com>
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

Add error check to ion_page_pool_shrink after calling
ion_page_pool_remove, due to converting BUG_ON to WARN_ON.

Signed-off-by: Tomer Samara <tomersamara98@gmail.com>
---
 drivers/staging/android/ion/ion_page_pool.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/staging/android/ion/ion_page_pool.c b/drivers/staging/android/ion/ion_page_pool.c
index c1b9eda35c96..031550473000 100644
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
