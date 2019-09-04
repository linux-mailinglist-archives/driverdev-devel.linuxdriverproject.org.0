Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 32326A7D9C
	for <lists+driverdev-devel@lfdr.de>; Wed,  4 Sep 2019 10:22:44 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 49D73882D3;
	Wed,  4 Sep 2019 08:22:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id IjSf0rOuw4vg; Wed,  4 Sep 2019 08:22:42 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id C456887E3C;
	Wed,  4 Sep 2019 08:22:41 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 6BA381BF2EC
 for <devel@linuxdriverproject.org>; Wed,  4 Sep 2019 08:22:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 682C5868E8
 for <devel@linuxdriverproject.org>; Wed,  4 Sep 2019 08:22:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id wJw-PqvHs4JI for <devel@linuxdriverproject.org>;
 Wed,  4 Sep 2019 08:22:39 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f196.google.com (mail-pl1-f196.google.com
 [209.85.214.196])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id EDE39868D5
 for <devel@driverdev.osuosl.org>; Wed,  4 Sep 2019 08:22:38 +0000 (UTC)
Received: by mail-pl1-f196.google.com with SMTP id k1so1882792pls.11
 for <devel@driverdev.osuosl.org>; Wed, 04 Sep 2019 01:22:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:mime-version:content-disposition
 :user-agent; bh=R+MTq1VS0iR1Cmy3+6Y5RTbLGGusOaeHEDjli8lEEug=;
 b=RTBHYoMusuZZ5AhgQVW4Ifku1G8VvN4Ll0zy023Lbai0cViQEH2bR6Iui/by5YW1Ap
 Q6aYgQSGI9o/EGk+Sn2VF2wxSMZqyDRoqmknxzQNcPNtlmHeghzyeCGm/q0giQ5NFWNI
 C1HvKXxbYbV0VHTuxz6/Ip6QnSNpNZ7ZMUOImib8g8ItRoRcH8mTzwGOHTTTOy2waQ94
 nO0BsM7b0Rma+caRCrzA2ZsNaEfBYIhVnamBuZcaQOilnxF5VtbynTkCur6tN8LvjwEh
 /KdfPBtSwEEHmECBR3CasdP57gyGVdxJVcyyG2tk4EHazua53hS5K8I6uuUcqLLB9kyZ
 BY0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=R+MTq1VS0iR1Cmy3+6Y5RTbLGGusOaeHEDjli8lEEug=;
 b=JbpypMS452USMYoJfYVpBprDh81PDHVQb4DnWf3LxvZyIXiNnn2ZKo8PBkl3HlrDrk
 4K6U10bNtITFt5kIXtf1ZSFfIS18tvst3o0xTmXbd5fBR45VU82oD9B/2uaqEVTdj/vf
 RJ0TmLEYgoPLXs7N29LhdHjV0h475R55vMUScMkpyVH/qG7Ft274XNvv1Ez4p2GClKc2
 2QbnwSnNxki/16ZpQERbe4H2dyHc6tT8+cmjmDJXW+DuqOAAihMZ6INHzMQNXYzKQ+1w
 1yHSvgKD+66Qnbk50XVTaBVFYYqWgdu2y1m/J/YsDFimSg3i0BXjW84EqN3zOH5bUaTF
 6WIQ==
X-Gm-Message-State: APjAAAUHfPNXzx68k8yoDRsF6y0EzH33bLtkDbBqDzu3vF38b1DmwoyJ
 6b9agQpbo/FiMxXSpccY/Co=
X-Google-Smtp-Source: APXvYqx1Bf1AOmUEnA9r1G5j3AiZRcryCIH6SYuoyG7V3crQWL4xyMzhyRlY+1SwI2QFZ3T3XLdMbA==
X-Received: by 2002:a17:902:8345:: with SMTP id
 z5mr41132525pln.29.1567585358436; 
 Wed, 04 Sep 2019 01:22:38 -0700 (PDT)
Received: from LGEARND20B15 ([27.122.242.75])
 by smtp.gmail.com with ESMTPSA id y8sm22025894pfe.146.2019.09.04.01.22.35
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 04 Sep 2019 01:22:37 -0700 (PDT)
Date: Wed, 4 Sep 2019 17:22:32 +0900
From: Austin Kim <austindh.kim@gmail.com>
To: mchehab@kernel.org, khilman@baylibre.com
Subject: [PATCH] media: meson: Add NULL check after the call to kmalloc()
Message-ID: <20190904082232.GA171180@LGEARND20B15>
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
Cc: mjourdan@baylibre.com, devel@driverdev.osuosl.org,
 gregkh@linuxfoundation.org, linux-kernel@vger.kernel.org,
 linux-amlogic@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

If the kmalloc() return NULL, the NULL pointer dereference will occur.
	new_ts->ts = ts;

Add exception check after the call to kmalloc() is made.

Signed-off-by: Austin Kim <austindh.kim@gmail.com>
---
 drivers/staging/media/meson/vdec/vdec_helpers.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/staging/media/meson/vdec/vdec_helpers.c b/drivers/staging/media/meson/vdec/vdec_helpers.c
index f16948b..e7e56d5 100644
--- a/drivers/staging/media/meson/vdec/vdec_helpers.c
+++ b/drivers/staging/media/meson/vdec/vdec_helpers.c
@@ -206,6 +206,10 @@ void amvdec_add_ts_reorder(struct amvdec_session *sess, u64 ts, u32 offset)
 	unsigned long flags;
 
 	new_ts = kmalloc(sizeof(*new_ts), GFP_KERNEL);
+	if (!new_ts) {
+		dev_err(sess->core->dev, "Failed to kmalloc()\n");
+		return;
+	}
 	new_ts->ts = ts;
 	new_ts->offset = offset;
 
-- 
2.6.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
