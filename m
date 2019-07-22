Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 4AFBA6FC16
	for <lists+driverdev-devel@lfdr.de>; Mon, 22 Jul 2019 11:24:19 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 216558474A;
	Mon, 22 Jul 2019 09:24:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id va8xZVjT6XVl; Mon, 22 Jul 2019 09:24:15 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 0E29181D66;
	Mon, 22 Jul 2019 09:24:15 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 455F41BF302
 for <devel@linuxdriverproject.org>; Mon, 22 Jul 2019 09:24:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 3F13C8735C
 for <devel@linuxdriverproject.org>; Mon, 22 Jul 2019 09:24:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id sMUJQUBrKfqg for <devel@linuxdriverproject.org>;
 Mon, 22 Jul 2019 09:24:11 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f194.google.com (mail-pg1-f194.google.com
 [209.85.215.194])
 by hemlock.osuosl.org (Postfix) with ESMTPS id B82CB86F12
 for <devel@driverdev.osuosl.org>; Mon, 22 Jul 2019 09:24:11 +0000 (UTC)
Received: by mail-pg1-f194.google.com with SMTP id f25so17367257pgv.10
 for <devel@driverdev.osuosl.org>; Mon, 22 Jul 2019 02:24:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=4ti9mZ5eZrzB9FvaOenmpZD+9MtWwMSWpG6NalvqDt0=;
 b=ZJ10apxjxUa9mkrb0Ke4svt22E71G5Pp1nk8Rkcu/U4Mfw0LDboVKuNnMxTkSSOmsB
 tbuYP9nqagz3M9F4MidOGC0e3rNagVowTMW8ONRcq8AM4E3Hu6cPe7SwTmLbN3liMKIt
 F8K0Cyr+0YM9JDBrKK7cM0TLLb4BWWAfizfsSy5f/9GFwaTUJQbqFz6UgXDzqEdJA6Yt
 vn/qpzIevLqIxWBS5DbtNrilKIXX+C3FQrclqWMapaGprknLBcSeXFAuOYaADEdqW/xo
 j/Tsx4asmIP2hKOALflVfudd0AxXtCklQsPxXRbtLlRr0Cj9A34O38x6a9YaMrgbkBky
 J3Og==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=4ti9mZ5eZrzB9FvaOenmpZD+9MtWwMSWpG6NalvqDt0=;
 b=IG1cDPpyNAZjTVMAgfMTNEJdLfQPdAkf+6+ENBwHW9ftsIxJ1bOsNK0UVm8GsrBVC0
 Ig94e8KRKW5hsMJIXAUMqITec4ca8iDQLsjmbvYEdbTMXGmhwkvFbHVckkzGkrgPdEt6
 MsvJprHZD+2IvkFNmlBsHOrzhea/dLITAhO+lqTaywLneVPbGO+z/f9PW2P4r44law6m
 0Y0PumOzT+tGi4AH5ir75+iJYiKp9+lZxByXEziefpTuOMxuLJLTnyKQuX5SBDxYn2Wm
 Kj3D5CP761u/5lyhm+vj5lsfkfBYqXEU0Wun7O+AvDWcjB5xijie7p7z8LG7UJyw+5nH
 +51Q==
X-Gm-Message-State: APjAAAVjz2vIyz6YEl26Y9wgj5WQBZfqVpQasTKkjAQ2uQOfnnuIPQWA
 nhylP3itSEbsLZ45ty+bBxI=
X-Google-Smtp-Source: APXvYqyTwKxkVz2PeEmYdlxwpHUm1SPRPXdneGYj08vIuwNPhZhNQTyATRKIqbcAqk8JMnvdDp1RQA==
X-Received: by 2002:a17:90a:5884:: with SMTP id
 j4mr78829091pji.142.1563787451423; 
 Mon, 22 Jul 2019 02:24:11 -0700 (PDT)
Received: from localhost.localdomain ([122.163.0.39])
 by smtp.gmail.com with ESMTPSA id f19sm52010125pfk.180.2019.07.22.02.24.09
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Mon, 22 Jul 2019 02:24:11 -0700 (PDT)
From: Nishka Dasgupta <nishkadg.linux@gmail.com>
To: larry.finger@lwfinger.net, florian.c.schilhabel@googlemail.com,
 gregkh@linuxfoundation.org, devel@driverdev.osuosl.org
Subject: [PATCH 7/8] staging: rtl8712: r8712_init_recvbuf(): Change return type
Date: Mon, 22 Jul 2019 14:53:40 +0530
Message-Id: <20190722092341.21030-7-nishkadg.linux@gmail.com>
X-Mailer: git-send-email 2.19.1
In-Reply-To: <20190722092341.21030-1-nishkadg.linux@gmail.com>
References: <20190722092341.21030-1-nishkadg.linux@gmail.com>
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
Cc: Nishka Dasgupta <nishkadg.linux@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Change return type of r8712_init_recvbuf from int to void as it always
returned _SUCCESS and this return value was never used at any call site.

Signed-off-by: Nishka Dasgupta <nishkadg.linux@gmail.com>
---
 drivers/staging/rtl8712/rtl8712_recv.c | 3 +--
 drivers/staging/rtl8712/rtl8712_recv.h | 2 +-
 2 files changed, 2 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/rtl8712/rtl8712_recv.c b/drivers/staging/rtl8712/rtl8712_recv.c
index 82ddc0c3ecd4..892ea71c3718 100644
--- a/drivers/staging/rtl8712/rtl8712_recv.c
+++ b/drivers/staging/rtl8712/rtl8712_recv.c
@@ -107,7 +107,7 @@ void r8712_free_recv_priv(struct recv_priv *precvpriv)
 			    skb_queue_len(&precvpriv->free_recv_skb_queue));
 }
 
-int r8712_init_recvbuf(struct _adapter *padapter, struct recv_buf *precvbuf)
+void r8712_init_recvbuf(struct _adapter *padapter, struct recv_buf *precvbuf)
 {
 	precvbuf->transfer_len = 0;
 	precvbuf->len = 0;
@@ -118,7 +118,6 @@ int r8712_init_recvbuf(struct _adapter *padapter, struct recv_buf *precvbuf)
 		precvbuf->ptail = precvbuf->pbuf;
 		precvbuf->pend = precvbuf->pdata + MAX_RECVBUF_SZ;
 	}
-	return _SUCCESS;
 }
 
 int r8712_free_recvframe(union recv_frame *precvframe,
diff --git a/drivers/staging/rtl8712/rtl8712_recv.h b/drivers/staging/rtl8712/rtl8712_recv.h
index 6954c5bfbcaf..3e385b2242d8 100644
--- a/drivers/staging/rtl8712/rtl8712_recv.h
+++ b/drivers/staging/rtl8712/rtl8712_recv.h
@@ -136,7 +136,7 @@ union recv_frame {
 	} u;
 };
 
-int r8712_init_recvbuf(struct _adapter *padapter, struct recv_buf *precvbuf);
+void r8712_init_recvbuf(struct _adapter *padapter, struct recv_buf *precvbuf);
 void r8712_rxcmd_event_hdl(struct _adapter *padapter, void *prxcmdbuf);
 s32 r8712_signal_scale_mapping(s32 cur_sig);
 void r8712_reordering_ctrl_timeout_handler(void *pcontext);
-- 
2.19.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
