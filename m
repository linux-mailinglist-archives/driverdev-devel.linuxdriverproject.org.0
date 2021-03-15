Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 2CB9033C73E
	for <lists+driverdev-devel@lfdr.de>; Mon, 15 Mar 2021 20:58:55 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5D4144EBBF;
	Mon, 15 Mar 2021 19:58:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 2LfqdKp8z1Pz; Mon, 15 Mar 2021 19:58:52 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 196CC47B6F;
	Mon, 15 Mar 2021 19:58:51 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 14FF81BF95A
 for <devel@linuxdriverproject.org>; Mon, 15 Mar 2021 19:58:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 0205B43133
 for <devel@linuxdriverproject.org>; Mon, 15 Mar 2021 19:58:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ACnHTLRbAvod for <devel@linuxdriverproject.org>;
 Mon, 15 Mar 2021 19:58:38 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-qk1-x730.google.com (mail-qk1-x730.google.com
 [IPv6:2607:f8b0:4864:20::730])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 183BB430E6
 for <devel@driverdev.osuosl.org>; Mon, 15 Mar 2021 19:58:38 +0000 (UTC)
Received: by mail-qk1-x730.google.com with SMTP id n79so32970900qke.3
 for <devel@driverdev.osuosl.org>; Mon, 15 Mar 2021 12:58:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=VK5S+oSgiV0TZNNcHVL0AldOZUISji+pEY94URSguVg=;
 b=dvK5DJv4JP3JHtuV36BZYzPrDZfs70qvAKpcfAQJpzw1FsITXe53QTlWt3G+dSDT49
 b5W8G5J32MF8Sr4TsyjChslhch1VRsGFCUASxC1QxyeBjPKqtFRx5bGsfJr96oD0Z93i
 l3WyHNFglk6eAaEWRiwpBmCGG+ap4INLoNIkvo0SslP8uzclu5TuoFx78sM7BQcmpdj7
 bGlrlS203GqsXm9tfl1uYAdD4J9VOYLMtWwF/oMinQ+1xZ3i4D0uh5MdwIa0PHPufo6A
 GG4nwDFemYQt9nDj8qR9s38L9vb32i5K5rCW2rzFWr7/YVJaZfJkj8QTVQ0MDX3OUATA
 D7Fg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=VK5S+oSgiV0TZNNcHVL0AldOZUISji+pEY94URSguVg=;
 b=al9Uadp5eUIzs40NqFbLBQzC++FATIXz9FPPrLTNuHY3B8ru54Twv9/EOnfQNhFZhK
 CJ/ICQAjabAdk7F6UxsaLXF2LcdXse6sVWfdQtCazIUXTpLzlwGwW9YADolWz2A9PDGu
 vRCY3Jy7XWzoOaNL5zN3S+LOXTCt8Nbrx1EU5OHA7XYnswV4tluFknSLMqTFG3PXF7R/
 cq5ywkaPuJVHdT108tK7sVbJGoHZXV+Vb/3FfRJ7MEey4B8oWv2qdY7Z3TloS56pgeVj
 StuhvuY3a19SQOqnTStWuc08m0k+jm5JONZkmqyJjL5aaO/0T5aPEHtjHjRBTjvpm5nE
 wEqA==
X-Gm-Message-State: AOAM531L3ZkfG68IwbInHpmY/fv+1RGgvYi7Rb6/d1doAWtYfiaH13nT
 rYG/sV50qBe7HTP9+o7fEcY=
X-Google-Smtp-Source: ABdhPJzth58/vJKgaljjF5AMmE7St+2w6/erB2To+UsmQYc4C4qn8ac0UG7MJdxSTUVFgJzMpzWWHw==
X-Received: by 2002:a05:620a:164c:: with SMTP id
 c12mr28462667qko.285.1615838316923; 
 Mon, 15 Mar 2021 12:58:36 -0700 (PDT)
Received: from tong-desktop.local ([2601:5c0:c200:27c6:74e5:7488:fd7b:4bf2])
 by smtp.googlemail.com with ESMTPSA id z6sm11706877qtv.69.2021.03.15.12.58.36
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 15 Mar 2021 12:58:36 -0700 (PDT)
From: Tong Zhang <ztong0001@gmail.com>
To: Ian Abbott <abbotti@mev.co.uk>,
 H Hartley Sweeten <hsweeten@visionengravers.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 "Alexander A. Klimov" <grandmaster@al2klimov.de>,
 devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Subject: [PATCH v2] staging: comedi: cb_pcidas64: fix request_irq() warn
Date: Mon, 15 Mar 2021 15:58:12 -0400
Message-Id: <20210315195814.4692-1-ztong0001@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <858341a6-c105-1440-aa4d-ea0217f2ec89@mev.co.uk>
References: <858341a6-c105-1440-aa4d-ea0217f2ec89@mev.co.uk>
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
Cc: Tong Zhang <ztong0001@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

request_irq() wont accept a name which contains slash so we need to
repalce it with something else -- otherwise it will trigger a warning
and the entry in /proc/irq/ will not be created
since the .name might be used by userspace and we don't want to break
userspace, so we are changing the parameters passed to request_irq()

[    1.565966] name 'pci-das6402/16'
[    1.566149] WARNING: CPU: 0 PID: 184 at fs/proc/generic.c:180 __xlate_proc_name+0x93/0xb0
[    1.568923] RIP: 0010:__xlate_proc_name+0x93/0xb0
[    1.574200] Call Trace:
[    1.574722]  proc_mkdir+0x18/0x20
[    1.576629]  request_threaded_irq+0xfe/0x160
[    1.576859]  auto_attach+0x60a/0xc40 [cb_pcidas64]

Suggested-by: Ian Abbott <abbotti@mev.co.uk>
Signed-off-by: Tong Zhang <ztong0001@gmail.com>
---
v2: revert changes to .name field so that we dont break userspace

 drivers/staging/comedi/drivers/cb_pcidas64.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/comedi/drivers/cb_pcidas64.c b/drivers/staging/comedi/drivers/cb_pcidas64.c
index fa987bb0e7cd..6d3ba399a7f0 100644
--- a/drivers/staging/comedi/drivers/cb_pcidas64.c
+++ b/drivers/staging/comedi/drivers/cb_pcidas64.c
@@ -4035,7 +4035,7 @@ static int auto_attach(struct comedi_device *dev,
 	init_stc_registers(dev);
 
 	retval = request_irq(pcidev->irq, handle_interrupt, IRQF_SHARED,
-			     dev->board_name, dev);
+			     "cb_pcidas64", dev);
 	if (retval) {
 		dev_dbg(dev->class_dev, "unable to allocate irq %u\n",
 			pcidev->irq);
-- 
2.25.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
