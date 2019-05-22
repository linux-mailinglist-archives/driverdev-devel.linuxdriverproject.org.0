Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 01A9C268D2
	for <lists+driverdev-devel@lfdr.de>; Wed, 22 May 2019 19:05:43 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id D5115870BD;
	Wed, 22 May 2019 17:05:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id D3CE9JD1VCbz; Wed, 22 May 2019 17:05:40 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 9A6248708B;
	Wed, 22 May 2019 17:05:39 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id EC9A91BF3EC
 for <devel@linuxdriverproject.org>; Wed, 22 May 2019 17:05:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id E3AA386274
 for <devel@linuxdriverproject.org>; Wed, 22 May 2019 17:05:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id PUI8T4gZnAEX for <devel@linuxdriverproject.org>;
 Wed, 22 May 2019 17:05:37 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f195.google.com (mail-pf1-f195.google.com
 [209.85.210.195])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 554B78626E
 for <devel@driverdev.osuosl.org>; Wed, 22 May 2019 17:05:37 +0000 (UTC)
Received: by mail-pf1-f195.google.com with SMTP id n19so1663028pfa.1
 for <devel@driverdev.osuosl.org>; Wed, 22 May 2019 10:05:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:subject:message-id:mime-version:content-disposition
 :user-agent; bh=dry8Vhqj9YW/Gsi060WCLElWagqgpLJMYP0BE8xe+RE=;
 b=cbUkLYqRtFLwJAXvt6BO6XW43SoQqFSp77EVgjawQUtNQsy5MbLveeKO2HAhi0GiL2
 7Q8bUj1XxmQXIMav3U78Eg8gtZTnG+LXKGDujl3fTnElMxysw7fvX28x85h/xm8h/fOg
 e7qzOy92Arx26cdWMl+T8CFoyrSqOaV37+hkfKsP5KvZ2QqJwF7FF62P5uSFTzsSVPwl
 sSkLsz2LWxk+UYGJLoFo++g9kZNjIHawIKJcX20Rlk1PrQqyqT0LbYlpl+9SpqwCdVFW
 aerFbheaU54RXBPjhVqBIKjQb3bl8xDgTSj12nSDIIrfsLRIt9jMSquyXtf/uHYuTLPX
 O//A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=dry8Vhqj9YW/Gsi060WCLElWagqgpLJMYP0BE8xe+RE=;
 b=p5zKAApBrF+L/rpmbnISLrc85H20jFsXoTyw6u6wRfkH5O9Qu0jTHU1RzImY45KfP9
 9Jg44YLU0OauZuaolVXRRN47dZxsGDTPSZQjuLdHgS8r1cP6/75uesnl6cc0gvGnbyn7
 WJRel2Cdc3wzeKxuTEQ9eRRvQz3LLyiW6bi3OIGqCE6PuC6nyPg5f/uTA+NQ4YasSqRQ
 u8e1FBXxv3FGQpvkrmgTrDX4jGOF0GyCghcr/c6O8ewhplUV1h0ZL6rWHW3fkxquVRLL
 e+lh57ZiMnbzkbHt+fe6ako5gZEQenArFNDbqEDYMpjfozBMKarh+DPLb4BS+8a8Byjs
 39bg==
X-Gm-Message-State: APjAAAWtIwx0wQSgKKfvzb/aZKIZCg7d6c7kcUPXuZrwgXoyiZmnxJYP
 2IxZOopkssuMIj0YJgsHopfztsBj
X-Google-Smtp-Source: APXvYqyN8eOn9+Arw0LQ9ToY1X4J3deYQPkE9oMwxfq24vuvSUnmi2IEWO7mc17IBy/gkG3MQt60dw==
X-Received: by 2002:a62:7a8e:: with SMTP id v136mr237711pfc.208.1558544737054; 
 Wed, 22 May 2019 10:05:37 -0700 (PDT)
Received: from hari-Inspiron-1545 ([183.83.92.73])
 by smtp.gmail.com with ESMTPSA id s2sm28417529pfe.105.2019.05.22.10.05.33
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 22 May 2019 10:05:35 -0700 (PDT)
Date: Wed, 22 May 2019 22:35:30 +0530
From: Hariprasad Kelam <hariprasad.kelam@gmail.com>
To: David Kershner <david.kershner@unisys.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Petr Machata <petrm@mellanox.com>, David Ahern <dsahern@gmail.com>,
 "David S. Miller" <davem@davemloft.net>, Jann Horn <jannh@google.com>,
 Hariprasad Kelam <hariprasad.kelam@gmail.com>,
 sparmaintainer@unisys.com, devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH] staging: unisys: visornic: Replace GFP_ATOMIC with GFP_KERNEL
Message-ID: <20190522170530.GA4331@hari-Inspiron-1545>
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

As per below information

GFP_KERNEL  FLAG

This is a normal allocation and might block. This is the flag to use in
process context code when it is safe to sleep.

GFP_ATOMIC FLAG

The allocation is high-priority and does not sleep. This is the flag to
use in interrupt handlers, bottom halves and other situations where you
cannot sleep

And we can take advantage of GFP_KERNEL , as when system is in low
memory chances of getting success is high compared to GFP_ATOMIC.

As visornic_probe is in  process context we can use GPF_KERNEL.

Signed-off-by: Hariprasad Kelam <hariprasad.kelam@gmail.com>
---
 drivers/staging/unisys/visornic/visornic_main.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/unisys/visornic/visornic_main.c b/drivers/staging/unisys/visornic/visornic_main.c
index 1c1a470..9d4f1da 100644
--- a/drivers/staging/unisys/visornic/visornic_main.c
+++ b/drivers/staging/unisys/visornic/visornic_main.c
@@ -1861,12 +1861,12 @@ static int visornic_probe(struct visor_device *dev)
 	skb_queue_head_init(&devdata->xmitbufhead);
 
 	/* create a cmdrsp we can use to post and unpost rcv buffers */
-	devdata->cmdrsp_rcv = kmalloc(SIZEOF_CMDRSP, GFP_ATOMIC);
+	devdata->cmdrsp_rcv = kmalloc(SIZEOF_CMDRSP, GFP_KERNEL);
 	if (!devdata->cmdrsp_rcv) {
 		err = -ENOMEM;
 		goto cleanup_rcvbuf;
 	}
-	devdata->xmit_cmdrsp = kmalloc(SIZEOF_CMDRSP, GFP_ATOMIC);
+	devdata->xmit_cmdrsp = kmalloc(SIZEOF_CMDRSP, GFP_KERNEL);
 	if (!devdata->xmit_cmdrsp) {
 		err = -ENOMEM;
 		goto cleanup_cmdrsp_rcv;
-- 
2.7.4

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
