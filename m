Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F1545AD00
	for <lists+driverdev-devel@lfdr.de>; Sat, 29 Jun 2019 21:10:47 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id E3C1B88179;
	Sat, 29 Jun 2019 19:10:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id bm1g5ruRqnjM; Sat, 29 Jun 2019 19:10:45 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 746AE87D28;
	Sat, 29 Jun 2019 19:10:45 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 5B54A1BF339
 for <devel@linuxdriverproject.org>; Sat, 29 Jun 2019 19:10:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 55B7585CC3
 for <devel@linuxdriverproject.org>; Sat, 29 Jun 2019 19:10:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id V0y+d5SPHmQs for <devel@linuxdriverproject.org>;
 Sat, 29 Jun 2019 19:10:42 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f196.google.com (mail-pg1-f196.google.com
 [209.85.215.196])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 7151D85C20
 for <devel@driverdev.osuosl.org>; Sat, 29 Jun 2019 19:10:42 +0000 (UTC)
Received: by mail-pg1-f196.google.com with SMTP id 196so4066017pgc.6
 for <devel@driverdev.osuosl.org>; Sat, 29 Jun 2019 12:10:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:subject:message-id:mime-version:content-disposition
 :user-agent; bh=4Z+5F7GZWV6rxZhVeShHNbtKUyddpMRHWbu6DiZ08GA=;
 b=t248GpiWEmIRFs5MIDUs+28DYxiAWNjP36UII3qCngr8Lf/syn0fZAZ0UH8nbam4rd
 TjCM32w8LJE7r79g+I52LK04219ZMIgNP3w65LpHElwSzufsI/e8V4Z7/Bu/BB893+1R
 VWPqOn2Nl9CrcKcemUNvzZteLZwmrdkgwaDkh5nzp3UCHnnrH0+q5H9EscAaBqFEZcOU
 /U60CVJv558id4b75Ve1a6kbWvOlxfguuCdmye61wy95gFfOsN5fiNN+xJnH83tCwEN2
 axCrWWvXsqULG9BPJrP5d4Cx571lX6hEduLtpPGvc+JtCjr2rJu8s+zRZPt9eQ/wQE1g
 srKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=4Z+5F7GZWV6rxZhVeShHNbtKUyddpMRHWbu6DiZ08GA=;
 b=MUXRcx6PKCm82K3H8OBfr7Zy7AscZHPWkeFAuLm/9yYTZCQRWOk04Uz+7FvqsdcfFq
 rfXMdYMut+VFr3KTBzGy9fAVyhv/+86RMQ9eHoa/z+c+UMsOtKlZevoX9kjQN9NvNMTE
 lOoymse2pZZzGdvQhk1J9GWm0dblPoRmLKXZXto3S18qpgm5yuieKLsWzQvznzbat77r
 IKjV+wWkOCia/R1YShgVC661noxyQuX2BBmcYOM4MnARGZLHnX3ysnJXi4PYTnL1G91v
 G5zDQ35l+VmM2cOiYJtydsYN4VEI0jpu9JDo1uk5q5aZSmj5w2t9NgIeDnTxe9125zxJ
 5zNg==
X-Gm-Message-State: APjAAAWzVW6WpfdLvhViwCnyTAILDILHkms35JDie6stZzl2RNhWAEGE
 uDbBY0445uEtsy0IfA+e2eM=
X-Google-Smtp-Source: APXvYqzfNPzemt4/vzbiZ1Eq4EiPFQlnvLf9LygcvLhrFA5WGnR01TsCMLQ4uYmsJc+7L83UkaNR0A==
X-Received: by 2002:a17:90a:1ae2:: with SMTP id
 p89mr19823864pjp.26.1561835441671; 
 Sat, 29 Jun 2019 12:10:41 -0700 (PDT)
Received: from hari-Inspiron-1545 ([183.83.92.187])
 by smtp.gmail.com with ESMTPSA id s5sm5706805pgj.60.2019.06.29.12.10.38
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 29 Jun 2019 12:10:40 -0700 (PDT)
Date: Sun, 30 Jun 2019 00:40:35 +0530
From: Hariprasad Kelam <hariprasad.kelam@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Bhagyashri Dighole <digholebhagyashri@gmail.com>,
 Wentao Cai <etsai042@gmail.com>,
 Hariprasad Kelam <hariprasad.kelam@gmail.com>,
 Ivan Safonov <insafonov@gmail.com>,
 Alexander Duyck <alexander.h.duyck@intel.com>,
 Himadri Pandya <himadri18.07@gmail.com>, devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH] staging: netlogic: Change GFP_ATOMIC to GFP_KERNEL
Message-ID: <20190629191035.GA15292@hari-Inspiron-1545>
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

Below is data path of xlr_config_spill
xlr_net_probe
  -->xlr_config_fifo_spill_area
  --->xlr_config_spill

We can use GFP_KERNEL as this function is getting called from
xlr_net_probe and there are no locks.

Signed-off-by: Hariprasad Kelam <hariprasad.kelam@gmail.com>
---
 drivers/staging/netlogic/xlr_net.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/netlogic/xlr_net.c b/drivers/staging/netlogic/xlr_net.c
index 07a06c5..05079f7 100644
--- a/drivers/staging/netlogic/xlr_net.c
+++ b/drivers/staging/netlogic/xlr_net.c
@@ -385,7 +385,7 @@ static void *xlr_config_spill(struct xlr_net_priv *priv, int reg_start_0,
 
 	base = priv->base_addr;
 	spill_size = size;
-	spill = kmalloc(spill_size + SMP_CACHE_BYTES, GFP_ATOMIC);
+	spill = kmalloc(spill_size + SMP_CACHE_BYTES, GFP_KERNEL);
 	if (!spill)
 		return ZERO_SIZE_PTR;
 
-- 
2.7.4

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
