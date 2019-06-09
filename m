Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 189FF3A586
	for <lists+driverdev-devel@lfdr.de>; Sun,  9 Jun 2019 14:50:05 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 48CE722179;
	Sun,  9 Jun 2019 12:50:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id wSWGI1KwKhcw; Sun,  9 Jun 2019 12:50:02 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 75C46220FB;
	Sun,  9 Jun 2019 12:50:01 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 499481BF41C
 for <devel@linuxdriverproject.org>; Sun,  9 Jun 2019 12:49:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 44E4585B8A
 for <devel@linuxdriverproject.org>; Sun,  9 Jun 2019 12:49:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 2EvY5ynKin1V for <devel@linuxdriverproject.org>;
 Sun,  9 Jun 2019 12:49:58 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f196.google.com (mail-pf1-f196.google.com
 [209.85.210.196])
 by whitealder.osuosl.org (Postfix) with ESMTPS id AD41785A90
 for <devel@driverdev.osuosl.org>; Sun,  9 Jun 2019 12:49:58 +0000 (UTC)
Received: by mail-pf1-f196.google.com with SMTP id t16so3707739pfe.11
 for <devel@driverdev.osuosl.org>; Sun, 09 Jun 2019 05:49:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:subject:message-id:mime-version:content-disposition
 :user-agent; bh=a65Rbdca0083owoGg7iWD7lhivLDkOuC9WnrhQtGEJc=;
 b=BX3SzvJ5cdsDVXL+rItDBEyW0Tpmbzj7feTHVeVTuksaufPLGXIFsW63cOPBlaX50Y
 OIaa6ZNcLD2kSiR0AcePieAGfrVaPDzKNaLSGDsywkGPyBIlbZqBji7+zMxwTjRk8O0/
 8aw9qWidOVBeu01goDeDHUI9S2QUYtGZNZCJ3ZP16uCfPRajYFw6RbL0jf2vvtqlTnar
 V5HENWkvjK5yd8ivvOZU6tqTErndQNgmXUjVlzB3fWz21/CA1rU4nXNX5yek06QpUpNi
 v/rftibsXv5/CgH48/j3aBPIuZiWsYVR0/9o1iWDktTfbfvahuah1XGh40IQshui3fTA
 zFSQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=a65Rbdca0083owoGg7iWD7lhivLDkOuC9WnrhQtGEJc=;
 b=KIjIyiH4h9cEArWL2oKz7iQoIszQ+U51oLHUCCkBD6JiJdklUhoSoTuS1C4nGitj98
 5MbYFNA7Up1eeg+3ehqXPMNrwQBXyTZhXOlGuPf//bZxsxk9cSUPuOLhFftCBmqQBZ+U
 Zijciqpkt3dAmPNGyCrEaL6aY3WMccjWOzlO4yZVMHU7aBXlhQXNpLaHwOGfPuZ+nMlO
 6B9+P7PNeZTYd3F95SAHaT4Jy1/4S3BO80i6pFUZfrSHVaKnktsO1Z8KQo8CDJP5OgEX
 B1orGlnyZFblOT23vtaD1bQkSFIXereDQwwzGiJMAY0ZW5yRwHBJ1o/RhsMn2ZED/Nmf
 4cOw==
X-Gm-Message-State: APjAAAURybXdtUKAFY4b7gpYh5kS0kc/8XtIYBrhEp2Oa6wcoZqupYOA
 bsx4jQlmGTV+JbjUbbknM+4=
X-Google-Smtp-Source: APXvYqz/LJLVZAActCpPodVeN8hpGJWUhl0Nt6mFsviLHJ+iw2PE6HxfXZRvM6X0v8beFe+OPr8E0g==
X-Received: by 2002:a62:e417:: with SMTP id r23mr37153334pfh.160.1560084598389; 
 Sun, 09 Jun 2019 05:49:58 -0700 (PDT)
Received: from hari-Inspiron-1545 ([183.83.89.153])
 by smtp.gmail.com with ESMTPSA id m5sm10582296pgc.84.2019.06.09.05.49.55
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 09 Jun 2019 05:49:57 -0700 (PDT)
Date: Sun, 9 Jun 2019 18:19:53 +0530
From: Hariprasad Kelam <hariprasad.kelam@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Hariprasad Kelam <hariprasad.kelam@gmail.com>,
 Hans de Goede <hdegoede@redhat.com>,
 Michael Straube <straube.linux@gmail.com>,
 Arnd Bergmann <arnd@arndb.de>, devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH 2/3] staging: rtl8723bs: fix issue "Using comparison to true
 is error prone"
Message-ID: <20190609124953.GA4071@hari-Inspiron-1545>
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

this patch fixes below issue reported by checkpatch

CHECK: Using comparison to true is error prone
+                       if (res == true)

Signed-off-by: Hariprasad Kelam <hariprasad.kelam@gmail.com>
---
 drivers/staging/rtl8723bs/os_dep/xmit_linux.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8723bs/os_dep/xmit_linux.c b/drivers/staging/rtl8723bs/os_dep/xmit_linux.c
index c125ac2..4da5617 100644
--- a/drivers/staging/rtl8723bs/os_dep/xmit_linux.c
+++ b/drivers/staging/rtl8723bs/os_dep/xmit_linux.c
@@ -231,7 +231,7 @@ int _rtw_xmit_entry(_pkt *pkt, _nic_hdl pnetdev)
 		&& padapter->registrypriv.wifi_spec == 0) {
 		if (pxmitpriv->free_xmitframe_cnt > (NR_XMITFRAME/4)) {
 			res = rtw_mlcst2unicst(padapter, pkt);
-			if (res == true)
+			if (res)
 				goto exit;
 		} else {
 			/* DBG_871X("Stop M2U(%d, %d)! ", pxmitpriv->free_xmitframe_cnt, pxmitpriv->free_xmitbuf_cnt); */
-- 
2.7.4

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
