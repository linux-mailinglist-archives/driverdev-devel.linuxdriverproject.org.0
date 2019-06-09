Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B1CC3A585
	for <lists+driverdev-devel@lfdr.de>; Sun,  9 Jun 2019 14:49:05 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 8659485DF1;
	Sun,  9 Jun 2019 12:49:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id zSFtcOUrzGtC; Sun,  9 Jun 2019 12:49:01 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 7D8EA85D39;
	Sun,  9 Jun 2019 12:49:00 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id EB3671BF41C
 for <devel@linuxdriverproject.org>; Sun,  9 Jun 2019 12:48:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id E802F875B9
 for <devel@linuxdriverproject.org>; Sun,  9 Jun 2019 12:48:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id X5WVlUXaSoPn for <devel@linuxdriverproject.org>;
 Sun,  9 Jun 2019 12:48:57 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f194.google.com (mail-pf1-f194.google.com
 [209.85.210.194])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 7C4E286D42
 for <devel@driverdev.osuosl.org>; Sun,  9 Jun 2019 12:48:57 +0000 (UTC)
Received: by mail-pf1-f194.google.com with SMTP id c85so3735987pfc.1
 for <devel@driverdev.osuosl.org>; Sun, 09 Jun 2019 05:48:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:subject:message-id:mime-version:content-disposition
 :user-agent; bh=GWbqPRicVJeNZyyJn+9jqmHZeCWZTUn9+XwG0T4VgwA=;
 b=nBEFrbsYSyLw9JK8mSoYmUtoaLLg1kZvEZE8OZu+2t8xdYiz012j+tncUdTqyRMmL2
 Vla33Vvj9KNr+gCHDZhoVmMbYj3UjaESqHRorsGzAu7UE9sqS3tAptabgrm/97O4GF1B
 wTsxVsf20HOkQuAjjrMIfzdeKIw9FtDeEkfAyPBflHZZZwVyY3mb2hINUfsORmMmLtOV
 4kTjz0P9PCRgbIUaEekduvvYk7/ksvT0PiuV0VnZtikLauCUVx5Oma+KhcW2hra/eo2/
 Eup1QNLhH8VU8lIYU8lbW9Zf5OXSdXKUdCIfeIM0bb8LQSiuzTNTn2Vw4Faw3XR9CVfd
 8/4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=GWbqPRicVJeNZyyJn+9jqmHZeCWZTUn9+XwG0T4VgwA=;
 b=mm22K+2tUrbM1kXDGIvETmdgODJThA6Sfc8h8bW9TSe8h7f/Li+0SSuxse141V4Zff
 R7xJT2ed8kC/Z8boEdgHfbah8sm5l6Lp3wWm+9Rc6UV5gXfBjiLHfTLiuggTKbzPSsg3
 ANvbm1E6qr+gJiH6KfqchY0oWQ3JOLpu+I5u+zZ8AhohVfJzS4frfm+1Rej9L9RF15zv
 tBY9sarEUDY+OyAc5mqz+bATZ8sIwMu+BfZIeKTw/rGzaNwguhghw2dukpm3skwLGuGL
 r/9UBId4ZRYUBZSO72nDS2f6T4ZkV9p7J+bhUlFdXYdi1sGV5ezUSWlfxJvOod8aZFXZ
 sxiw==
X-Gm-Message-State: APjAAAUNFgs07RP8McfC3NlfaF91ylwVd8NUUPwRby+6+EWMPcKYOhh4
 RHaAywVbe8VwECsixDZCvc0=
X-Google-Smtp-Source: APXvYqyQjOzCBZe5RP7vIT0dEkdZZLVUMTUUpxhL+l2jR++vMB14wViUmx7itvaIeQx7782IRbxMbw==
X-Received: by 2002:a63:f957:: with SMTP id q23mr11574838pgk.326.1560084537116; 
 Sun, 09 Jun 2019 05:48:57 -0700 (PDT)
Received: from hari-Inspiron-1545 ([183.83.89.153])
 by smtp.gmail.com with ESMTPSA id u7sm6991216pgl.64.2019.06.09.05.48.54
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 09 Jun 2019 05:48:56 -0700 (PDT)
Date: Sun, 9 Jun 2019 18:18:51 +0530
From: Hariprasad Kelam <hariprasad.kelam@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Hariprasad Kelam <hariprasad.kelam@gmail.com>,
 Hans de Goede <hdegoede@redhat.com>,
 Michael Straube <straube.linux@gmail.com>,
 Arnd Bergmann <arnd@arndb.de>, devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH 1/3] staging: rtl8723bs: fix warning comparison to NULL
Message-ID: <20190609124851.GA4043@hari-Inspiron-1545>
MIME-Version: 1.0
Content-Disposition: inline
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

This patch fixes below issue reported by checkpatch

CHECK: Comparison to NULL could be written "!pxmitbuf->pallocated_buf"
+               if (pxmitbuf->pallocated_buf == NULL)

Signed-off-by: Hariprasad Kelam <hariprasad.kelam@gmail.com>
---
 drivers/staging/rtl8723bs/os_dep/xmit_linux.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8723bs/os_dep/xmit_linux.c b/drivers/staging/rtl8723bs/os_dep/xmit_linux.c
index 4e4e565..c125ac2 100644
--- a/drivers/staging/rtl8723bs/os_dep/xmit_linux.c
+++ b/drivers/staging/rtl8723bs/os_dep/xmit_linux.c
@@ -50,7 +50,7 @@ int rtw_os_xmit_resource_alloc(struct adapter *padapter, struct xmit_buf *pxmitb
 {
 	if (alloc_sz > 0) {
 		pxmitbuf->pallocated_buf = rtw_zmalloc(alloc_sz);
-		if (pxmitbuf->pallocated_buf == NULL)
+		if (!pxmitbuf->pallocated_buf)
 			return _FAIL;
 
 		pxmitbuf->pbuf = (u8 *)N_BYTE_ALIGMENT((SIZE_PTR)(pxmitbuf->pallocated_buf), XMITBUF_ALIGN_SZ);
-- 
2.7.4

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
