Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id E17D4E57BB
	for <lists+driverdev-devel@lfdr.de>; Sat, 26 Oct 2019 03:10:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 4AF9D874A7;
	Sat, 26 Oct 2019 01:10:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id oA2xkeOhlPWS; Sat, 26 Oct 2019 01:10:13 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 332E8867A1;
	Sat, 26 Oct 2019 01:10:13 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 039DD1BF40B
 for <devel@linuxdriverproject.org>; Sat, 26 Oct 2019 01:10:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id F100020424
 for <devel@linuxdriverproject.org>; Sat, 26 Oct 2019 01:10:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id TKOSrUiDbcsR for <devel@linuxdriverproject.org>;
 Sat, 26 Oct 2019 01:10:10 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-qt1-f196.google.com (mail-qt1-f196.google.com
 [209.85.160.196])
 by silver.osuosl.org (Postfix) with ESMTPS id 3B1822041B
 for <devel@driverdev.osuosl.org>; Sat, 26 Oct 2019 01:10:10 +0000 (UTC)
Received: by mail-qt1-f196.google.com with SMTP id u22so5995611qtq.13
 for <devel@driverdev.osuosl.org>; Fri, 25 Oct 2019 18:10:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=dp9VEiEAucRbcNWDDMXkM2Mcfldcw5lUeaorfPQjnfs=;
 b=MREXsrE5nPyO+vke/p/zBd8AFyJGLo7wOjrZCig9R0YwNNXfFGAqyJOO2ywvg00lK8
 lTd+M8efshpro1SFyqYKBRmXNP/GpStpF6jLUwP4pBRH1J6Qgs4iNGtK8RuW0o7kRvc6
 PGC3IXXisYHQJ4AYk829Q9E1nXxneatjFakmejD+L6qO2Z7ZOJCWcTKexZZp84SAJJyW
 FLTC0loQ0phF+UG2Ec+tU03RV2ODcnmY9FBLtsCNjcJlRpopl7Byi67BVGsm8RxKaMku
 tiBSNrLLgHxg8QgBDVZJ70PCBbP4xWu6cC4+R9hLP3CDgc8acoGagOrI3vjhHTavk6hs
 Pw8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=dp9VEiEAucRbcNWDDMXkM2Mcfldcw5lUeaorfPQjnfs=;
 b=lRX46By8iAh2iwKQA0RUW6uyOKoBdXB7oxL9h2jLl5hcAPv+/9k9X+cizqqTDTVpOi
 Bagd5AQu4yOWiU6sIX+iFibk0P99UZJjpWdRTnCNBT7sc/GVfT8059NI6xdilYEbU8iV
 4fjivv8qwPZdYmf81W0Hj7GC+51OGl7UT1s+s+k+e5RGLp8odJI9G1sR7XwNPHMNkpKr
 WbnCAaCLWXbrfNDJeolMa3BMZD24iOreOF3ticYB7Z6XSzl/hPExtWSUPTJhP0LJTUmn
 8Y6XfWLqo+yHFcX/nid2hMw2wGRAsf4Z3fwCZnTRTTlIHZKG5k0kc5I6aCjFStbaPxtP
 9BeQ==
X-Gm-Message-State: APjAAAXRaP8B/CNtU1/LkuXuK/GJUDrY94RbFvNEMAZOqKzolgHQlqfs
 i3MoBM9ycajYuK2gSfrA2GM=
X-Google-Smtp-Source: APXvYqytVxiRdo72TUn20/ChpM/MfBp9VIee/UBo/TYCi3RcuuQolwkzeKGazBEYn4tTmReSPKfH4Q==
X-Received: by 2002:aed:3908:: with SMTP id l8mr6240757qte.383.1572052209133; 
 Fri, 25 Oct 2019 18:10:09 -0700 (PDT)
Received: from cristiane-Inspiron-5420 ([131.100.148.220])
 by smtp.gmail.com with ESMTPSA id g10sm2113853qki.41.2019.10.25.18.10.06
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 25 Oct 2019 18:10:08 -0700 (PDT)
Date: Fri, 25 Oct 2019 22:10:04 -0300
From: Cristiane Naves <cristianenavescardoso09@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [RESEND PATCH 2/2] staging: rtl8712: Remove lines before a close brace
Message-ID: <0bd6b897a5af322cf54d53bb68752d3667a7acb6.1572051351.git.cristianenavescardoso09@gmail.com>
References: <cover.1572051351.git.cristianenavescardoso09@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <cover.1572051351.git.cristianenavescardoso09@gmail.com>
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
index 12a3c64..09b461c 100644
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
