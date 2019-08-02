Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 7FA348015F
	for <lists+driverdev-devel@lfdr.de>; Fri,  2 Aug 2019 21:51:22 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 0972886C2D;
	Fri,  2 Aug 2019 19:51:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id umdoaHajgHJt; Fri,  2 Aug 2019 19:51:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 31E9886C2C;
	Fri,  2 Aug 2019 19:51:19 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 3B53C1BF2A3
 for <devel@linuxdriverproject.org>; Fri,  2 Aug 2019 19:51:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 3502587DE1
 for <devel@linuxdriverproject.org>; Fri,  2 Aug 2019 19:51:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id lDoUfT-WMC2b for <devel@linuxdriverproject.org>;
 Fri,  2 Aug 2019 19:51:16 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-qk1-f195.google.com (mail-qk1-f195.google.com
 [209.85.222.195])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 7F89E87DDF
 for <devel@driverdev.osuosl.org>; Fri,  2 Aug 2019 19:51:16 +0000 (UTC)
Received: by mail-qk1-f195.google.com with SMTP id g18so55727608qkl.3
 for <devel@driverdev.osuosl.org>; Fri, 02 Aug 2019 12:51:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=IhPFcfbz2/V11YFI7RTPpFSB5IsnZB+cpH43bf3h0Yc=;
 b=L06fNxwVoOB1WiC7Sej31HGPAKBjVBKjCxkZe4nIAtVSSwT7ouAvEW3BLLzlzBS+ee
 cxqwI6YzWOB8KDKVmopPQMh4cIwX4wRQJF2afhkmBma6l4/hbLahDcBG+afoKehhhGI8
 jmaLMU29VR+oOHupOCO1nIDpPqwiEHd18T87VRMxWEDpC6VsKmhMPY2OnxrrblUYp0Da
 wfZrQvgwMZiRU56bgo/xAc36IQLpWB4jwuW41ZLcwUxZEW575lCGUZs2A1Zp2I5UOD2P
 oSC6ypbuxfbTJ1N1lmyaAySqyZI2X7WbNOHZNWJCNgNO5k0T3dxKZpWQGpmlSF6/twCe
 ZsyA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=IhPFcfbz2/V11YFI7RTPpFSB5IsnZB+cpH43bf3h0Yc=;
 b=nZl456/pK7UiF2QXdbScIlpOi/2MtOw/1RbGUdeSsPh6MBeEkRBWVTyllE1DtatNM+
 0Pp0ePPhn3SzibF6gDvSWi+kUU2/I/oa5npf3wfA03FkzQzvBwykl7Hit0Euw38nioKw
 CHwcXauksHNhUvQp2r28EGFC7vblHiK5kiGdxo+iQnfB/aHMjdNFsy4LqU6Emj0ZhY0u
 pnrearG4zLLvqhOKa76gk3o0FnF/plObzX51O5S2ktiZjE86b5hW4S45VGCqxZxq4IGn
 5E90oePjkOJBUCqcugLTedmSWPrnNF/R1cd2kaBtgaAwfyOn0kEUUp4JN84EfxRPiThC
 ez4Q==
X-Gm-Message-State: APjAAAUEZX4X8MIDihqIs8Hg6d6roJLdMAf1fNzicEfHrtoMkgrMh+w/
 thjYAh1k+SY8++UZxmayTHo=
X-Google-Smtp-Source: APXvYqw1Ox/GWHRh4qsgVB9Q+1JluAxvxs9jKO4UwOzgZlzth/9Kgbcz0COCRdgZRqFn4maQEsS/tA==
X-Received: by 2002:ae9:f702:: with SMTP id s2mr66915898qkg.28.1564775475426; 
 Fri, 02 Aug 2019 12:51:15 -0700 (PDT)
Received: from localhost.localdomain ([138.204.26.247])
 by smtp.gmail.com with ESMTPSA id b4sm30262545qtp.77.2019.08.02.12.51.13
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Fri, 02 Aug 2019 12:51:14 -0700 (PDT)
From: Fernando Eckhardt Valle <phervalle@gmail.com>
To: isdn@linux-pingi.de, gregkh@linuxfoundation.org, netdev@vger.kernel.org,
 devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Subject: [PATCH] drivers:staging:isdn:hysdn brace same line if
Date: Fri,  2 Aug 2019 19:51:05 +0000
Message-Id: <20190802195105.27788-1-phervalle@gmail.com>
X-Mailer: git-send-email 2.20.1
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

Fix checkpatch error "ERROR: that open brace { should be on the previous
line" in drivers/staging/isdn/hysdn/hycapi.c:51.

Signed-off-by: Fernando Eckhardt Valle <phervalle@gmail.com>
---
 drivers/staging/isdn/hysdn/hycapi.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/staging/isdn/hysdn/hycapi.c b/drivers/staging/isdn/hysdn/hycapi.c
index a2c15cd7b..e5dc707d5 100644
--- a/drivers/staging/isdn/hysdn/hycapi.c
+++ b/drivers/staging/isdn/hysdn/hycapi.c
@@ -49,8 +49,7 @@ static u16 hycapi_send_message(struct capi_ctr *ctrl, struct sk_buff *skb);
 static inline int _hycapi_appCheck(int app_id, int ctrl_no)
 {
 	if ((ctrl_no <= 0) || (ctrl_no > CAPI_MAXCONTR) || (app_id <= 0) ||
-	   (app_id > CAPI_MAXAPPL))
-	{
+	   (app_id > CAPI_MAXAPPL)) {
 		printk(KERN_ERR "HYCAPI: Invalid request app_id %d for controller %d", app_id, ctrl_no);
 		return -1;
 	}
-- 
2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
