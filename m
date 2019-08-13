Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 784678AE07
	for <lists+driverdev-devel@lfdr.de>; Tue, 13 Aug 2019 06:47:06 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 0BB3986D29;
	Tue, 13 Aug 2019 04:47:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Rsc57pxtOM0B; Tue, 13 Aug 2019 04:47:04 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 3617D86B90;
	Tue, 13 Aug 2019 04:47:04 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 04FF01BF369
 for <devel@linuxdriverproject.org>; Tue, 13 Aug 2019 04:47:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 0231A86102
 for <devel@linuxdriverproject.org>; Tue, 13 Aug 2019 04:47:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id eCi-t3qYX5Lg for <devel@linuxdriverproject.org>;
 Tue, 13 Aug 2019 04:46:59 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f194.google.com (mail-pf1-f194.google.com
 [209.85.210.194])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 807E0860C5
 for <devel@driverdev.osuosl.org>; Tue, 13 Aug 2019 04:46:59 +0000 (UTC)
Received: by mail-pf1-f194.google.com with SMTP id c81so1850639pfc.11
 for <devel@driverdev.osuosl.org>; Mon, 12 Aug 2019 21:46:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=3uVkxMKPW2J8PBXaiAQezVtSx496EjJp3yt27ZKme78=;
 b=A655f9l8O4cLdN3HbYhNHx2cMbrUZjDKvTjNf2CR2uGszWWW5+3GDzPy+D0C83YH29
 5L6wKC8hUGnPGk+dRVS7MBr5rIcGEWYD59RbfY8yS4QpuNkhYhDbhFDxPHP8guYRYL52
 k7iJSy/LaTA7HQOSkI2Okp81RDtWdqj9fBmo9Agpf8UPo7eelAFYxcEFJhOe3q+ifpwd
 LnNIP+BCjQaLsYxrNbKHy958EmUDLu8eP0eSj9BJwYPSP92tmDAFBB3qwq56Q6vck/Si
 76NjRNtO7iIlawJNx+ICSTXGSRa3ut16VBecpAyp46D85XcSNwjRPKG/tWJ23AmGlCXK
 kTZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=3uVkxMKPW2J8PBXaiAQezVtSx496EjJp3yt27ZKme78=;
 b=FsPVComZWQ26tCclDtih7au1wnVZGrqUhZtWYPLhy+LhVlqCjjVbypR92q60j1ySCf
 13qv94EZvqkplXVVw+panOPqUSovgj6aryab4xxxQ8iQDBMZ6IKAhPa8qFimt1LnnSCo
 6vmtpLdnDqs7TbnSXPycaJ/Kx5rZaSF+UQxF1qAOFjaBXp7sOYzqzye/JD7GXNbVGyWu
 Dpm5usxAnASVMwgcHM6VJXh31bQ/nD1XcerkFhrFw12eTiTDBD0cbV55wYoYjcS46JVC
 6pvUEEvUNd2oJksM7ADwPwG7bGumetWKiijpz7qq1qq7jlRqBNooroSgZWrM1A+uNgpe
 8ZpQ==
X-Gm-Message-State: APjAAAUSMMBR+Z2YtohQ217xoOSouUhnUtfk+Rs1thxuE8+aGGeK9+l4
 yoDHWu5TQ8Tzob1421Goo4PVlkwI
X-Google-Smtp-Source: APXvYqwgreX/c0lxiHRg7QG5gQP4XoJZgX2lPfLBEyCaQlnkEDR2uuxolL6Zn+PyGiY8qYqlttstbw==
X-Received: by 2002:a65:6815:: with SMTP id l21mr33437422pgt.146.1565671619167; 
 Mon, 12 Aug 2019 21:46:59 -0700 (PDT)
Received: from localhost.localdomain ([122.163.110.75])
 by smtp.gmail.com with ESMTPSA id t7sm246135pgp.68.2019.08.12.21.46.56
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Mon, 12 Aug 2019 21:46:58 -0700 (PDT)
From: Nishka Dasgupta <nishkadg.linux@gmail.com>
To: larry.finger@lwfinger.net, florian.c.schilhabel@googlemail.com,
 gregkh@linuxfoundation.org, devel@driverdev.osuosl.org
Subject: [PATCH RESEND 3/4] staging: rtl8712: r8712_xmitframe_aggr_1st():
 Change return type to void
Date: Tue, 13 Aug 2019 10:16:37 +0530
Message-Id: <20190813044638.16348-3-nishkadg.linux@gmail.com>
X-Mailer: git-send-email 2.19.1
In-Reply-To: <20190813044638.16348-1-nishkadg.linux@gmail.com>
References: <20190813044638.16348-1-nishkadg.linux@gmail.com>
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

Change return type of r8712_xmitframe_aggr_1st from u8 to void as it
always returns _SUCCESS and its return value is never used.

Signed-off-by: Nishka Dasgupta <nishkadg.linux@gmail.com>
---
 drivers/staging/rtl8712/rtl8712_xmit.c | 6 ++----
 drivers/staging/rtl8712/rtl8712_xmit.h | 4 ++--
 2 files changed, 4 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/rtl8712/rtl8712_xmit.c b/drivers/staging/rtl8712/rtl8712_xmit.c
index 6f1dbcf25859..9152c25c11f8 100644
--- a/drivers/staging/rtl8712/rtl8712_xmit.c
+++ b/drivers/staging/rtl8712/rtl8712_xmit.c
@@ -318,8 +318,8 @@ void r8712_append_mpdu_unit(struct xmit_buf *pxmitbuf,
 }
 
 
-u8 r8712_xmitframe_aggr_1st(struct xmit_buf *pxmitbuf,
-			struct xmit_frame *pxmitframe)
+void r8712_xmitframe_aggr_1st(struct xmit_buf *pxmitbuf,
+			      struct xmit_frame *pxmitframe)
 {
 	/* linux complete context doesn't need to protect */
 	pxmitframe->pxmitbuf = pxmitbuf;
@@ -332,8 +332,6 @@ u8 r8712_xmitframe_aggr_1st(struct xmit_buf *pxmitbuf,
 	r8712_construct_txaggr_cmd_hdr(pxmitbuf);
 	r8712_append_mpdu_unit(pxmitbuf, pxmitframe);
 	pxmitbuf->aggr_nr = 1;
-
-	return _SUCCESS;
 }
 
 u16 r8712_xmitframe_aggr_next(struct xmit_buf *pxmitbuf,
diff --git a/drivers/staging/rtl8712/rtl8712_xmit.h b/drivers/staging/rtl8712/rtl8712_xmit.h
index 9be8fb70c92e..faf2128285b6 100644
--- a/drivers/staging/rtl8712/rtl8712_xmit.h
+++ b/drivers/staging/rtl8712/rtl8712_xmit.h
@@ -102,8 +102,8 @@ void r8712_do_queue_select(struct _adapter *padapter,
 			   struct pkt_attrib *pattrib);
 
 #ifdef CONFIG_R8712_TX_AGGR
-u8 r8712_xmitframe_aggr_1st(struct xmit_buf *pxmitbuf,
-			struct xmit_frame *pxmitframe);
+void r8712_xmitframe_aggr_1st(struct xmit_buf *pxmitbuf,
+			      struct xmit_frame *pxmitframe);
 u8 r8712_dump_aggr_xframe(struct xmit_buf *pxmitbuf,
 			struct xmit_frame *pxmitframe);
 #endif
-- 
2.19.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
