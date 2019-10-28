Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6437EE7555
	for <lists+driverdev-devel@lfdr.de>; Mon, 28 Oct 2019 16:39:20 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id EFFED87463;
	Mon, 28 Oct 2019 15:39:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id WRtRrt38kjDP; Mon, 28 Oct 2019 15:39:17 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id C7D2C8739D;
	Mon, 28 Oct 2019 15:39:16 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 940AC1BF35C
 for <devel@linuxdriverproject.org>; Mon, 28 Oct 2019 15:39:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 8A46B204A2
 for <devel@linuxdriverproject.org>; Mon, 28 Oct 2019 15:39:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id hF2ox2bPnmht for <devel@linuxdriverproject.org>;
 Mon, 28 Oct 2019 15:39:15 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-qk1-f196.google.com (mail-qk1-f196.google.com
 [209.85.222.196])
 by silver.osuosl.org (Postfix) with ESMTPS id D963C203F8
 for <devel@driverdev.osuosl.org>; Mon, 28 Oct 2019 15:39:14 +0000 (UTC)
Received: by mail-qk1-f196.google.com with SMTP id e2so328048qkn.5
 for <devel@driverdev.osuosl.org>; Mon, 28 Oct 2019 08:39:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=jGuqyUAqHlQaOIqeuq1FvB8I+0XN2CCaqS3R8KrwwS8=;
 b=kuNp+E9V5EDjkD+hU886wEFlkGJAKlDHlN5v0LpjyEmVmh6lYG9qlpOSHnCAlaAL4a
 7Oi5hpSouapmuPH/xYHZfByCc++JM3+dNrOXhWDexUWiASrFLlkfNlvpDuAWygVxtHU1
 d159ttqrVywPDhJdaxyeHcAxEQVWidnEquJZUCRK9gfkxw5jgnvsmSp2SCPC4KSn32YY
 Dd0PotfFt78OCZht5zwpXgK9XKRUtfzcSaB4g23eZlyjj/iGDKc1p4EjuyfmTm0dw+zv
 Xyf+0hEwQbZl49EHPWIbTDPOCT1V9cHvE6PMiFE/Wp/V9c/leeX+/B3yPJLFlIbD3E12
 YEYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=jGuqyUAqHlQaOIqeuq1FvB8I+0XN2CCaqS3R8KrwwS8=;
 b=pdhyypbCSi5KddtehQyl1Dqq7+gSRCcS9BDe0idorEqhhwvDNNk3Nokvi928sG69cw
 2IirfaX3iQfQUC3nmVX8apcff8MGdGZo51/w4KMh9F3nqyLDGMbVBCtDcUlQnwehPDla
 TI+mytfhXaFcIbaGv8zgz2k7SpsG8AfrlcHu6F9s30+3kB6tGow759n3bhXmxMbDvqZV
 HAXyM7jcyQreM26t319Rmj5yNfSd4to5gsQ6T+LJCy0HseW32FoTAeYkqhGK7p9Paz1h
 1BfCZ1EYCAJoLyk6ULptEwnGr0t0K42Am/L+aFAo29WTgPVaWM0B62+gdF9yz8cVKvfZ
 2EXQ==
X-Gm-Message-State: APjAAAXg+OICJmw9uR5Cg1LhyRKpZ+aVUYUQ31uwo3KwBPRgL+BXlRZz
 CGDvQXaP1ce/1cqpktGZe7HjD/iCRb48Hw==
X-Google-Smtp-Source: APXvYqxJfPqkRNE6nLG0uTd8GbGyxXNP23v2Q6IHQcq5s6plJCZTv2CBpYxDL6WznxYSsYu8k+df/Q==
X-Received: by 2002:a05:620a:15cc:: with SMTP id
 o12mr2537160qkm.252.1572277153869; 
 Mon, 28 Oct 2019 08:39:13 -0700 (PDT)
Received: from cristiane-Inspiron-5420 ([131.100.148.220])
 by smtp.gmail.com with ESMTPSA id g126sm6668657qkb.133.2019.10.28.08.39.11
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 28 Oct 2019 08:39:13 -0700 (PDT)
Date: Mon, 28 Oct 2019 12:39:08 -0300
From: Cristiane Naves <cristianenavescardoso09@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v4 2/2] staging: rtl8712: Remove lines before a close brace
Message-ID: <359179720fcf90dd7aa35faab5d074bc829fa192.1572276208.git.cristianenavescardoso09@gmail.com>
References: <cover.1572276208.git.cristianenavescardoso09@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <cover.1572276208.git.cristianenavescardoso09@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
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
Cc: devel@driverdev.osuosl.org,
 Florian Schilhabel <florian.c.schilhabel@googlemail.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 Julia Lawall <julia.lawall@lip6.fr>, Larry Finger <Larry.Finger@lwfinger.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Fix Blank lines aren't necessary before a close brace '}'. Issue found
by checkpatch.

Signed-off-by: Cristiane Naves <cristianenavescardoso09@gmail.com>
---
 drivers/staging/rtl8712/rtl8712_recv.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/staging/rtl8712/rtl8712_recv.c b/drivers/staging/rtl8712/rtl8712_recv.c
index 36d5d2c..06de031 100644
--- a/drivers/staging/rtl8712/rtl8712_recv.c
+++ b/drivers/staging/rtl8712/rtl8712_recv.c
@@ -289,7 +289,6 @@ union recv_frame *r8712_recvframe_chk_defrag(struct _adapter *padapter,
 			r8712_free_recvframe(precv_frame, pfree_recv_queue);
 			prtnframe = NULL;
 		}
-
 	}
 	if ((ismfrag == 0) && (fragnum != 0)) {
 		/* the last fragment frame
@@ -438,7 +437,6 @@ void r8712_rxcmd_event_hdl(struct _adapter *padapter, void *prxcmdbuf)
 		r8712_event_handle(padapter, (__le32 *)poffset);
 		poffset += (cmd_len + 8);/*8 bytes alignment*/
 	} while (le32_to_cpu(voffset) & BIT(31));
-
 }
 
 static int check_indicate_seq(struct recv_reorder_ctrl *preorder_ctrl,
-- 
2.7.4

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
