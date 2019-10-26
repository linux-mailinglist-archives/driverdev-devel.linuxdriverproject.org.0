Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id A602AE5F88
	for <lists+driverdev-devel@lfdr.de>; Sat, 26 Oct 2019 22:31:41 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 7A45786096;
	Sat, 26 Oct 2019 20:31:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Rn2vP6lGWfKP; Sat, 26 Oct 2019 20:31:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 52CD385EF9;
	Sat, 26 Oct 2019 20:31:35 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 0ED751BF5E6
 for <devel@linuxdriverproject.org>; Sat, 26 Oct 2019 20:31:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 0BB5985D5F
 for <devel@linuxdriverproject.org>; Sat, 26 Oct 2019 20:31:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id OrnudYueSwHJ for <devel@linuxdriverproject.org>;
 Sat, 26 Oct 2019 20:31:32 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-qt1-f195.google.com (mail-qt1-f195.google.com
 [209.85.160.195])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 1451885C9A
 for <devel@driverdev.osuosl.org>; Sat, 26 Oct 2019 20:31:32 +0000 (UTC)
Received: by mail-qt1-f195.google.com with SMTP id z22so8633091qtq.11
 for <devel@driverdev.osuosl.org>; Sat, 26 Oct 2019 13:31:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=tbkGc2uRqrthDU52A0rFG/A+QNzAVuHvzOb7BZHUvFs=;
 b=FPEceSXX6wgU/NanFgTWiGokgDNZA26a5uaDlEegOo9p6WdNYTbE7qRfAr7Cs0uCzy
 odeeOOiu2sm+g/A1k0BHkjyBp8CU3YORbKZZoWBw4R4eVKbpKs6slO5gm0cfOdSODB8S
 e/4EuH5jaV1TVyLY50H4lZPKxEndESM1XYpE33S/6jQa/lZh9iuKexzOZvM3hsgl7mWu
 kx1NRaq7oUsIK1BRE1zKARyZ7h3KfDcsRLiQ8OlzJmgDvX4EEm0eYWx/RquhSZcgv060
 up5PwLMxdkIDa4/R7xr+BEoKT+N0dGL7VJBnBMx528WuSVfDiwg96Xf5bEEaFAduK+U7
 By0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=tbkGc2uRqrthDU52A0rFG/A+QNzAVuHvzOb7BZHUvFs=;
 b=cj3oPjVqyM2MGcC7MELkGGwsYWSZ/o9+6qu3c9/qLZ8BTy7JctqKoL6OXoj7nNm9BV
 8zUXJTaiMe1OvJhegsBgZzv8rs2qHwIyTwJTiyHiarpmaw2ImIrlxBmgXRz+guQBV/c5
 lwHGwTvMm5/j+wkIGYseP95Cq/TRiK4Hce+B7zwivNryLNxebm+hH3TEv8GlFQit0mUk
 +pmetsO1TN50l6RcvarNdaTXo+q2MjOkiGlHe9ZoxEcI1eYyDL3Jo547mnu4lyAKm9jk
 skABBPJRP2yxSqhK9tU8fwPsqCZh+tcwDCAV123QihclQGYDyf/PgvYl9Z6YPmERAkbk
 iVSw==
X-Gm-Message-State: APjAAAVUVWwh13WevFkjYRyiivXfw/WdRQ1erFk2/D81dM86XTBPGFGq
 6L/8DGVzep/awkmBXzjG368=
X-Google-Smtp-Source: APXvYqz7jqOCtXqsT9HFmNMh60AyYfg1jikh2WYxaCHn+x63icBTzbcjSVd/DHZBKPvSweIbUxiiYA==
X-Received: by 2002:aed:3ee4:: with SMTP id o33mr10073460qtf.267.1572121891187; 
 Sat, 26 Oct 2019 13:31:31 -0700 (PDT)
Received: from cristiane-Inspiron-5420 ([131.100.148.220])
 by smtp.gmail.com with ESMTPSA id z8sm2939529qkf.37.2019.10.26.13.31.28
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 26 Oct 2019 13:31:30 -0700 (PDT)
Date: Sat, 26 Oct 2019 17:31:26 -0300
From: Cristiane Naves <cristianenavescardoso09@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v2 3/3] staging: rtl8712: Remove lines before a close brace
Message-ID: <8c74dcd9afaa528a80804081f582792045bb7a7a.1572121059.git.cristianenavescardoso09@gmail.com>
References: <cover.1572121059.git.cristianenavescardoso09@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <cover.1572121059.git.cristianenavescardoso09@gmail.com>
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
 Larry Finger <Larry.Finger@lwfinger.net>
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
index c567a16..b7d0ea0 100644
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
