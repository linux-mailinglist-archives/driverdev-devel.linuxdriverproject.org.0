Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 94D8C681C1
	for <lists+driverdev-devel@lfdr.de>; Mon, 15 Jul 2019 02:22:00 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id A6F7385815;
	Mon, 15 Jul 2019 00:21:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id cgkcAhc2nmfJ; Mon, 15 Jul 2019 00:21:57 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 4390D8560B;
	Mon, 15 Jul 2019 00:21:57 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id D61421BF860
 for <driverdev-devel@linuxdriverproject.org>;
 Mon, 15 Jul 2019 00:21:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id CF2D8860A8
 for <driverdev-devel@linuxdriverproject.org>;
 Mon, 15 Jul 2019 00:21:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id gAQzg-55yFPV
 for <driverdev-devel@linuxdriverproject.org>;
 Mon, 15 Jul 2019 00:21:54 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-qk1-f194.google.com (mail-qk1-f194.google.com
 [209.85.222.194])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 0E48F85BFA
 for <driverdev-devel@linuxdriverproject.org>;
 Mon, 15 Jul 2019 00:21:54 +0000 (UTC)
Received: by mail-qk1-f194.google.com with SMTP id w190so10386751qkc.6
 for <driverdev-devel@linuxdriverproject.org>;
 Sun, 14 Jul 2019 17:21:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=aQEcxMmiCLAt94VDDofaI95Y09BX4XOJ5mIX/4dv2hc=;
 b=lzF6AMSkkIpzgmUQdWFwv7MQQQj7qz9ZshTQzTmIpmJbz0IZeasNYW6JmfDQa6X6mT
 mLbmHDonkmOB26gmkQ9PABSiNis5Iw2g75w76eklc+nSwyYs13Lkj5zfnx5hl2YdNfdK
 ZuQsdjTuf/QL1R4VatqmaLsvPse4q3sLXFuRTrnzjUj/hq+AEsqtbmQ53fmKuWd4gJza
 M1hdKaPk366NjJKiOj835uRE767G4dsK+aZTXEd2xe0lZMsy24c3VawwjV5OLKbnhmqj
 TH/qAyXyD/H77dOQ5Zk8bVlCbJolZf8eQVVEbPdQb02AYeIjrBG6q+lCIFSvkj9LLIxl
 o1uQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=aQEcxMmiCLAt94VDDofaI95Y09BX4XOJ5mIX/4dv2hc=;
 b=M5qh9ygHr9gVUSdJpRXBJIYkUCd729WDmo5vwhjPEFe2QbI/XWLTwFMQJ8yPRo+QGF
 kGrSRYn0u5SkYQWQdE0EtKHZGls6ouf+wYWO2Ga6RC09Hx/KW7Tp+qE0uqVDtVfqTWN+
 qkRm7wDQsfwXssxl1HACYHbOFgJrjR18zS8mpAMKbUfvYMIL+f62YWKwxkGEeStKupYV
 P4O/0BwVtSIwjBg5988EZembSti/bUPCpSQ9+TSDm9z3PPe638YS5jccT60rm30aXwep
 ESY6qRR6JKy9dozAPYYcvC3zaJnXzvpfjCVf5FndMx8v4kfMCtqEWeS51igvXFNIjzIR
 E20w==
X-Gm-Message-State: APjAAAUegMM8C4i3R1+Ldwolne4ZZQbGxsHu2Evv6OaaTfTAJbaKnK6I
 ZoJaYapD+g+mgSO9JVnc2iQ=
X-Google-Smtp-Source: APXvYqwDylxxvLPbXzLtJiREKjeZv/tjanRm+s2VicgGbuT8mOc4hAdy+nRd1JyvedeAOC+sbP+OnA==
X-Received: by 2002:a37:a142:: with SMTP id k63mr14281175qke.278.1563150113085; 
 Sun, 14 Jul 2019 17:21:53 -0700 (PDT)
Received: from localhost.localdomain ([181.31.106.136])
 by smtp.gmail.com with ESMTPSA id y67sm7298948qkd.40.2019.07.14.17.21.50
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Sun, 14 Jul 2019 17:21:52 -0700 (PDT)
From: christianluciano.m@gmail.com
To: gregkh@linuxfoundation.org, Larry.Finger@lwfinger.net,
 florian.c.schilhabel@googlemail.com,
 driverdev-devel@linuxdriverproject.org, christianluciano.m@gmail.com
Subject: [PATCH] staging: rtl8712: Align code with open parenthesis
Date: Sun, 14 Jul 2019 21:21:40 -0300
Message-Id: <20190715002140.1432-1-christianluciano.m@gmail.com>
X-Mailer: git-send-email 2.22.0
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

From: Christian Luciano Moreno <christianluciano.m@gmail.com>

Fix 'CHECK: Alignment should match open parenthesis' reported by
checkpatch.

Signed-off-by: Christian Luciano Moreno <christianluciano.m@gmail.com>
---
 drivers/staging/rtl8712/xmit_osdep.h | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/rtl8712/xmit_osdep.h b/drivers/staging/rtl8712/xmit_osdep.h
index 21f6b31e0f50..b76021b568f8 100644
--- a/drivers/staging/rtl8712/xmit_osdep.h
+++ b/drivers/staging/rtl8712/xmit_osdep.h
@@ -37,16 +37,16 @@ struct xmit_buf;
 int r8712_xmit_entry(_pkt *pkt, struct  net_device *pnetdev);
 void r8712_SetFilter(struct work_struct *work);
 int r8712_xmit_resource_alloc(struct _adapter *padapter,
-			   struct xmit_buf *pxmitbuf);
+			      struct xmit_buf *pxmitbuf);
 void r8712_xmit_resource_free(struct _adapter *padapter,
-			   struct xmit_buf *pxmitbuf);
+			      struct xmit_buf *pxmitbuf);
 
 void r8712_set_qos(struct pkt_file *ppktfile,
-		    struct pkt_attrib *pattrib);
+		   struct pkt_attrib *pattrib);
 void _r8712_open_pktfile(_pkt *pktptr, struct pkt_file *pfile);
 uint _r8712_pktfile_read(struct pkt_file *pfile, u8 *rmem, uint rlen);
 sint r8712_endofpktfile(struct pkt_file *pfile);
 void r8712_xmit_complete(struct _adapter *padapter,
-			     struct xmit_frame *pxframe);
+			 struct xmit_frame *pxframe);
 
 #endif
-- 
2.22.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
