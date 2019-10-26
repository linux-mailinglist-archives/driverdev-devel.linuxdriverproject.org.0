Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 8ADB6E5F7F
	for <lists+driverdev-devel@lfdr.de>; Sat, 26 Oct 2019 22:29:55 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 9756384755;
	Sat, 26 Oct 2019 20:29:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id V8SSHNeFhnvX; Sat, 26 Oct 2019 20:29:52 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 443A984647;
	Sat, 26 Oct 2019 20:29:52 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 1C2BC1BF5E6
 for <devel@linuxdriverproject.org>; Sat, 26 Oct 2019 20:29:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 18E5E85C98
 for <devel@linuxdriverproject.org>; Sat, 26 Oct 2019 20:29:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id UvV2EtWoydBB for <devel@linuxdriverproject.org>;
 Sat, 26 Oct 2019 20:29:49 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-qt1-f195.google.com (mail-qt1-f195.google.com
 [209.85.160.195])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 713A885C45
 for <devel@driverdev.osuosl.org>; Sat, 26 Oct 2019 20:29:49 +0000 (UTC)
Received: by mail-qt1-f195.google.com with SMTP id e14so8720737qto.1
 for <devel@driverdev.osuosl.org>; Sat, 26 Oct 2019 13:29:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=FGfKeWR+ALU6IXEki/hlm0ra+LCsfescC58IXZqU9BQ=;
 b=YJ37QCMQgHMTqJAun4vVrI47EtM20IcTFGm46ChOUP03jgjfH91x8WmfzWHsJPWBhF
 mkNCdtrMzH7m4xIL4TkvcgLxYL4gGkAmxLHPaGeu1YR/SXesEo4sP/8JqCOo9lmyVf/a
 hJLeNA2XHWiVO1J7P61zR1jjewDbQdGqSemBuScWmbHhJjoQ6lpH4pAkQB1iY/jEClTT
 vY/PBcTi4y0OcCZH7Ew/WrJ1YJcj7GpDNCZFmVMm4KrX4sKk/T3fCdsqF9YYnZczv9I2
 Pzh42uO4oZ+R2IzQ3yo0tjwFXOIcCmczhuFdpr+nGQ0MSIc7SmJ0trDlRevVe0Lk4Vw6
 H1DA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=FGfKeWR+ALU6IXEki/hlm0ra+LCsfescC58IXZqU9BQ=;
 b=mG/xEG4AlkoPsKpmt2DP4YQe+2/ZAS32Tegy1HG3o84wuaHEAcHDjA987bpjx6Q+3m
 /SkgPsGv7s7y7Z+9AUoProWlCflq1MF9HWeUmphaFdlkAqYNKXWvwI1Falgdaz9j8/i3
 LOPGpxs+QUYJvdaITrVsvSwUhKjYhg16BKCOpmL54qyK/YOf7/5OE7iW7nTnjHfIAvej
 3o3vO08aEG6dTPsIO+05vno4DoukpKA4ymdwPoWTWB4kGw09BtJaszFdWi1lWILbzv6O
 hRX9IcDvLFuJwb0o+ymmLERZ5qRTGkW/a490wOylxVL3E+qILZk8ft9veqvqRnQjOOlY
 5YnA==
X-Gm-Message-State: APjAAAXB1ckcoLza57TOrKrUyFIw2wFbh9WVoniJcnlWYbh5VnDmpvj+
 vCL/9yP/vXEY++lFwKRp5ak=
X-Google-Smtp-Source: APXvYqy5ebdVEeXMnYdjN6QimAFw34BwfQ3/73U6Ou0aK1pCKaH3LpJxuvUPaw55oITndNI/x78Paw==
X-Received: by 2002:ac8:2dda:: with SMTP id q26mr10316772qta.100.1572121788550; 
 Sat, 26 Oct 2019 13:29:48 -0700 (PDT)
Received: from cristiane-Inspiron-5420 ([131.100.148.220])
 by smtp.gmail.com with ESMTPSA id x7sm3474432qkj.74.2019.10.26.13.29.46
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 26 Oct 2019 13:29:48 -0700 (PDT)
Date: Sat, 26 Oct 2019 17:29:42 -0300
From: Cristiane Naves <cristianenavescardoso09@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v2 2/3] staging: rtl8712: Remove unnecessary parentheses.
Message-ID: <2257cfa5359d82207bf17cf652e48cd79c6092ab.1572121059.git.cristianenavescardoso09@gmail.com>
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

Remove unnecessary parentheses. Issue suggested by Joe Perches
<joe@perches.com>.

Signed-off-by: Cristiane Naves <cristianenavescardoso09@gmail.com>
---
 drivers/staging/rtl8712/rtl8712_recv.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8712/rtl8712_recv.c b/drivers/staging/rtl8712/rtl8712_recv.c
index 12a3c64..c567a16 100644
--- a/drivers/staging/rtl8712/rtl8712_recv.c
+++ b/drivers/staging/rtl8712/rtl8712_recv.c
@@ -61,7 +61,7 @@ void r8712_init_recv_priv(struct recv_priv *precvpriv,
 		precvbuf->ref_cnt = 0;
 		precvbuf->adapter = padapter;
 		list_add_tail(&precvbuf->list,
-			      &(precvpriv->free_recv_buf_queue.queue));
+			      &precvpriv->free_recv_buf_queue.queue);
 		precvbuf++;
 	}
 	precvpriv->free_recv_buf_queue_cnt = NR_RECVBUFF;
-- 
2.7.4

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
