Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 982861B4A8
	for <lists+driverdev-devel@lfdr.de>; Mon, 13 May 2019 13:15:33 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id ACBA725067;
	Mon, 13 May 2019 11:15:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id RqGEgjUP5mPv; Mon, 13 May 2019 11:15:31 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 7466024CC1;
	Mon, 13 May 2019 11:15:29 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id C9A631BF842
 for <devel@linuxdriverproject.org>; Mon, 13 May 2019 11:15:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id C5EE187540
 for <devel@linuxdriverproject.org>; Mon, 13 May 2019 11:15:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 5FwUWSiQnp11 for <devel@linuxdriverproject.org>;
 Mon, 13 May 2019 11:15:26 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f193.google.com (mail-pg1-f193.google.com
 [209.85.215.193])
 by hemlock.osuosl.org (Postfix) with ESMTPS id A829D873B6
 for <devel@driverdev.osuosl.org>; Mon, 13 May 2019 11:15:26 +0000 (UTC)
Received: by mail-pg1-f193.google.com with SMTP id e6so6619275pgc.4
 for <devel@driverdev.osuosl.org>; Mon, 13 May 2019 04:15:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:subject:message-id:mime-version:content-disposition
 :user-agent; bh=3iAATnbSEiy6b6i71ojDZbziQxQ7RiHCHlvJLO1/RJk=;
 b=WaU3eFcL3Wh+Ko+6wV7nZ9QbQpdYDw3FHhgJH2CoMDkRdTN4kpBLlTMYyWwbXTJDqX
 U9E+0q1QJgK5kc3L59EOugKXRbUZFaqi3Yf7C4Y/0BHVUDwqeUrzMIHINyvsZkduoh4q
 Lq8YoHjh+d2mrV3VfxBCUehOe8dOIJgXJmJH+N9FTQ0X73g6RMqE4cvOSMv58z/FPfHy
 xHUgWCmBS3qg3k6X3gh5qb0kGI9yPjfqW8vrx6qI017gaUhnacaQPu3kM8ciq9wRMQnu
 01s5imbG9hpBai4GFZUZkvjXd4eTbkEJOylLvSmSmXmuHFkf4JOtZ7riE6PUQUuWQjDm
 Xojw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=3iAATnbSEiy6b6i71ojDZbziQxQ7RiHCHlvJLO1/RJk=;
 b=qsoDoKeBQ3mcv4J1zvllp/UG1uBioOxx4rTuox31MsLKwO5dZdLW7LFDM8KGEOIq76
 NhO2kqH0qQIhu4w+LTyZ8GGyggAxLLdTDxY6/1p9ibduL/20B5Pf+d+tngDiwG5Zjf0Z
 Zi9gy/cEt2NS4LztF2BPz5tsR4gV10RfOU8Y7gRlHojOvxMII0VBuWe0Av7aFsupK8Bk
 wB+HcWmLuRF3swG/jTkW3GsXrU4vhvt4re5UUoPmTEOLe5bNzrMfHS7RBEiBqLlQxJqA
 2xQGwGYJ5CG7O0SNJ2lXwRJTTehW4eozSrZuuyZAJk8xdT5/1riHXHu1bniUwPK/Uteg
 ju6w==
X-Gm-Message-State: APjAAAXOZ66oA4XNLmA0T9/FD4YORSPhurAQ/DmdksgLgXL336pGnN4h
 c8bLLKgpC3ztL34He95nZiQ=
X-Google-Smtp-Source: APXvYqxMNZIcn/HilH5dCIoNUPQR+fjxs+ZB3BXNTS1fC7qLDqU0TSK+X38T8hD4TUmNpvvnuf6FCg==
X-Received: by 2002:a62:83c8:: with SMTP id
 h191mr12306755pfe.251.1557746126297; 
 Mon, 13 May 2019 04:15:26 -0700 (PDT)
Received: from hari-Inspiron-1545 ([183.83.92.73])
 by smtp.gmail.com with ESMTPSA id a7sm4675526pgj.42.2019.05.13.04.15.22
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 13 May 2019 04:15:25 -0700 (PDT)
Date: Mon, 13 May 2019 16:45:18 +0530
From: Hariprasad Kelam <hariprasad.kelam@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Michael Straube <straube.linux@gmail.com>,
 Mamta Shukla <mamtashukla555@gmail.com>,
 Emanuel Bennici <benniciemanuel78@gmail.com>,
 Wen Yang <wen.yang99@zte.com.cn>,
 Hariprasad Kelam <hariprasad.kelam@gmail.com>,
 Jia-Ju Bai <baijiaju1990@gmail.com>, devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org
Subject: [Patch v2] staging: rtl8723bs: os_dep: Remove Unneeded variable ret
Message-ID: <20190513111518.GA3766@hari-Inspiron-1545>
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

fix below issue reported by coccicheck

drivers/staging/rtl8723bs/os_dep/ioctl_linux.c:2685:5-8: Unneeded
variable: "ret". Return "0" on line 3266

Signed-off-by: Hariprasad Kelam <hariprasad.kelam@gmail.com>

----
Changes in v2:
  - make subject line more clean
---
 drivers/staging/rtl8723bs/os_dep/ioctl_linux.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c b/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c
index e3d3569..3f1ab6e 100644
--- a/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c
+++ b/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c
@@ -2682,7 +2682,6 @@ static int rtw_dbg_port(struct net_device *dev,
                                struct iw_request_info *info,
                                union iwreq_data *wrqu, char *extra)
 {
-	int ret = 0;
 	u8 major_cmd, minor_cmd;
 	u16 arg;
 	u32 extra_arg, *pdata, val32;
@@ -3263,7 +3262,7 @@ static int rtw_dbg_port(struct net_device *dev,
 	}
 
 
-	return ret;
+	return 0;
 
 }
 
-- 
2.7.4

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
